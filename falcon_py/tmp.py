import asyncio
import random
from concurrent.futures import ThreadPoolExecutor
from collections import deque
from ip import ipFFT0, ipFFT1, ipFFT2, ipFFT3, inBuffer0, inBuffer1, inBuffer2, inBuffer3

# Placeholder classes and buffers setup for FFT operations
class ipFFT:
    def __init__(self, overlay_ip, buffer):
        self.overlay_ip = overlay_ip
        self.buffer = buffer

    async def load_data_to_buffer(self, data):
        for i in range(len(data)):
            self.buffer[i] = data[i]

    async def retrieve_data_from_buffer(self, size=1024):
        return [self.buffer[i] for i in range(size)]

    async def compute(self):
        self.overlay_ip.write(0x00, 0x01)  # Start the FFT computation
        while (self.overlay_ip.read(0x00) & 0x4) == 0x0:
            await asyncio.sleep(0)  # Yield control
        return await self.retrieve_data_from_buffer()

buffers = [inBuffer0, inBuffer1, inBuffer2, inBuffer3]
kernels = [ipFFT(ipFFT0, buffers[0]), ipFFT(ipFFT1, buffers[1]), ipFFT(ipFFT2, buffers[2]), ipFFT(ipFFT3, buffers[3])]
buffer_usage = [False] * len(buffers)  # False indicates that the buffer is available

# Asynchronous FFT manager
async def fft_manager():
    request_queue = deque()
    results = {}

    while True:
        if request_queue:
            data, future = request_queue.popleft()
            for i in range(len(buffers)):
                if not buffer_usage[i]:
                    buffer_usage[i] = True  # Mark buffer as used
                    result = await perform_fft(data, i)
                    buffer_usage[i] = False  # Release buffer after computation
                    results[future] = result
                    break
        await asyncio.sleep(0.1)  # Polling interval

        # Fulfill future results if available
        to_remove = []
        for future in results:
            if future.done():
                to_remove.append(future)
            else:
                future.set_result(results[future])

        for future in to_remove:
            del results[future]

def submit_fft(data):
    loop = asyncio.get_running_loop()
    future = loop.create_future()
    request_queue.append((data, future))
    return future

async def perform_fft(data, buffer_index):
    await kernels[buffer_index].load_data_to_buffer(data)
    return await kernels[buffer_index].compute()
    
# Example of using FFT within falcon.py
async def some_function_in_falcon(data):
    fft_result = await submit_fft(data)
    # Use fft_result for further processing


async def main():
    # Start FFT manager
    fft_task = asyncio.create_task(fft_manager())

    # Start Falcon-related tasks
    # Example:
    result = await some_function_in_falcon([random.randint(0, 100) for _ in range(1024)])

    # Close FFT manager when done
    fft_task.cancel()

asyncio.run(main())



