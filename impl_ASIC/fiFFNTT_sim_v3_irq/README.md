# SOC / FPGA MailBox Interrupt

- Here I implement IRQ with FIR
  ![waveform](https://github.com/vic9112/PQC_Falcon/assets/137171415/c0aa035a-f3db-47fb-a9df-a87798b35ed1)

## Simulation Step:
1. PL_AA enable:
   - FPGA side needs to enable **`aa_mb_irq_en`** located at **`0x3000_2100`** to enable interrupt.
   - At [fsic_tb.sv](https://github.com/vic9112/PQC_Falcon/blob/main/impl_ASIC/irq_test/vivado/fsic_tb.sv)
   - ![enable](https://github.com/vic9112/PQC_Falcon/assets/137171415/be40dc4f-2cb4-45bc-aaad-0607b2cfd340)

2. SOC write local MailBox
   - SOC side (firmware) writes specific patterns to the local MailBox, then it will sync to other side (FPGA) and generate interrupt (**`aa_mb_irq`**)
   - [fsic.c](https://github.com/vic9112/PQC_Falcon/blob/main/impl_ASIC/irq_test/testbench/fsic/fsic.c)
   - ![firmware write MB](https://github.com/vic9112/PQC_Falcon/assets/137171415/2887d0f6-202a-45aa-ad73-8ecb9f36b1f5)

3. Release PL_AA enable:
   - FPGA side needs to release **`aa_mb_irq_en`** located at **`0x3000_2100`** to cancel the interrupt.
   - [fsic_tb.sv](https://github.com/vic9112/PQC_Falcon/blob/main/impl_ASIC/irq_test/vivado/fsic_tb.sv)
   - ![release](https://github.com/vic9112/PQC_Falcon/assets/137171415/8e5aead7-a724-41a7-b5dd-25c0bed04ae3)

## Block Design

- Add **AXI Interrupt Controller**, connect pin **`aa_mb_irq`** on **ps_axil** to the input of AXI Interrupt Controller, then concatenate to pin **`IRQ_F2P`** on **ZYNQ(PS)**
![block](https://github.com/vic9112/PQC_Falcon/assets/137171415/d9fa1946-94a5-4f01-ad87-729e874b2dab)
- ZYNQ Configuration
![zynq](https://github.com/vic9112/PQC_Falcon/assets/137171415/ef55a847-ba3d-432a-aa46-f377afcd041c)

## On Board Validation

- Include bitstream `fsicIRQ_v1.bit` and metadata file `fsicIRQ_v1.hwh` under `./level_trigger`.
- Include firmware `fsic.hex` under `./firmware_test`, which only write a value `0x3a3a3a3a` into mailbox
- Include host code `fsicIRQ_test.ipynb`

Refer to [Interrupt - PYNQ](https://pynq.readthedocs.io/en/latest/pynq_libraries/interrupt.html)
https://pp4fpgas.readthedocs.io/en/latest/interrupts.html
