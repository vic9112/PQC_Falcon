/*
 * SPDX-FileCopyrightText: 2020 Efabless Corporation
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * SPDX-License-Identifier: Apache-2.0
 */

// copy from "counter_la.c"
// This include is relative to $CARAVEL_PATH (see Makefile)
#include <defs.h>
#include <stub.c>
#ifdef USER_PROJ_IRQ0_EN
#include <irq_vex.h>
#endif

#define UP_BASE (0x30000000)
#define AA_BASE (0x30002000)
#define IS_BASE (0x30003000)
#define REG_UP_BASE (*(volatile uint32_t*)0x30000000)
#define REG_AA_BASE (*(volatile uint32_t*)0x30002000)
#define REG_IS_BASE (*(volatile uint32_t*)0x30003000)

#define  AA_MailBox_Reg_Offset (0x000)
#define  AA_Internal_Reg_Offset (0x100)

// --------------------------------------------------------
// define only one of below items
// --------------------------------------------------------
//#define SYSTEM_test111 1
#define SYSTEM_test112 1
//#define SYSTEM_test103 1
//#define SYSTEM_test104 1
//#define SYSTEM_test113 1
//#define SYSTEM_test114 1
// --------------------------------------------------------

/*
	MPRJ Logic Analyzer Test:
		- Observes counter value through LA probes [31:0] 
		- Sets counter initial value through LA probes [63:32]
		- Flags when counter value exceeds 500 through the management SoC gpio
		- Outputs message to the UART when the test concludes successfuly
*/

