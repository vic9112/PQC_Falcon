from __future__ import print_function
import numpy as np
# ================== PYNQ Library ====================
from pynq import Overlay
from pynq import allocate

# ================ Global Value ===================
# Since we may use the IP in different function,
# we need to set the IP as global argument
# =================================================
# control
# 0x00 : Control signals
#        bit 0  - ap_start (Read/Write/COH)
#        bit 1  - ap_done (Read/COR)
#        bit 2  - ap_idle (Read)
# 0x10 : Data signal of ap_return
#        bit 31~0 - ap_return[31:0] (Read) #### Return 1:True, 0:False
# 0x18 : Data signal of h
#        bit 31~0 - h[31:0] (Read/Write)
# 0x1c : Data signal of h
#        bit 31~0 - h[63:32] (Read/Write)
# 0x20 : reserved
# 0x24 : Data signal of f
#        bit 31~0 - f[31:0] (Read/Write)
# 0x28 : Data signal of f
#        bit 31~0 - f[63:32] (Read/Write)
# 0x2c : reserved
# 0x30 : Data signal of g
#        bit 31~0 - g[31:0] (Read/Write)
# 0x34 : Data signal of g
#        bit 31~0 - g[63:32] (Read/Write)
# 0x38 : reserved
# 0x3c : Data signal of logn
#        bit 31~0 - logn[31:0] (Read/Write)
# 0x40 : reserved
# 0x44 : Data signal of tmp
#        bit 31~0 - tmp[31:0] (Read/Write)
# 0x48 : Data signal of tmp
#        bit 31~0 - tmp[63:32] (Read/Write)
# Overlay
ol = Overlay("compute_pk.bit")
ipPK = ol.compute_public_0
# Memory allocate
inBufferg   = allocate(shape=(1024,), dtype=np.int8)   # ntru g
inBufferf   = allocate(shape=(1024,), dtype=np.int8)   # ntru f
outBufferh  = allocate(shape=(1024,), dtype=np.uint16) # pk h
inBufferTmp = allocate(shape=(4096,), dtype=np.uint8)

# Get the Buffer Address
logn = 10
ipPK.write(0x3C, logn) # Coefficient
ipPK.write(0x18, outBufferh.device_address)  # get h
ipPK.write(0x24, inBufferf.device_address)   # write f
ipPK.write(0x30, inBufferg.device_address)   # write g
ipPK.write(0x44, inBufferTmp.device_address)

