import numpy as np
from pynq import Overlay
from pynq import allocate

ol = Overlay("top.bit")
ip0 = ol.top_0
ip1 = ol.top_1
ip2 = ol.top_2
ip3 = ol.top_3

# ============= Configuration Address Definition ===============
# control
# 0x00 : Control signals
#        bit 0  - ap_start (Read/Write/COH)
#        bit 1  - ap_done (Read/COR)
#        bit 2  - ap_idle (Read)
#        bit 3  - ap_ready (Read/COR)
#        bit 7  - auto_restart (Read/Write)
#        bit 9  - interrupt (Read)
#        others - reserved
# 0x04 : Global Interrupt Enable Register
#        bit 0  - Global Interrupt Enable (Read/Write)
#        others - reserved
# 0x08 : IP Interrupt Enable Register (Read/Write)
#        bit 0 - enable ap_done interrupt (Read/Write)
#        bit 1 - enable ap_ready interrupt (Read/Write)
#        others - reserved
# 0x0c : IP Interrupt Status Register (Read/COR)
#        bit 0 - ap_done (Read/COR)
#        bit 1 - ap_ready (Read/COR)
#        others - reserved
# 0x10 : Data signal of in1
#        bit 31~0 - in1[31:0] (Read/Write)
# 0x14 : Data signal of in1
#        bit 31~0 - in1[63:32] (Read/Write)
# 0x18 : reserved
# 0x1c : Data signal of in2
#        bit 31~0 - in2[31:0] (Read/Write)
# 0x20 : Data signal of in2
#        bit 31~0 - in2[63:32] (Read/Write)
# 0x24 : reserved
# 0x28 : Data signal of mode
#        bit 15~0 - mode[15:0] (Read/Write)
#        others   - reserved
# 0x2c : reserved
# (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)
# ===============================================================

memcell = np.dtype({
    'names': ['f', 'i'],
    'formats': [np.float64, np.uint64],
    'offsets': [0, 0],  # Overlap each field
    'itemsize': 8       # The total size of each item is 8 bytes
}, align=True)

# Memory allocate
Buffer0_A = allocate(shape=(1024,), dtype=int)
Buffer0_B = allocate(shape=(1024,), dtype=int)
Buffer1_A = allocate(shape=(1024,), dtype=np.float64)
Buffer1_B = allocate(shape=(1024,), dtype=np.float64)
Buffer2_A = allocate(shape=(1024,), dtype=memcell)
Buffer2_B = allocate(shape=(1024,), dtype=memcell)
Buffer3_A = allocate(shape=(1024,), dtype=memcell)
Buffer3_B = allocate(shape=(1024,), dtype=memcell)

ip0.write(0x10, Buffer0_A.device_address) # in1
ip0.write(0x1C, Buffer0_B.device_address) # in2
ip1.write(0x10, Buffer1_A.device_address) # in1
ip1.write(0x1C, Buffer1_B.device_address) # in2
ip2.write(0x10, Buffer2_A.device_address) # in1
ip2.write(0x1C, Buffer2_B.device_address) # in2
ip3.write(0x10, Buffer3_A.device_address) # in1
ip3.write(0x1C, Buffer3_B.device_address) # in2