void main()
{
	int j;

  #ifdef USER_PROJ_IRQ0_EN	
    int mask;
  #endif
  
	/* Set up the housekeeping SPI to be connected internally so	*/
	/* that external pin changes don't affect it.			*/

    reg_spi_enable = 1;
    reg_wb_enable = 1;
	
	// reg_spimaster_cs = 0x00000;

	// reg_spimaster_control = 0x0801;

	// reg_spimaster_control = 0xa002;	// Enable, prescaler = 2,
                                        // connect to housekeeping SPI

	// Connect the housekeeping SPI to the SPI master
	// so that the CSB line is not left floating.  This allows
	// all of the GPIO pins to be used for user functions.

	// The upper GPIO pins are configured to be output
	// and accessble to the management SoC.
	// Used to flad the start/end of a test 
	// The lower GPIO pins are configured to be output
	// and accessible to the user project.  They show
	// the project count value, although this test is
	// designed to read the project count through the
	// logic analyzer probes.
	// I/O 6 is configured for the UART Tx line

  #ifdef USER_PROJECT_SIDEBAND_SUPPORT	
        reg_mprj_io_36 = GPIO_MODE_USER_STD_INPUT_PULLDOWN;   //IO_CLK from FPGA
        reg_mprj_io_35 = GPIO_MODE_USER_STD_OUTPUT;           //TX_CLK
        reg_mprj_io_34 = GPIO_MODE_USER_STD_OUTPUT;           //TXD
        reg_mprj_io_33 = GPIO_MODE_USER_STD_OUTPUT;           //TXD
        reg_mprj_io_32 = GPIO_MODE_USER_STD_OUTPUT;           //TXD


        reg_mprj_io_31 = GPIO_MODE_USER_STD_OUTPUT;           //TXD
        reg_mprj_io_30 = GPIO_MODE_USER_STD_OUTPUT;           //TXD
        reg_mprj_io_29 = GPIO_MODE_USER_STD_OUTPUT;           //TXD
        reg_mprj_io_28 = GPIO_MODE_USER_STD_OUTPUT;           //TXD
        reg_mprj_io_27 = GPIO_MODE_USER_STD_OUTPUT;           //TXD
        reg_mprj_io_26 = GPIO_MODE_USER_STD_OUTPUT;           //TXD
        reg_mprj_io_25 = GPIO_MODE_USER_STD_OUTPUT;           //TXD
        reg_mprj_io_24 = GPIO_MODE_USER_STD_OUTPUT;           //TXD
        reg_mprj_io_23 = GPIO_MODE_USER_STD_OUTPUT;           //TXD
        reg_mprj_io_22 = GPIO_MODE_USER_STD_OUTPUT;           //TXD
        reg_mprj_io_21 = GPIO_MODE_USER_STD_INPUT_PULLDOWN;   //RX_CLK
        reg_mprj_io_20 = GPIO_MODE_USER_STD_INPUT_PULLDOWN;   //RXD
        reg_mprj_io_19 = GPIO_MODE_USER_STD_INPUT_PULLDOWN;   //RXD
        reg_mprj_io_18 = GPIO_MODE_USER_STD_INPUT_PULLDOWN;   //RXD
        reg_mprj_io_17 = GPIO_MODE_USER_STD_INPUT_PULLDOWN;   //RXD
        reg_mprj_io_16 = GPIO_MODE_USER_STD_INPUT_PULLDOWN;   //RXD

        reg_mprj_io_15 = GPIO_MODE_USER_STD_INPUT_PULLDOWN;   //RXD
        reg_mprj_io_14 = GPIO_MODE_USER_STD_INPUT_PULLDOWN;   //RXD
        reg_mprj_io_13 = GPIO_MODE_USER_STD_INPUT_PULLDOWN;   //RXD
        reg_mprj_io_12 = GPIO_MODE_USER_STD_INPUT_PULLDOWN;   //RXD
        reg_mprj_io_11 = GPIO_MODE_USER_STD_INPUT_PULLDOWN;   //RXD
        reg_mprj_io_10 = GPIO_MODE_USER_STD_INPUT_PULLDOWN;   //RXD
        reg_mprj_io_9  = GPIO_MODE_USER_STD_INPUT_PULLDOWN;   //RXD
        reg_mprj_io_8  = GPIO_MODE_USER_STD_INPUT_PULLDOWN;   //RXD
  #else //USER_PROJECT_SIDEBAND_SUPPORT	
        reg_mprj_io_34 = GPIO_MODE_USER_STD_INPUT_PULLDOWN;   //IO_CLK from FPGA
        reg_mprj_io_33 = GPIO_MODE_USER_STD_OUTPUT;           //TX_CLK
        reg_mprj_io_32 = GPIO_MODE_USER_STD_OUTPUT;           //TXD


        reg_mprj_io_31 = GPIO_MODE_USER_STD_OUTPUT;           //TXD
        reg_mprj_io_30 = GPIO_MODE_USER_STD_OUTPUT;           //TXD
        reg_mprj_io_29 = GPIO_MODE_USER_STD_OUTPUT;           //TXD
        reg_mprj_io_28 = GPIO_MODE_USER_STD_OUTPUT;           //TXD
        reg_mprj_io_27 = GPIO_MODE_USER_STD_OUTPUT;           //TXD
        reg_mprj_io_26 = GPIO_MODE_USER_STD_OUTPUT;           //TXD
        reg_mprj_io_25 = GPIO_MODE_USER_STD_OUTPUT;           //TXD
        reg_mprj_io_24 = GPIO_MODE_USER_STD_OUTPUT;           //TXD
        reg_mprj_io_23 = GPIO_MODE_USER_STD_OUTPUT;           //TXD
        reg_mprj_io_22 = GPIO_MODE_USER_STD_OUTPUT;           //TXD
        reg_mprj_io_21 = GPIO_MODE_USER_STD_OUTPUT;           //TXD
        reg_mprj_io_20 = GPIO_MODE_USER_STD_INPUT_PULLDOWN;   //RX_CLK
        reg_mprj_io_19 = GPIO_MODE_USER_STD_INPUT_PULLDOWN;   //RXD
        reg_mprj_io_18 = GPIO_MODE_USER_STD_INPUT_PULLDOWN;   //RXD
        reg_mprj_io_17 = GPIO_MODE_USER_STD_INPUT_PULLDOWN;   //RXD
        reg_mprj_io_16 = GPIO_MODE_USER_STD_INPUT_PULLDOWN;   //RXD

        reg_mprj_io_15 = GPIO_MODE_USER_STD_INPUT_PULLDOWN;   //RXD
        reg_mprj_io_14 = GPIO_MODE_USER_STD_INPUT_PULLDOWN;   //RXD
        reg_mprj_io_13 = GPIO_MODE_USER_STD_INPUT_PULLDOWN;   //RXD
        reg_mprj_io_12 = GPIO_MODE_USER_STD_INPUT_PULLDOWN;   //RXD
        reg_mprj_io_11 = GPIO_MODE_USER_STD_INPUT_PULLDOWN;   //RXD
        reg_mprj_io_10 = GPIO_MODE_USER_STD_INPUT_PULLDOWN;   //RXD
        reg_mprj_io_9  = GPIO_MODE_USER_STD_INPUT_PULLDOWN;   //RXD
        reg_mprj_io_8  = GPIO_MODE_USER_STD_INPUT_PULLDOWN;   //RXD
  
  #endif //USER_PROJECT_SIDEBAND_SUPPORT	

        
        //mprj_io_0 ~ mprj_io_7 CANNOT control here
        /*
        reg_mprj_io_7  = GPIO_MODE_USER_STD_OUTPUT;
        reg_mprj_io_5  = GPIO_MODE_USER_STD_OUTPUT;
        reg_mprj_io_4  = GPIO_MODE_USER_STD_OUTPUT;
        reg_mprj_io_3  = GPIO_MODE_USER_STD_OUTPUT;
        reg_mprj_io_2  = GPIO_MODE_USER_STD_OUTPUT;
        reg_mprj_io_1  = GPIO_MODE_USER_STD_OUTPUT;
        reg_mprj_io_0  = GPIO_MODE_USER_STD_OUTPUT;

        reg_mprj_io_6  = GPIO_MODE_MGMT_STD_OUTPUT;
		*/

	// Set UART clock to 64 kbaud (enable before I/O configuration)
	// reg_uart_clkdiv = 625;
	reg_uart_enable = 1;
	
	// Now, apply the configuration
	reg_mprj_xfer = 1;
	while (reg_mprj_xfer == 1);

    // test110 - [FW] soc CFG write to internal register - target to REG_IS_BASE
    REG_IS_BASE = 1;
    //print("Monitor: set REG_IS_BASE = 1\n\n");	// Makes simulation very long!
    REG_IS_BASE = 3;    
    //print("Monitor: set REG_IS_BASE = 3\n\n");	// Makes simulation very long!
    
    uint32_t aa_base = AA_BASE;
    uint32_t value;
    uint32_t io_serdes_base = IS_BASE;

    #ifdef SYSTEM_test111 
    // test111 - for soc CFG write to mailbox 
    // 1. [FW] SOC CFG write to mailbox 
    // 1.A [testbech] check soc_to_fpga_mailbox_write 
    
    for (int i=0; i< 0x10 ; i=i+4) {
      *(volatile uint32_t*)(aa_base + AA_MailBox_Reg_Offset + i )= 0x5a5a5a5a;
      *(volatile uint32_t*)(aa_base + AA_MailBox_Reg_Offset + i )= 0xa5a5a5a5;
    }
    #endif  //SYSTEM_test111 
    
    #ifdef SYSTEM_test112 
    // test112 - for soc CFG read and write to mailbox then send to fpga
    // 1. [FW] SOC CFG read and write to mailbox 
    // 1.A [testbech] check soc_to_fpga_mailbox_write 
    //SOC internal register read/write test and update the result to mailbox, testbench check the data when received the mail box write.

    //AA_Internal_Reg_Offset test
    //Step 1. read AA_Internal_Reg_Offset + 0 default value
    value = *(volatile uint32_t*)(aa_base + AA_Internal_Reg_Offset + 0);
    *(volatile uint32_t*)(aa_base + AA_MailBox_Reg_Offset + 0 )= value;        //write to AA_MailBox_Reg_Offset + 0 

    //Step 2. write AA_Internal_Reg_Offset + 0 
    *(volatile uint32_t*)(aa_base + AA_Internal_Reg_Offset + 0) = 0x1;
    
    //Step 3. read AA_Internal_Reg_Offset + 0
    value = *(volatile uint32_t*)(aa_base + AA_Internal_Reg_Offset + 0);
    *(volatile uint32_t*)(aa_base + AA_MailBox_Reg_Offset + 0 )= value;        //write to AA_MailBox_Reg_Offset + 0


    //io_serdes_base test
    //Step 1. read io_serdes_base + 0
    value = *(volatile uint32_t*)(io_serdes_base + 0);
    *(volatile uint32_t*)(aa_base + AA_MailBox_Reg_Offset + 0 )= value;        //write to AA_MailBox_Reg_Offset + 0
    value = *(volatile uint32_t*)(aa_base + AA_MailBox_Reg_Offset + 0 );        //read it to flush last write

    #endif  //SYSTEM_test112 
    
	
    #ifdef SYSTEM_test103
    // test103 - test103_fpga_to_soc_cfg_read
    // 1. [testbech] fpga to soc CFG read
    // 2. [HW] SOC return CFG read cpl to fpga, (FW code only need to init REG_IS_BASE)
    // 2.A [testbech] check CFG read cpl in fpga
	
	/* FW code do nothing here for test103 */ 
    #endif  //SYSTEM_test103 
	
    #ifdef SYSTEM_test104 
    // test104 - fpga to soc mailbox loopback test
    // 1. [testbech] fpga to soc mialbox write to offset 0
    // 2. [FW] soc read mailbox offset 0, if non zero then write the read_value to mailbox offset 4
    // 2.A [testbech] check soc to fpga mailbox write to offset 4 in fpga
    
    do {
      value = *(volatile uint32_t*)(aa_base + AA_MailBox_Reg_Offset + 0 );
      if ( value !=0 ) {
        *(volatile uint32_t*)(aa_base + AA_MailBox_Reg_Offset + 4 ) = value;
      }
    }
    while(value==0);
    #endif  //SYSTEM_test104 
    
    #ifdef SYSTEM_test113 
    // test113 - fpga to soc CFG write test
    // 1. [testbech] fpga to soc CFG write to AA_Internal_Reg_Offset + 0
    // 2. [FW] soc read AA_Internal_Reg_Offset + 0, if non zero then write the read_value to mailbox offset 4
    // 2.A [testbech] check soc to fpga mailbox write to offset 4 in fpga
    do {
      value = *(volatile uint32_t*)(aa_base + AA_Internal_Reg_Offset + 0 );
      if ( value !=0 ) {
        *(volatile uint32_t*)(aa_base + AA_MailBox_Reg_Offset + 4 ) = value;
      }
    }
    while(value==0);

    #endif  //SYSTEM_test113 
    
    
    #ifdef SYSTEM_test114
    //test114 - fpga to soc mailbox write with interrupt test
    // 1. [FW] init interrupt handler
    // 1.A [FW] soc enable interrupt by set AA_Internal_Reg_Offset + 0 = 1
    // 2. [testbech] fpga to soc CFG write to AA_MailBox_Reg_Offset + 0 = value
    // 3. [FW] in isr read value from AA_MailBox_Reg_Offset + 0 and write to AA_MailBox_Reg_Offset + 4
    // 4. [testbech] fpga check AA_MailBox_Reg_Offset + 4 = value

    
    #ifdef USER_PROJ_IRQ0_EN	
      //REG_IS_BASE = 3;    
      // unmask USER_IRQ_0_INTERRUPT
      mask = irq_getmask();
      mask |= 1 << USER_IRQ_0_INTERRUPT;
      irq_setmask(mask);
      // enable user_irq_0_ev_enable
      user_irq_0_ev_enable_write(1);
      
      //set user_irq_ena for user_irq[0]
      value = 1;
      user_irq_ena_out_write(value);
      
      //REG_IS_BASE = 3;    
      //value = *(volatile uint32_t*)(aa_base + AA_Internal_Reg_Offset + 0 );
      //REG_IS_BASE = 3;    
      //*(volatile uint32_t*)(aa_base + AA_Internal_Reg_Offset + 0 ) = value;
      //REG_IS_BASE = 3;    
      value = 1;
      *(volatile uint32_t*)(aa_base + AA_Internal_Reg_Offset + 0 )  = value; //set interrupt enable bit in AA
      *(volatile uint32_t*)(aa_base + AA_Internal_Reg_Offset + 0 )  = value; //set interrupt enable bit in AA
      //REG_IS_BASE = 3;    
    #endif
    #endif  //SYSTEM_test114 
    
    
    while(1);
}






