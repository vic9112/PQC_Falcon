import asyncio
from collections import deque

# Example imports and setup
from ip import ip0, ip1, ip2, ip3, Buffer0_A, Buffer0_B, Buffer1_A, Buffer1_B, Buffer2_A, Buffer2_B, Buffer3_A, Buffer3_B

# Placeholder classes and buffers setup for FFT operations
class fiFFNTT:
    def __init__(self, overlay_ip, bufferA, bufferB):
        '''
        Kernel initialize
        '''
        self.overlay_ip = overlay_ip
        self.bufferA = bufferA
        self.bufferB = bufferB

    async def load_data_to_buffer(self, dataA, dataB, mode):
        '''
        Load data into allocated buffer (physical memory address)
        '''
        for i in range(len(dataA)):
            # If FFT related
            if mode in (0, 1, 4, 5):
                self.bufferA['f'][i] = dataA[i]
                self.bufferB['f'][i] = dataB[i]
            else:
                self.bufferA['i'][i] = dataA[i]
                self.bufferB['i'][i] = dataB[i]

    async def retrieve_data_from_buffer(self, mode, size=1024):
        '''
        Get data from buffer after finishing the computation
        '''
        return [self.bufferA['f'][i] for i in range(size)] if mode in (0, 1, 4, 5) else [self.bufferA['i'][i] for i in range(size)]

    async def compute(self, mode):
        '''
        Write the coefficient(mode) and ap_start to start the computation
        '''
        self.overlay_ip.write(0x28, mode)  # Set the computation mode
        self.overlay_ip.write(0x00, 0x01)  # Start the FFT computation
        while (self.overlay_ip.read(0x00) & 0x4) == 0x0:
            await asyncio.sleep(0)  # Yield control
        return await self.retrieve_data_from_buffer(mode)

# Global task queue and buffer management
request_queue = deque()
buffers = [Buffer0_A, Buffer1_A, Buffer2_A, Buffer3_A, 
           Buffer0_B, Buffer1_B, Buffer2_B, Buffer3_B]
kernels = [fiFFNTT(ip0, buffers[0], buffers[4]), 
           fiFFNTT(ip1, buffers[1], buffers[5]), 
           fiFFNTT(ip2, buffers[2], buffers[6]), 
           fiFFNTT(ip3, buffers[3], buffers[7])]
buffer_usage = [False] * 4 # Initialize 4 sets of buffers to empty

async def manage_tasks():
    '''
    Manage multiple tasks into available buffer(s)
    '''
    while True:
        if request_queue and not all(buffer_usage):  # Check if there are requests and available buffers
            for i, used in enumerate(buffer_usage):
                if not used and request_queue:  # Check for available kernel
                    dataA, dataB, mode, future = request_queue.popleft()
                    buffer_usage[i] = True
                    task = asyncio.create_task(process_request(dataA, dataB, mode, i, future))
                    # Callback once if it has done
                    task.add_done_callback(lambda f, i=i: handle_task_result(f, i))

        await asyncio.sleep(0.0001)  # Tiny sleep to prevent hogging the CPU

async def process_request(dataA, dataB, mode, buffer_index, future):
    '''
    Handle the process of loading data, get result, free buffers
    '''
    try:
        # Load data and compute results
        await kernels[buffer_index].load_data_to_buffer(dataA, dataB, mode)
        computed_result = await kernels[buffer_index].compute(mode)
        future.set_result(computed_result)  # Set result for the future
    finally:
        buffer_usage[buffer_index] = False  # Free up the buffer

def handle_task_result(future, buffer_index):
    '''
    A function that will be called once the task completes
    '''
    result = future.result()
    print(f"Task completed from buffer {buffer_index}")
    # Further processing can be done here


def req_kernel(dataA, dataB, mode):
    '''
    Function to be called when requesting the kernel
    '''
    # Capture the running EventLoop
    loop = asyncio.get_running_loop()
    # Create an empty element which will be solved in the future
    future = loop.create_future()
    request_queue.append((dataA, dataB, mode, future))
    return future
