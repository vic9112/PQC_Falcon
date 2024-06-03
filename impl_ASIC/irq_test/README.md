# SOC / FPGA MailBox Interrupt

- Here I used FIR to implement

## Simulation Step:
1. PL_AA enable:
  - FPGA side needs to enable **`aa_mb_irq_en`** located at **`0x3000_2100`** to enable interrupt.
2. SOC write local MailBox
  - SOC side (firmware) writes specific patterns to the local MailBox, then it will sync to other side (FPGA) and generate interrupt (**`aa_mb_irq`**)
3. Release PL_AA enable:
  - FPGA side needs to release **`aa_mb_irq_en`** located at **`0x3000_2100`** to cancel the interrupt.

