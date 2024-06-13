`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2023 03:49:21 PM
// Design Name: 
// Module Name: fsic_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

import axi_vip_pkg::*;
import design_1_axi_vip_0_0_pkg::*;
import design_1_axi_vip_1_0_pkg::*;
import design_1_axi_vip_2_0_pkg::*;
import design_1_axi_vip_3_0_pkg::*;

bit resetb_0 = 0, sys_clock = 0, sys_reset = 0, keepChk = 1;
xil_axi_resp_t resp;
bit[11:0] offset;
bit[31:0] data, base_addr = 32'h6000_0000;
xil_axi_ulong addrm = 32'h44A0_0000;
xil_axi_ulong addri = 32'h4500_0000;
xil_axi_ulong addro = 32'h4508_0000;
integer index, fd;
 
bit[1:0] test_type;
 
event system_reset_event, peripheral_reset_event, caravel_reset_event, fw_worked_event, is_txen_event, ladma_done, error_event;
event fw_mb_st_event, fw_mb_wd_event, userdma_done;

module fsic_tb();

    localparam  ReadCyc = 1'b0;
    localparam  WriteCyc = 1'b1;
    localparam  SOC_UP = 16'h0000;
    localparam  SOC_LA = 16'h1000;
    localparam  PL_AA_MB = 16'h2000;
    localparam  PL_AA = 16'h2100;
    localparam  SOC_IS = 16'h3000;
    localparam  SOC_AS = 16'h4000;
    localparam  SOC_CC = 16'h5000;
    localparam  PL_AS = 16'h6000;
    localparam  PL_IS = 16'h7000;
    localparam  PL_DMA = 16'h8000;
    localparam  PL_UPDMA = 16'h9000;
	
	localparam  test_FFT  = 2'd0;
	localparam  test_iFFT = 2'd1;
	localparam  test_NTT  = 2'd2;
	localparam  test_iNTT = 2'd3;
	
    design_1_wrapper DUT
    (
        .resetb_0(resetb_0),
        .sys_clock(sys_clock),
        .sys_reset(sys_reset)
    );
         
    //always #4ns sys_clock = ~sys_clock;     //Period 8ns, 125MHz
    always #2ns sys_clock = ~sys_clock;     //Period 4ns, 250Mhz                 
        
    design_1_axi_vip_0_0_mst_t  master_agent;
    design_1_axi_vip_1_0_slv_mem_t  slave_agent;
    design_1_axi_vip_2_0_slv_mem_t  slave_agent2;
    design_1_axi_vip_3_0_slv_mem_t  slave_agent3;

    initial begin    
        fork
            system_reset_t();
            peripheral_reset_t();  
            caravel_reset_t();
            fw_worked_t();
            is_txen_t(); 
            error_t();           
        join_none    
        
        @(system_reset_event);
        @(peripheral_reset_event);
        @(caravel_reset_event);
        @(fw_worked_event);           
    end 

    // Set 11 coefficients
    reg signed [31:0] coef [0:10];
    initial begin
        coef[0]  =  32'd0;  // 0x20
        coef[1]  = -32'd10; // 0x24
        coef[2]  = -32'd9;  // 0x28
        coef[3]  =  32'd23; // 0x2C
        coef[4]  =  32'd56; // 0x30
        coef[5]  =  32'd63; // 0x34
        coef[6]  =  32'd56; // 0x38
        coef[7]  =  32'd23; // 0x3C
        coef[8]  = -32'd9;  // 0x40
        coef[9]  = -32'd10; // 0x44
        coef[10] =  32'd0;  // 0x48
    end
    
    initial begin
        master_agent = new("master vip agent", DUT.design_1_i.axi_vip_0.inst.IF);
        master_agent.start_master();
        
        slave_agent = new("slave vip agent", DUT.design_1_i.axi_vip_1.inst.IF);
        slave_agent.start_slave();

        slave_agent2 = new("slave vip agent", DUT.design_1_i.axi_vip_2.inst.IF);
        slave_agent2.start_slave();

        slave_agent3 = new("slave vip agent", DUT.design_1_i.axi_vip_3.inst.IF);
        slave_agent3.start_slave();

        @(is_txen_event);      
        $display($time, "=> Starting test...");

        // Fpga2Soc_CfgRead();
        // Fpga2Soc_CfgWrite();
        // FpgaLocal_CfgRead();
        // SocLocal_MbWrite();   // Test the SoC MB write ///////////////////////
        // FpgaLocal_MbWrite();
        // SocLa2DmaPath();
        // SocUp2DmaPath();

//==================================================================================//
//====================== User Identify Simulation Flow =============================//
//==================================================================================//
		/*
        load_firDMA();
        cnfg_firDMA();
        start_fir();
        WaitIRQ(1'b1, 32'h4a4a4a4a);
        start_firDMA();
        WaitIRQ(1'b1, 32'h3a3a3a3a);
        */
        ///*
		load_dma_FFT();
		setting_dma_FFT();
		//load_dma_iNTT();
		//setting_dma_iNTT();
		//load_dma_NTT();
		//setting_dma_NTT();
		//load_dma_iFFT();
		//setting_dma_iFFT();
		//WaitIRQ(1'b1, 32'h4a4a4a4a);
		$display($time, "=> Write PL_AA to enable IRQ");
                offset = 0;
                data = 32'h0000_0001;
                axil_cycles_gen(WriteCyc, PL_AA, offset, data, 1);
                axil_cycles_gen(ReadCyc, PL_AA, offset, data, 1);
                start_algorithm();
		 start_DMA();
		 WaitIRQ(1'b1, 32'h3a3a3a3a);

                //CheckuserDMADone_NTT();
                //CheckuserDMADone_iNTT();
                 CheckuserDMADone_FFT();
                //CheckuserDMADone_iFFT();
        
//==================================================================================//
//==================================================================================//
//==================================================================================//
        #500us    
        $display($time, "=> End of the test...");                         
        $finish;
    end


    
//==================================================================================//
//============================== User Identify Tasks ===============================//
//==================================================================================//

    /*initial begin
        $dumpfile("/home/ubuntu/irq_test_v1/vivado/fsic_sim.vcd");
        $dumpvars(0, fsic_tb);
    end*/
    
    reg [31:0] fir_in [0:63];
    reg [31:0] fir_in_data;

    task TogglePL_AA;
        begin
            $display($time, "=> =======================================================================");
    	    $display($time, "=> Start toggling aa_mb_irq_en");
            $display($time, "=> =======================================================================");
            offset = 0;
            data = 32'h0000_0001;
            axil_cycles_gen(WriteCyc, PL_AA, offset, data, 1);
            axil_cycles_gen(ReadCyc, PL_AA, offset, data, 1);

            if(data == 32'h0000_00001) begin
                $display($time, "=> FpgaLocal_Write PL_AA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> FpgaLocal_Write PL_AA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            data = 32'h0000_0000;
            axil_cycles_gen(WriteCyc, PL_AA, offset, data, 1);
            axil_cycles_gen(ReadCyc, PL_AA, offset, data, 1);

            if(data == 32'h0000_00000) begin
                $display($time, "=> FpgaLocal_Write PL_AA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> FpgaLocal_Write PL_AA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end
        end
    endtask

    task WaitIRQ;
        input [0:0]  plaa_en;
        input [31:0] pattern;
        begin
            if (plaa_en == 1'b1) begin
                $display($time, "=> Write PL_AA to enable IRQ");
                offset = 0;
                data = 32'h0000_0001;
                axil_cycles_gen(WriteCyc, PL_AA, offset, data, 1);
                axil_cycles_gen(ReadCyc, PL_AA, offset, data, 1);
            end
            
            // Wait for IRQ
            keepChk = 1;
            while (keepChk) begin
            //$display($time, "=> Wating irq done...");
            #10
                if (DUT.design_1_i.ps_axil_0.aa_mb_irq == 1'b1) begin
                    keepChk = 1'b0;
                    $display($time, "=> ***********************************************************************");
                    $display($time, "=> Interrupt Asserted!!");
                    $display($time, "=> ***********************************************************************");
                end
            end
            // Read MailBox
            axil_cycles_gen(ReadCyc, PL_AA_MB, offset, data, 1);
            if(data == pattern) begin
                keepChk = 0;
                $display($time, "=> FpgaLocal_Read PL_AA_MB = %h, PASS", data);
            end 

        end
    endtask

    task UserMB;
        input [0:0]  plaa_en;   // Enable PL_AA
        input [0:0]  plaa_re;
        input [31:0] pattern; // Input MB Pattern
        begin
            //==================== Check MailBox ====================//
            if (plaa_en == 1'b1) begin
                $display($time, "=> Write PL_AA to enable IRQ");
                offset = 0;
                data = 32'h0000_0001;
                axil_cycles_gen(WriteCyc, PL_AA, offset, data, 1);
                axil_cycles_gen(ReadCyc, PL_AA, offset, data, 1);
            end
            //#20us
            if(data == 32'h0000_00001) begin
                $display($time, "=> FpgaLocal_Write PL_AA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> FpgaLocal_Write PL_AA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            // offset = 32'h0000_0000;
            // data   = 32'h0000_0002;
            // axil_cycles_gen(ReadCyc, SOC_UP, offset, data, 1);
            // $display($time, "=> ***********************************************************************");
            // $display($time, "=> FIR ap status: %d", data[1]);
            // $display($time, "=> ***********************************************************************");

            keepChk = 1;
            $display($time, "=> Read PL_AA_MB for specific pattern");
            offset = 0;
            while (keepChk) begin
                axil_cycles_gen(ReadCyc, PL_AA_MB, offset, data, 1);
                if(data == pattern) begin
                    keepChk = 0;
                    $display($time, "=> FpgaLocal_Read PL_AA_MB = %h, PASS", data);
                end 
            end
            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> aa_mb_irq status = %0b", DUT.design_1_i.ps_axil_0.aa_mb_irq);
            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> FpgaLocal_Read: PL_AA");
            offset = 4;
            axil_cycles_gen(ReadCyc, PL_AA, offset, data, 1);
            if(data == 32'h0000_0001) begin
                $display($time, "=> FpgaLocal_Read PL_AA = %h, PASS", data);
            end else begin
                $display($time, "=> FpgaLocal_Read PL_AA = %h, FAIL", data);
                ->> error_event;
            end

            if (plaa_re == 1'b1) begin
                $display($time, "=> Write PL_AA to releaseIRQ");
                offset = 0;
                data = 32'h0000_0000;
                axil_cycles_gen(WriteCyc, PL_AA, offset, data, 1);
                axil_cycles_gen(ReadCyc, PL_AA, offset, data, 1);
            end
            //#20us
            if(data == 32'h0000_00000) begin
                $display($time, "=> FpgaLocal_Write PL_AA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> FpgaLocal_Write PL_AA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end
        end
    endtask

    // Refer to SocUp2DmaPath: 
    task load_firDMA;
        begin
            $display($time, "=> =======================================================================");
    	    $display($time, "=> Load FIR x_in into memory for DMA to access and stream into FIR");
            $display($time, "=> =======================================================================");

            $readmemh("../../../../../fir_in.hex", fir_in);
            // Create log file to ensure the data is written
            fd = $fopen ("../../../../../firDMA_in.log", "w");
            for (index = 0; index < 64; index += 1) begin
                fir_in_data |= fir_in[index];
                slave_agent3.mem_model.backdoor_memory_write_4byte(addri + 4 * index, fir_in_data, 4'b1111); // addr, data, BE
                fir_in_data = 0;
                $fdisplay(fd, "%08h", slave_agent3.mem_model.backdoor_memory_read_4byte(addri + 4 * index));
            end
            $fclose(fd);
            
    	end
    endtask

    // Program ap_start to DMA using AXI-Lite:
    task start_firDMA;
        begin
            $display($time, "=> ======================================================================="); 
            $display($time, "=> Start DMA streaming x in, program ap_start to DMA");
            $display($time, "=> ======================================================================="); 
            offset = 32'h0000_0000;
            data   = 32'h0000_0001;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);

            fork
                CheckfirDMADone();
            join_none

            @(userdma_done);
            
            $display($time, "=> End firDMA transmission...");
            $display($time, "=> ======================================================================="); 
        end
    endtask

    // Wait until DMA finish transmission cycles
    task CheckfirDMADone;
        reg [31:0] last_y;
        begin
            $display($time, "=> =======================================================================");
            $display($time, "=> Starting Check fir result written back by DMA");
            $display($time, "=> =======================================================================");
            $display($time, "=> FpgaLocal_Read: PL_UPDMA");

            keepChk = 1;
            offset = 32'h0000_0010;
            $display($time, "=> Wating buffer transfer done...");
            while (keepChk) begin
                #10us
                axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 0);
                if(data == 32'h0000_0001) begin
                    keepChk = 0;

                    fd = $fopen ("../../../../../firDMA_out.log", "w");
                    for (index = 0; index < 64; index += 1) begin
                        // Write the Y_out into .log file
                        $fdisplay(fd, "%08d", slave_agent2.mem_model.backdoor_memory_read_4byte(addro + (4 * index)));
                    end

                    last_y = slave_agent2.mem_model.backdoor_memory_read_4byte(addro + (4 * 63));
                    $display($time, "=> -----------------------------------------------------------------------");
                    axil_cycles_gen(ReadCyc, PL_UPDMA, 32'h0000_003C, data, 0); // 0x44: s2m_err
                    $display($time, "=> *----------------------------*--------*");
                    $display($time, "=> |     Stream to Memory Error | Status |");
                    $display($time, "=> *----------------------------*--------*");
                    $display($time, "=> |                     Passed |      0 |");
                    $display($time, "=> | Stream-in less than length |      1 |");
                    $display($time, "=> | Stream-in more than length |      2 |");
                    $display($time, "=> *----------------------------*--------*");
                    $display($time, "=> Stream to Memory error status: %2d", data);
                    if (last_y == 10614)
                        $display($time, "=> FIR PASS, last Y: %5d", last_y);
                    else
                        $display($time, "=> FIR Failed, last Y: %5d", last_y);
                    $display($time, "=> -----------------------------------------------------------------------");
                    $fclose(fd);
                end
            end
            
            ->> userdma_done;
            $display($time, "=> End CheckfirDMADone()...");

        end
    endtask

    // Refer to SocLa2DmaPath
    task cnfg_firDMA;
        // ===========================================
        // control
        // 0x00 : Control signals
        //        bit 0  - ap_start (Read/Write/COH)
        //        bit 1  - ap_done (Read/COR)
        //        bit 2  - ap_idle (Read)
        //        bit 3  - ap_ready (Read/COR)
        //        others - reserved
        // 0x10 : Data signal of s2m_buf_sts
        // 0x14 : Control signal of s2m_buf_sts
        // 0x20 : Data signal of s2m_len
        // 0x28 : Data signal of s2m_enb_clrsts
        // 0x30 : Data signal of s2mbuf [31:0]
        // 0x34 : Data signal of s2mbuf [63:32]
        // 0x3c : Data signal of s2m_err
        // 0x40 : Control signal of s2m_err
        // 0x4c : Data signal of m2sbuf [31:0]
        // 0x50 : Data signal of m2sbuf [63:32]
        // 0x58 : Data signal of m2s_buf_sts
        // 0x5c : Control signal of m2s_buf_sts
        // 0x68 : Data signal of m2s_len
        // 0x70 : Data signal of m2s_enb_clrsts
        // ===========================================
    	begin
            $display($time, "=> =======================================================================");
            $display($time, "=> Configurate DMA");
            $display($time, "=> =======================================================================");
    	    
            $display($time, "=> FpgaLocal_Write: PL_UPDMA, enable s2m clear status");
            offset = 32'h0000_0028;
            data = 32'h0000_0000;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'h0000_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> FpgaLocal_Write: PL_UPDMA, enable m2s clear status");
            offset = 32'h0000_0070;
            data = 32'h0000_0000;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'h0000_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> FpgaLocal_Write: PL_UPDMA, s2m set buffer length...");
            offset = 32'h0000_0020;
            data = 32'd64;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us230400
            if(data == 32'd64) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> FpgaLocal_Write: PL_UPDMA, s2m set buffer low...");
            offset = 32'h0000_0030;
            data = 32'h4508_0000;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'h4508_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> FpgaLocal_Write: PL_UPDMA, s2m set buffer high...");
            offset = 32'h0000_0034;
            data = 32'h0000_0000;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'h0000_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> FpgaLocal_Write: PL_UPDMA, m2s set buffer low...");
            offset = 32'h0000_004C;
            data = 32'h4500_0000;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'h4500_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> FpgaLocal_Write: PL_UPDMA, m2s set buffer high...");
            offset = 32'h0000_0050;
            data = 32'h0000_0000;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'h0000_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> FpgaLocal_Write: PL_UPDMA, m2s set buffer length...");
            offset = 32'h0000_0068;
            data = 32'd64;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'd64) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end
            $display($time, "=> -----------------------------------------------------------------------");
    	end
    endtask

    task start_fir;
        int i;
    	begin
            $display($time, "=> =======================================================================");
            $display($time, "=> Initialize FIR and program ap_start");
            $display($time, "=> =======================================================================");
            //Select user project which target to FIR
            $display($time, "=> Fpga2Soc_Write: SOC_CC");
            offset = 0;
            data = 32'h0000_0001;
            axil_cycles_gen(WriteCyc, SOC_CC, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, SOC_CC, offset, data, 1);
            //#20us
            // Check whether the configuration cycle was correct
            if(data == 32'h0000_0001) begin
                $display($time, "=> Fpga2Soc_Write SOC_CC offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write SOC_CC offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            //Configure FIR IP data length
            $display($time, "=> Fpga2Soc_Write: SOC_UP");
            offset = 12'h10;
            data = 32'd64;
            axil_cycles_gen(WriteCyc, SOC_UP, offset, data, 1);
            axil_cycles_gen(ReadCyc, SOC_UP, offset, data, 1);
            //#20us
            // Check whether the configuration cycle was correct
            if(data == 32'd64) begin
                $display($time, "=> Fpga2Soc_Write SOC_UP offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write SOC_UP offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            // Write coefficient
            for(i = 0; i < 11; i = i+1) begin
            	$display($time, "=> Fpga2Soc_Write: SOC_UP");
            	offset = 12'h20 + 4 * i;
            	data = coef[i];
            	axil_cycles_gen(WriteCyc, SOC_UP, offset, data, 1);
            	axil_cycles_gen(ReadCyc, SOC_UP, offset, data, 1);
            //#20us
            	if(data == coef[i]) begin
                $display($time, "=> Fpga2Soc_Write SOC_UP offset %h = %h, PASS", offset, data);
            	end else begin
                $display($time, "=> Fpga2Soc_Write SOC_UP offset %h = %h, FAIL", offset, data);
                ->> error_event;
            	end
            end 
            //Select FIR IP user project
            $display($time, "=> Fpga2Soc_Write: SOC_CC");
            offset = 0;
            data = 32'h0000_0001;
            axil_cycles_gen(WriteCyc, SOC_CC, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, SOC_CC, offset, data, 1);
            //#20us
            if(data == 32'h0000_0001) begin
                $display($time, "=> Fpga2Soc_Write SOC_CC offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write SOC_CC offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end       
            // fir_start
            $display($time, "=> Fpga2Soc_Write: SOC_UP");     	
                offset = 12'h00;
            	data = 32'h0000_0001;
            	axil_cycles_gen(WriteCyc, SOC_UP, offset, data, 1);           
    	end

    endtask

//==================================================================================//
//=============================== fiFFNTT Algorithm ================================//
//==================================================================================//	

	reg [31:0] updma_FFT_x [0:2047];
    reg [31:0] updma_FFT_x_data;
    task load_dma_FFT;
    	begin
    	    $display($time, "=> load dma FFT ...");
            $display($time, "=> =======================================================================");

            $readmemh("../../../../../FFT_in.hex", updma_FFT_x);

            fd = $fopen ("../../../../../updma_FFT_input.log", "w");
            for (index = 0; index < 2048; index +=1) begin
                updma_FFT_x_data |= updma_FFT_x[index];
                slave_agent3.mem_model.backdoor_memory_write_4byte(addri+4*index,updma_FFT_x_data,4'b1111);
                updma_FFT_x_data = 0;
                $fdisplay(fd, "%08h", slave_agent3.mem_model.backdoor_memory_read_4byte(addri+4*index));
            end
            $fclose(fd);
            
    	end
    endtask
    
    reg [31:0] updma_iFFT_x [0:2047];
    reg [31:0] updma_iFFT_x_data;    
    task load_dma_iFFT;
    	begin
    	    $display($time, "=> load dma iFFT ...");
            $display($time, "=> =======================================================================");

            $readmemh("../../../../../FFT_out.hex", updma_iFFT_x);

            fd = $fopen ("../../../../../updma_iFFT_input.log", "w");
            for (index = 0; index < 2048; index +=1) begin
                updma_iFFT_x_data |= updma_iFFT_x[index];
                slave_agent3.mem_model.backdoor_memory_write_4byte(addri+4*index,updma_iFFT_x_data,4'b1111);
                updma_iFFT_x_data = 0;
                $fdisplay(fd, "%08h", slave_agent3.mem_model.backdoor_memory_read_4byte(addri+4*index));
            end
            $fclose(fd);
            
    	end
    endtask
	
	reg [31:0] updma_NTT_x [0:1024];
    reg [31:0] updma_NTT_x_data;
    task load_dma_NTT;
    	begin
    	    $display($time, "=> load dma NTT ...");
            $display($time, "=> =======================================================================");

            $readmemh("../../../../../NTT_in.hex", updma_NTT_x);

            fd = $fopen ("../../../../../updma_NTT_input.log", "w");
            for (index = 0; index < 1024; index +=1) begin
                updma_NTT_x_data |= updma_NTT_x[index];
                slave_agent3.mem_model.backdoor_memory_write_4byte(addri+8*index,updma_NTT_x_data,4'b1111);
                updma_NTT_x_data = 0;
                $fdisplay(fd, "%08h", slave_agent3.mem_model.backdoor_memory_read_4byte(addri+8*index));
            end
            $fclose(fd);
    	end
    endtask
    
    reg [31:0] updma_iNTT_x [0:1024];
    reg [31:0] updma_iNTT_x_data;
    task load_dma_iNTT;
    	begin
    	    $display($time, "=> load dma iNTT ...");
            $display($time, "=> =======================================================================");

            $readmemh("../../../../../NTT_out.hex", updma_iNTT_x);

            fd = $fopen ("../../../../../updma_iNTT_input.log", "w");
            for (index = 0; index < 1024; index +=1) begin
                updma_iNTT_x_data |= updma_iNTT_x[index];
                slave_agent3.mem_model.backdoor_memory_write_4byte(addri+8*index,updma_iNTT_x_data,4'b1111);
                updma_iNTT_x_data = 0;
                $fdisplay(fd, "%08h", slave_agent3.mem_model.backdoor_memory_read_4byte(addri+8*index));
            end
            $fclose(fd);
    	end
    endtask
	
    task setting_dma_FFT;
    	begin

            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> FpgaLocal_Write: PL_UPDMA, s2m set buffer low...");
            offset = 32'h0000_0038;
            data = 32'h4508_0000;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'h4508_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> FpgaLocal_Write: PL_UPDMA, s2m set buffer high...");
            offset = 32'h0000_003c;
            data = 32'h0000_0000;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'h0000_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> FpgaLocal_Write: PL_UPDMA, m2s set buffer low...");
            offset = 32'h0000_0044;
            data = 32'h4500_0000;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'h4500_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> FpgaLocal_Write: PL_UPDMA, m2s set buffer high...");
            offset = 32'h0000_0048;
            data = 32'h0000_0000;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'h0000_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> FpgaLocal_Write: PL_UPDMA, set buffer mode...");
            offset = 32'h0000_0010;
            data = 32'd0;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'd0) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end
            $display($time, "=> -----------------------------------------------------------------------");
    	end
    endtask
    
    
    
    task setting_dma_iFFT;
    	begin
            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> FpgaLocal_Write: PL_UPDMA, s2m set buffer low...");
            offset = 32'h0000_0038;
            data = 32'h4508_0000;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'h4508_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> FpgaLocal_Write: PL_UPDMA, s2m set buffer high...");
            offset = 32'h0000_003c;
            data = 32'h0000_0000;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'h0000_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> FpgaLocal_Write: PL_UPDMA, m2s set buffer low...");
            offset = 32'h0000_0044;
            data = 32'h4500_0000;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'h4500_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> FpgaLocal_Write: PL_UPDMA, m2s set buffer high...");
            offset = 32'h0000_0048;
            data = 32'h0000_0000;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'h0000_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> FpgaLocal_Write: PL_UPDMA, set buffer mode...");
            offset = 32'h0000_0010;
            data = 32'd1;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'd1) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end
            $display($time, "=> -----------------------------------------------------------------------");
    	end
    endtask
    
	task setting_dma_NTT;
    	begin
            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> FpgaLocal_Write: PL_UPDMA, s2m set buffer low...");
            offset = 32'h0000_0038;
            data = 32'h4508_0000;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'h4508_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> FpgaLocal_Write: PL_UPDMA, s2m set buffer high...");
            offset = 32'h0000_003c;
            data = 32'h0000_0000;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'h0000_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> FpgaLocal_Write: PL_UPDMA, m2s set buffer low...");
            offset = 32'h0000_0044;
            data = 32'h4500_0000;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'h4500_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> FpgaLocal_Write: PL_UPDMA, m2s set buffer high...");
            offset = 32'h0000_0048;
            data = 32'h0000_0000;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'h0000_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> FpgaLocal_Write: PL_UPDMA, set buffer mode...");
            offset = 32'h0000_0010;
            data = 32'd2;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'd2) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end
            $display($time, "=> -----------------------------------------------------------------------");
    	end
    endtask
      
    task setting_dma_iNTT;
    	begin
            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> FpgaLocal_Write: PL_UPDMA, s2m set buffer low...");
            offset = 32'h0000_0038;
            data = 32'h4508_0000;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'h4508_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> FpgaLocal_Write: PL_UPDMA, s2m set buffer high...");
            offset = 32'h0000_003c;
            data = 32'h0000_0000;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'h0000_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> FpgaLocal_Write: PL_UPDMA, m2s set buffer low...");
            offset = 32'h0000_0044;
            data = 32'h4500_0000;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'h4500_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> FpgaLocal_Write: PL_UPDMA, m2s set buffer high...");
            offset = 32'h0000_0048;
            data = 32'h0000_0000;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'h0000_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> FpgaLocal_Write: PL_UPDMA, set buffer mode...");
            offset = 32'h0000_0010;
            data = 32'd3;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'd3) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end
            $display($time, "=> -----------------------------------------------------------------------");
    	end
    endtask
    
    
	task CheckuserDMADone_NTT;
        begin
            $display($time, "=> Starting CheckuserDMADone()...");
            $display($time, "=> =======================================================================");
            $display($time, "=> FpgaLocal_Read: PL_UPDMA");

            keepChk = 1;
            offset = 32'h0000_0018;
            $display($time, "=> Wating buffer transfer done...");
            while (keepChk) begin
                $display($time, "=> Wating buffer transfer done...");
                #10us
                axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 0);
                if(data == 32'h0000_0001) begin
                    $display($time, "=> Buffer transfer done. offset %h = %h, PASS", offset, data);
                    keepChk = 0;

                    fd = $fopen ("../../../../../updma_output_NTT.log", "w");
                    for (index = 0; index < 1024; index +=1) begin
                        reg signed [31:0]anser;
                        anser=slave_agent2.mem_model.backdoor_memory_read_4byte(addro+8*index);
                        $fdisplay(fd, "%08h",anser);
                    end

                    $fclose(fd);
               end
            end

            ->> userdma_done;
            $display($time, "=> End CheckuserDMADone()...");
            $display($time, "=> =======================================================================");

        end
    endtask
    
	task CheckuserDMADone_iNTT;
        begin
            $display($time, "=> Starting CheckuserDMADone()...");
            $display($time, "=> =======================================================================");
            $display($time, "=> FpgaLocal_Read: PL_UPDMA");

            keepChk = 1;
            offset = 32'h0000_0018;
            $display($time, "=> Wating buffer transfer done...");
            while (keepChk) begin
                $display($time, "=> Wating buffer transfer done...");
                #10us
                axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 0);
                if(data == 32'h0000_0001) begin
                    $display($time, "=> Buffer transfer done. offset %h = %h, PASS", offset, data);
                    keepChk = 0;

                    fd = $fopen ("../../../../../updma_output_iNTT.log", "w");
                    for (index = 0; index < 1024; index +=1) begin
                        reg signed [31:0]anser;
                        anser=slave_agent2.mem_model.backdoor_memory_read_4byte(addro+8*index);
                        $fdisplay(fd, "%08h",anser);
                    end

                    $fclose(fd);
               end
            end

            ->> userdma_done;
            $display($time, "=> End CheckuserDMADone()...");
            $display($time, "=> =======================================================================");

        end
    endtask
    
    task CheckuserDMADone_FFT;
        begin
            $display($time, "=> Starting CheckuserDMADone()...");
            $display($time, "=> =======================================================================");
            $display($time, "=> FpgaLocal_Read: PL_UPDMA");

            keepChk = 1;
            offset = 32'h0000_0018;
            $display($time, "=> Wating buffer transfer done...");
            while (keepChk) begin
                $display($time, "=> Wating buffer transfer done...");
                #10us
                axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 0);
                if(data == 32'h0000_0001) begin
                    $display($time, "=> Buffer transfer done. offset %h = %h, PASS", offset, data);
                    keepChk = 0;

                    fd = $fopen ("../../../../../updma_output_FFT.log", "w");
                    for (index = 0; index < 2048; index +=1) begin
                        reg signed [31:0]anser;
                        anser=slave_agent2.mem_model.backdoor_memory_read_4byte(addro+4*index);
                        $fdisplay(fd, "%08h",anser);
                    end

                    $fclose(fd);
               end
            end

            ->> userdma_done;
            $display($time, "=> End CheckuserDMADone()...");
            $display($time, "=> =======================================================================");

        end
    endtask
    
    task CheckuserDMADone_iFFT;
        begin
            $display($time, "=> Starting CheckuserDMADone()...");
            $display($time, "=> =======================================================================");
            $display($time, "=> FpgaLocal_Read: PL_UPDMA");

            keepChk = 1;
            offset = 32'h0000_0018;
            $display($time, "=> Wating buffer transfer done...");
            while (keepChk) begin
                $display($time, "=> Wating buffer transfer done...");
                #10us
                axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 0);
                if(data == 32'h0000_0001) begin
                    $display($time, "=> Buffer transfer done. offset %h = %h, PASS", offset, data);
                    keepChk = 0;

                    fd = $fopen ("../../../../../updma_output_iFFT.log", "w");
                    for (index = 0; index < 2048; index +=1) begin
                        reg signed [31:0]anser;
                        anser=slave_agent2.mem_model.backdoor_memory_read_4byte(addro+4*index);
                        $fdisplay(fd, "%08h",anser);
                    end

                    $fclose(fd);
               end
            end

            ->> userdma_done;
            $display($time, "=> End CheckuserDMADone()...");
            $display($time, "=> =======================================================================");

        end
    endtask
    
    task start_algorithm;
    	begin
    	   	// Select user project2
            $display($time, "=> Fpga2Soc_Write: SOC_CC");
            
            offset = 0;
            data = 32'h0000_0002;
            axil_cycles_gen(WriteCyc, SOC_CC, offset, data, 1);
            axil_cycles_gen(ReadCyc, SOC_CC, offset, data, 1);
            
            if(data == 32'h0000_0002) begin
                $display($time, "=> Fpga2Soc_Write SOC_CC offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write SOC_CC offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

    	end
    endtask
    
    task start_DMA;
    	begin
	   $display($time, "=> ======================================================================="); 
            $display($time, "=> Start DMA streaming x in, program ap_start to DMA");
            $display($time, "=> ======================================================================="); 
            offset = 32'h0000_0000;
            data = 32'h0000_0001;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            
            /*fork
                //CheckuserDMADone_NTT();
                //CheckuserDMADone_iNTT();
                CheckuserDMADone_FFT();
                //CheckuserDMADone_iFFT();
            join_none

            @(userdma_done);
            
            $display($time, "=> End SocUp2DmaPath() test...");
            $display($time, "=> =======================================================================");  */
    	end
    endtask
    
//==================================================================================//
//==================================================================================//
//==================================================================================//
    
    task system_reset_t;
        begin
            sys_reset = 0;
            #200ns
            sys_reset = 1;
            $display($time, "=> sys_rest = %01b", sys_reset);            
            ->> system_reset_event;
        end
    endtask
    
    task peripheral_reset_t;
        begin
            wait(DUT.design_1_i.rst_clk_wiz_0_5M_peripheral_aresetn == 1'b1);
            $display($time, "=> rst_clk_wiz_0_5M_peripheral_aresetn = %01b", DUT.design_1_i.rst_clk_wiz_0_5M_peripheral_aresetn);            
            ->> peripheral_reset_event;
        end
    endtask

    task caravel_reset_t;
        begin
            @(peripheral_reset_event);                 
            #200us
            resetb_0 = 1;
            $display($time, "=> CaravelSoC resetb_0 = %01b", resetb_0);    
            ->> caravel_reset_event;        
        end
    endtask          

    task fw_worked_t;
        begin
            wait(DUT.design_1_i.caravel_0_mprj_o[37] == 1'b1);
            $display($time, "=> FW working, caravel_0_mprj_o[37] = %0b", DUT.design_1_i.caravel_0_mprj_o[37]);
            ->> fw_worked_event;        
        end
    endtask

    task error_t;
        begin
            @(error_event);
            $display($time, "=> Testbench Failed, End of the test.");
            #800us
            $finish;
        end
    endtask    

    task is_txen_t;
        begin
            @(fw_worked_event);
            $display($time, "=> PL_IS enabling..."); 
            data = 1;   
            axil_cycles_gen(WriteCyc, PL_IS, 0, data, 1);
            #10us
            data = 3;
            axil_cycles_gen(WriteCyc, PL_IS, 0, data, 1);
            #10us            
            axil_cycles_gen(ReadCyc, PL_IS, 0, data, 1);
            $display($time, "=> PL_IS enables: = %h", data);
            if(data == 32'h0000_0003)                             
                ->> is_txen_event;
            else 
                ->> error_event;                        
        end
    endtask    
    
    task Fpga2Soc_CfgRead;
        begin
            $display($time, "=> Starting Fpga2Soc_CfgRead() test...");
            $display($time, "=> =======================================================================");

            $display($time, "=> Fpga2Soc_Read testing: SOC_CC"); 
            offset = 0;            
            axil_cycles_gen(ReadCyc, SOC_CC, offset, data, 1);
            #10us            
            if(data == 32'h0000_001F) begin
                $display($time, "=> Fpga2Soc_Read SOC_CC offset %h = %h, PASS", offset, data);            
            end else begin
                $display($time, "=> Fpga2Soc_Read SOC_CC offset %h = %h, FAIL", offset, data);
                ->> error_event;            
            end

            $display($time, "=> Fpga2Soc_Read testing: SOC_AS");
            offset = 0;                         
            axil_cycles_gen(ReadCyc, SOC_AS, offset, data, 1);
            #10us            
            if(data == 32'h0000_0006) begin
                $display($time, "=> Fpga2Soc_Read SOC_AS = %h, PASS", data);            
            end else begin
                $display($time, "=> Fpga2Soc_Read SOC_AS = %h, FAIL", data);            
                ->> error_event;            
            end

            $display($time, "=> Fpga2Soc_Read testing: SOC_IS");
            offset = 0;                         
            axil_cycles_gen(ReadCyc, SOC_IS, offset, data, 1);
            #10us            
            if(data == 32'h0000_0001) begin
                $display($time, "=> Fpga2Soc_Read SOC_IS = %h, PASS", data);            
            end else begin
                $display($time, "=> Fpga2Soc_Read SOC_IS = %h, FAIL", data);            
                ->> error_event;            
            end     
            
            $display($time, "=> Fpga2Soc_Read testing: SOC_LA");
            offset = 0;                         
            axil_cycles_gen(ReadCyc, SOC_LA, offset, data, 1);
            #10us            
            if(data == 32'h0000_0000) begin
                $display($time, "=> Fpga2Soc_Read SOC_LA = %h, PASS", data);            
            end else begin
                $display($time, "=> Fpga2Soc_Read SOC_LA = %h, FAIL", data);            
                ->> error_event;            
            end

            $display($time, "=> End Fpga2Soc_CfgRead() test...");
            $display($time, "=> =======================================================================");

        end
    endtask    
    
    task Fpga2Soc_CfgWrite;
        begin
            $display($time, "=> Starting Fpga2Soc_CfgWrite() test...");
            $display($time, "=> =======================================================================");

            $display($time, "=> Fpga2Soc_Write testing: SOC_CC"); 
            offset = 0;
            
            for (index = 0; index < 8'h5 ; index=index+1) begin
                data = index;
                axil_cycles_gen(WriteCyc, SOC_CC, offset, data, 1);
                //#20us            
                axil_cycles_gen(ReadCyc, SOC_CC, offset, data, 1);
                //#20us                
                if(data == index) begin
                    $display($time, "=> #%h, Fpga2Soc_Write SOC_CC offset %h = %h, PASS", index, offset, data);            
                end else begin
                    $display($time, "=> #%h, Fpga2Soc_Write SOC_CC offset %h = %h, FAIL", index, offset, data);            
                    ->> error_event;
                end
                if (index==0) begin
                    `ifdef USE_EDGEDETECT_IP
                        $display($time, "=> Fpga2Soc_Read testing: SOC_UP");
                        offset = 0;
                        axil_cycles_gen(ReadCyc, SOC_UP, offset, data, 1);
                        #10us
                        if(data == 32'h0000_0000) begin
                            $display($time, "=> Fpga2Soc_Read SOC_UP offset %h = %h, PASS", offset, data);
                        end else begin
                            $display($time, "=> Fpga2Soc_Read SOC_UP offset %h = %h, FAIL", offset, data);
                            ->> error_event;
                        end

                        $display($time, "=> Fpga2Soc_Read testing: SOC_UP");
                        offset = 4;
                        axil_cycles_gen(ReadCyc, SOC_UP, offset, data, 1);
                        #10us
                        if(data == 32'h0000_0280) begin
                            $display($time, "=> Fpga2Soc_Read SOC_UP offset %h = %h, PASS", offset, data);
                        end else begin
                            $display($time, "=> Fpga2Soc_Read SOC_UP offset %h = %h, FAIL", offset, data);
                            ->> error_event;
                        end

                        $display($time, "=> Fpga2Soc_Read testing: SOC_UP");
                        offset = 8;
                        axil_cycles_gen(ReadCyc, SOC_UP, offset, data, 1);
                        #10us
                        if(data == 32'h0000_01E0) begin
                            $display($time, "=> Fpga2Soc_Read SOC_UP offset %h = %h, PASS", offset, data);
                        end else begin
                            $display($time, "=> Fpga2Soc_Read SOC_UP offset %h = %h, FAIL", offset, data);
                            ->> error_event;
                        end

                        $display($time, "=> Fpga2Soc_Read testing: SOC_UP");
                        offset = 12;
                        axil_cycles_gen(ReadCyc, SOC_UP, offset, data, 1);
                        #10us
                        if(data == 32'h0000_0001) begin
                            $display($time, "=> Fpga2Soc_Read SOC_UP offset %h = %h, PASS", offset, data);
                        end else begin
                            $display($time, "=> Fpga2Soc_Read SOC_UP offset %h = %h, FAIL", offset, data);
                            ->> error_event;
                        end
                    `else   //USE_EDGEDETECT_IP
                        $display($time, "=> Fpga2Soc_Read testing: SOC_UP");
                        offset = 0;
                        axil_cycles_gen(ReadCyc, SOC_UP, offset, data, 1);
                        #10us
                        if(data == 32'haa55_aa55) begin
                            $display($time, "=> Fpga2Soc_Read SOC_UP offset %h = %h, PASS", offset, data);
                        end else begin
                            $display($time, "=> Fpga2Soc_Read SOC_UP offset %h = %h, FAIL", offset, data);
                            ->> error_event;
                        end

                    `endif
                    offset = 0;
                end
            end

            $display($time, "=> End Fpga2Soc_CfgWrite() test...");
            $display($time, "=> =======================================================================");

        end
    endtask

    task SocLa2DmaPath;
        begin
            $display($time, "=> Starting SocLa2DmaPath() test...");
            $display($time, "=> =======================================================================");
            //Setup ladma
            $display($time, "=> FpgaLocal_Write: PL_DMA, exit clear...");
            offset = 32'h0000_0020;
            data = 32'h0000_0000;
            axil_cycles_gen(WriteCyc, PL_DMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_DMA, offset, data, 1);
            //#20us
            if(data == 32'h0000_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_DMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_DMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> FpgaLocal_Write: PL_DMA, set buffer length...");
            offset = 32'h0000_0028;
            data = 32'h0000_0400;
            axil_cycles_gen(WriteCyc, PL_DMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_DMA, offset, data, 1);
            //#20us
            if(data == 32'h0000_0400) begin
                $display($time, "=> Fpga2Soc_Write PL_DMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_DMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> FpgaLocal_Write: PL_DMA, set trigger condition...");
            offset = 32'h0000_0030;
            data = 32'h0000_0200;
            axil_cycles_gen(WriteCyc, PL_DMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_DMA, offset, data, 1);
            //#20us
            if(data == 32'h0000_0200) begin
                $display($time, "=> Fpga2Soc_Write PL_DMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_DMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> FpgaLocal_Write: PL_DMA, set buffer low...");
            offset = 32'h0000_0038;
            data = 32'h44A0_0000;
            axil_cycles_gen(WriteCyc, PL_DMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_DMA, offset, data, 1);
            //#20us
            if(data == 32'h44A0_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_DMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_DMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> FpgaLocal_Write: PL_DMA, set buffer high...");
            offset = 32'h0000_003C;
            data = 32'h0000_0000;
            axil_cycles_gen(WriteCyc, PL_DMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_DMA, offset, data, 1);
            //#20us
            if(data == 32'h0000_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_DMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_DMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> FpgaLocal_Write: PL_DMA, set ap_start...");
            offset = 32'h0000_0000;
            data = 32'h0000_0001;
            axil_cycles_gen(WriteCyc, PL_DMA, offset, data, 1);

            $display($time, "=> Fpga2Soc_Write: SOC_LA");
            offset = 0;
            data = 32'h00FF_FFFF;
            axil_cycles_gen(WriteCyc, SOC_LA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, SOC_LA, offset, data, 1);
            //#20us
            if(data == 32'h00FF_FFFF) begin
                $display($time, "=> Fpga2Soc_Write SOC_LA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write SOC_LA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            //Select fake user project for la_data_o generation
            $display($time, "=> Fpga2Soc_Write: SOC_CC");
            offset = 0;
            data = 32'h0000_0003;
            axil_cycles_gen(WriteCyc, SOC_CC, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, SOC_CC, offset, data, 1);
            //#20us
            if(data == 32'h0000_0003) begin
                $display($time, "=> Fpga2Soc_Write SOC_CC offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write SOC_CC offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            fork
                CheckLaDMADone();
            join_none

            @(ladma_done);

            offset = 0;
            axil_cycles_gen(ReadCyc, SOC_LA, offset, data, 1);
            if(data == 32'h0000_0000) begin
                $display($time, "=> Fpga2Soc_Write SOC_LA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write SOC_LA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            offset = 0;
            axil_cycles_gen(ReadCyc, SOC_CC, offset, data, 1);
            if(data == 32'h0000_0001) begin
                $display($time, "=> Fpga2Soc_Write SOC_CC offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write SOC_CC offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> End SocLa2DmaPath() test...");
            $display($time, "=> =======================================================================");
        end
    endtask

  task CheckLaDMADone;
        begin
            $display($time, "=> Starting CheckLaDMADone()...");
            $display($time, "=> =======================================================================");
            $display($time, "=> FpgaLocal_Read: PL_DMA");

            keepChk = 1;
            offset = 32'h0000_0010;
            $display($time, "=> Wating buffer transfer done...");
            while (keepChk) begin
                #10us
                axil_cycles_gen(ReadCyc, PL_DMA, offset, data, 0);
                if(data == 32'h0000_0001) begin
                    $display($time, "=> Buffer transfer done. offset %h = %h, PASS", offset, data);
                    keepChk = 0;

                    //disable LA
                    $display($time, "=> Fpga2Soc_Write: SOC_LA");
                    offset = 0;
                    data = 32'h0000_0000;
                    axil_cycles_gen(WriteCyc, SOC_LA, offset, data, 1);

                    //Select a empty user project
                    $display($time, "=> Fpga2Soc_Write: SOC_CC");
                    offset = 0;
                    data = 32'h0000_0001;
                    axil_cycles_gen(WriteCyc, SOC_CC, offset, data, 1);

                    //log ladma_capatured
                    fd = $fopen ("../../../../../ladma_captured.log", "w");
                    for (index = 0; index < 16'h1000; index +=4) begin
                         $fdisplay(fd, "%08h", slave_agent.mem_model.backdoor_memory_read_4byte(addrm+index));
                    end
                    $fclose(fd);
                end
            end

            //ladma - workaround
            //clear transfer done
            $display($time, "=> FpgaLocal_Write: PL_DMA");
            offset = 32'h0000_0020;
            data = 32'h0000_0001;
            axil_cycles_gen(WriteCyc, PL_DMA, offset, data, 1);
            //start
            $display($time, "=> FpgaLocal_Write: PL_DMA");
            offset = 32'h0000_0000;
            data = 32'h0000_0001;
            axil_cycles_gen(WriteCyc, PL_DMA, offset, data, 1);
            //Wait buffer transfer don to be cleared
            offset = 32'h0000_0010;
            keepChk = 1'b1;
            $display($time, "=> Wating buffer transfer done to be clear...");
            while (keepChk) begin
                #10us
                axil_cycles_gen(ReadCyc, PL_DMA, offset, data, 0);
                if(data == 32'h0000_0000) begin
                    $display($time, "=> Buffer transfer done cleared. offset %h = %h, PASS", offset, data);
                    keepChk = 0;
                end
            end
            //exit clear
            $display($time, "=> FpgaLocal_Write: PL_DMA");
            offset = 32'h0000_0020;
            data = 32'h0000_0000;
            axil_cycles_gen(WriteCyc, PL_DMA, offset, data, 1);
            //start
            $display($time, "=> FpgaLocal_Write: PL_DMA");
            offset = 32'h0000_0000;
            data = 32'h0000_0001;
            axil_cycles_gen(WriteCyc, PL_DMA, offset, data, 1);
            //stop
            $display($time, "=> FpgaLocal_Write: PL_DMA");
            offset = 32'h0000_0000;
            data = 32'h0000_0000;
            axil_cycles_gen(WriteCyc, PL_DMA, offset, data, 1);
            axil_cycles_gen(ReadCyc, PL_DMA, offset, data, 1);
            if(data == 32'h0000_000b) begin     //32'h0000_000b for all tasks execution temporary
                $display($time, "=> Fpga2Soc_Write PL_DMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_DMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end
            //ladma - workaround

            ->> ladma_done;
            $display($time, "=> End CheckLaDMADone()...");
            $display($time, "=> =======================================================================");

        end
    endtask

    task FpgaLocal_CfgRead;
        begin
            $display($time, "=> Starting FpgaLocal_CfgRead() test...");
            $display($time, "=> =======================================================================");

            $display($time, "=> FpgaLocal_CfgRead testing: PL_AS");
            offset = 0;
            axil_cycles_gen(ReadCyc, PL_AS, offset, data, 1);
            #10us
            if(data == 32'h0000_0006) begin
                $display($time, "=> FpgaLocal_CfgRead PL_AS offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> FpgaLocal_CfgRead PL_AS offset %h = %h, PASS", offset, data);
                ->> error_event;
            end

            $display($time, "=> FpgaLocal_CfgRead testing: PL_IS");
            offset = 0;
            axil_cycles_gen(ReadCyc, PL_IS, offset, data, 1);
            #10us
            if(data == 32'h0000_0003) begin
                $display($time, "=> FpgaLocal_CfgRead PL_IS = %h, PASS", data);
            end else begin
                $display($time, "=> FpgaLocal_CfgRead PL_IS = %h, FAIL", data);
                ->> error_event;
            end

            $display($time, "=> FpgaLocal_CfgRead testing: PL_DMA");
            offset = 0;
            axil_cycles_gen(ReadCyc, PL_DMA, offset, data, 1);
            #10us
            if(data == 32'h0000_0004) begin
                $display($time, "=> FpgaLocal_CfgRead PL_DMA = %h, PASS", data);
            end else begin
                $display($time, "=> FpgaLocal_CfgRead PL_DMA = %h, FAIL", data);
                ->> error_event;
            end

            $display($time, "=> FpgaLocal_CfgRead testing: PL_AA");
            offset = 0;
            axil_cycles_gen(ReadCyc, PL_AA, offset, data, 1);
            #10us
            if(data == 32'h0000_0000) begin
                $display($time, "=> FpgaLocal_CfgRead PL_AA = %h, PASS", data);
            end else begin
                $display($time, "=> FpgaLocal_CfgRead PL_AA = %h, FAIL", data);
                ->> error_event;
            end

            $display($time, "=> FpgaLocal_CfgRead testing: PL_UPDMA");
            offset = 0;
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            #10us
            if(data == 32'h0000_0004) begin
                $display($time, "=> FpgaLocal_CfgRead PL_UPDMA = %h, PASS", data);
            end else begin
                $display($time, "=> FpgaLocal_CfgRead PL_UPDMA = %h, FAIL", data);
                ->> error_event;
            end

            $display($time, "=> End FpgaLocal_CfgRead() test...");
            $display($time, "=> =======================================================================");
        end
    endtask

    task fw_mb_st_t;
        begin
            wait(DUT.design_1_i.caravel_0_mprj_o[37] == 1'b0);
            $display($time, "=> FW starts MB writing, caravel_0_mprj_o[37] = %0b", DUT.design_1_i.caravel_0_mprj_o[37]);
            ->> fw_mb_st_event;
        end
    endtask

    task fw_mb_wd_t;
        begin
            wait(DUT.design_1_i.caravel_0_mprj_o[37] == 1'b1);
            $display($time, "=> FW finishs MB writing, caravel_0_mprj_o[37] = %0b", DUT.design_1_i.caravel_0_mprj_o[37]);
            ->> fw_mb_wd_event;
        end
    endtask

    task SocLocal_MbWrite;
        begin
            $display($time, "=> Starting SocLocal_MbWrite() test...");
            $display($time, "=> =======================================================================");

            $display($time, "=> FpgaLocal_Write : PL_AA");
            offset = 0;
            data = 32'h0000_0001;
            axil_cycles_gen(WriteCyc, PL_AA, offset, data, 1);
            axil_cycles_gen(ReadCyc, PL_AA, offset, data, 1);
            //#20us
            if(data == 32'h0000_00001) begin
                $display($time, "=> FpgaLocal_Write PL_AA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> FpgaLocal_Write PL_AA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> Fpga2Soc_Write : SOC_CC");
            offset = 0;
            data = 32'h0000_0005;
            axil_cycles_gen(WriteCyc, SOC_CC, offset, data, 1);

            fork
                fw_mb_st_t();
            join_none

            @(fw_mb_st_event);

            fork
                fw_mb_wd_t();
            join_none

            @(fw_mb_wd_event);

            $display($time, "=> Fpga2Soc_Read: SOC_CC");
            offset = 0;
            axil_cycles_gen(ReadCyc, SOC_CC, offset, data, 1);
            if(data == 32'h0000_0004) begin
                $display($time, "=> Fpga2Soc_Read SOC_CC = %h, PASS", data);
            end else begin
                $display($time, "=> Fpga2Soc_Read SOC_CC = %h, FAIL", data);
                ->> error_event;
            end

            $display($time, "=> FpgaLocal_Read: PL_AA_MB");
            offset = 0;
            axil_cycles_gen(ReadCyc, PL_AA_MB, offset, data, 1);
            if(data == 32'h5a5a_5a5a) begin
                $display($time, "=> FpgaLocal_Read PL_AA_MB = %h, PASS", data);
            end else begin
                $display($time, "=> FpgaLocal_Read PL_AA_MB = %h, FAIL", data);
                ->> error_event;
            end

            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> aa_mb_irq status = %0b", DUT.design_1_i.ps_axil_0.aa_mb_irq);
            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> -----------------------------------------------------------------------");
            $display($time, "=> FpgaLocal_Read: PL_AA");
            offset = 4;
            axil_cycles_gen(ReadCyc, PL_AA, offset, data, 1);
            if(data == 32'h0000_0001) begin
                $display($time, "=> FpgaLocal_Read PL_AA = %h, PASS", data);
            end else begin
                $display($time, "=> FpgaLocal_Read PL_AA = %h, FAIL", data);
                ->> error_event;
            end

            $display($time, "=> FpgaLocal_Write : PL_AA");
            offset = 4;
            data = 32'h0000_0001;
            axil_cycles_gen(WriteCyc, PL_AA, offset, data, 1);
            axil_cycles_gen(ReadCyc, PL_AA, offset, data, 1);
            //#20us
            if(data == 32'h0000_00000) begin
                $display($time, "=> FpgaLocal_Write PL_AA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> FpgaLocal_Write PL_AA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> End SocLocal_MbWrite() test...");
            $display($time, "=> =======================================================================");
        end
    endtask

    task FpgaLocal_MbWrite;
        begin
            $display($time, "=> Starting FpgaLocal_MbWrite() test...");
            $display($time, "=> =======================================================================");

            $display($time, "=> Fpga2Soc_Write: SOC_CC");
            offset = 0;
            data = 32'h0000_0006;
            axil_cycles_gen(WriteCyc, SOC_CC, offset, data, 1);
            $display($time, "=> Wating FW complete the request enabling aa irq...");
            keepChk = 1;
            offset = 32'h0000_0000;
            while (keepChk) begin
                #10us
                axil_cycles_gen(ReadCyc, SOC_CC, offset, data, 0);
                if(data == 32'h0000_0004) begin
                    $display($time, "=> FW complete the request. offset %h = %h, PASS", offset, data);
                    keepChk = 0;
                end
            end
            if (DUT.design_1_i.caravel_0_mprj_o[37] == 0) begin
                $display($time, "=> caravel_0_mprj_o[37] = %0b, PASS", DUT.design_1_i.caravel_0_mprj_o[37]);
            end else begin
                $display($time, "=> caravel_0_mprj_o[37] = %0b, FAIL", DUT.design_1_i.caravel_0_mprj_o[37]);
                ->> error_event;
            end

            $display($time, "=> FpgaLocal_Write : PL_AA_MB");
            offset = 0;
            data = 32'h5555_aaaa;
            axil_cycles_gen(WriteCyc, PL_AA_MB, offset, data, 1);
            data = 32'h0000_0000;
            axil_cycles_gen(ReadCyc, PL_AA_MB, offset, data, 1);
            if (data == 32'h5555_aaaa) begin
                $display($time, "=> FpgaLocal_Read PL_AA_MB = %h, PASS", data);
            end else begin
                $display($time, "=> FpgaLocal_Read PL_AA_MB = %h, FAIL", data);
                ->> error_event;
            end

            $display($time, "=> Fpga2Soc_Write: SOC_CC");
            offset = 0;
            data = 32'h0000_0007;
            axil_cycles_gen(WriteCyc, SOC_CC, offset, data, 1);
            $display($time, "=> Wating FW complete the request SocLocal MB data checking ...");
            keepChk = 1;
            offset = 32'h0000_0000;
            while (keepChk) begin
                #10us
                axil_cycles_gen(ReadCyc, SOC_CC, offset, data, 0);
                if(data == 32'h0000_0004) begin
                    $display($time, "=> FW complete the request. offset %h = %h, PASS", offset, data);
                    keepChk = 0;
                end
            end
            if (DUT.design_1_i.caravel_0_mprj_o[37] == 0) begin
                $display($time, "=> caravel_0_mprj_o[37] = %0b, PASS", DUT.design_1_i.caravel_0_mprj_o[37]);
            end else begin
                $display($time, "=> caravel_0_mprj_o[37] = %0b, FAIL", DUT.design_1_i.caravel_0_mprj_o[37]);
                ->> error_event;
            end

            $display($time, "=> Fpga2Soc_Write: SOC_CC");
            offset = 0;
            data = 32'h0000_0008;
            axil_cycles_gen(WriteCyc, SOC_CC, offset, data, 1);
            $display($time, "=> Wating FW complete the request clear SocLocal aa irq...");
            keepChk = 1;
            offset = 32'h0000_0000;
            while (keepChk) begin
                #10us
                axil_cycles_gen(ReadCyc, SOC_CC, offset, data, 0);
                if(data == 32'h0000_0004) begin
                    $display($time, "=> FW complete the request. offset %h = %h, PASS", offset, data);
                    keepChk = 0;
                end
            end
            if (DUT.design_1_i.caravel_0_mprj_o[37] == 0) begin
                $display($time, "=> caravel_0_mprj_o[37] = %0b, PASS", DUT.design_1_i.caravel_0_mprj_o[37]);
            end else begin
                $display($time, "=> caravel_0_mprj_o[37] = %0b, FAIL", DUT.design_1_i.caravel_0_mprj_o[37]);
                ->> error_event;
            end

            $display($time, "=> End FpgaLocal_MbWrite() test...");
            $display($time, "=> =======================================================================");
        end
    endtask

    reg [7:0] updma_img [0:230399];
    reg [31:0] updma_data;
    task SocUp2DmaPath;
        begin
            $display($time, "=> Starting SocUp2DmaPath() test...");
            $display($time, "=> =======================================================================");

            $readmemh("../../../../../in_img.hex", updma_img);

            fd = $fopen ("../../../../../updma_input.log", "w");
            for (index = 0; index < 230400; index +=4) begin
                updma_data |= updma_img[index];
                updma_data |= updma_img[index+1] << 8;
                updma_data |= updma_img[index+2] << 16;
                updma_data |= updma_img[index+3] << 24;
                slave_agent3.mem_model.backdoor_memory_write_4byte(addri+index,updma_data,4'b1111);
                updma_data = 0;
                $fdisplay(fd, "%08h", slave_agent3.mem_model.backdoor_memory_read_4byte(addri+index));
            end
            $fclose(fd);

            $readmemh("../../../../../out_img.hex", updma_img);

            fd = $fopen ("../../../../../updma_output_gold.log", "w");
            for (index = 0; index < 230400; index +=4) begin
                updma_data |= updma_img[index];
                updma_data |= updma_img[index+1] << 8;
                updma_data |= updma_img[index+2] << 16;
                updma_data |= updma_img[index+3] << 24;
                slave_agent2.mem_model.backdoor_memory_write_4byte(addro+index,updma_data,4'b1111);
                updma_data = 0;
                $fdisplay(fd, "%08h", slave_agent2.mem_model.backdoor_memory_read_4byte(addro+index));
            end
            $fclose(fd);

            //Setup userdma
            $display($time, "=> FpgaLocal_Write: PL_UPDMA, s2m exit clear...");
            offset = 32'h0000_0020;
            data = 32'h0000_0000;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'h0000_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> FpgaLocal_Write: PL_UPDMA, s2m disable to clear...");
            offset = 32'h0000_0030;
            data = 32'h0000_0000;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'h0000_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> FpgaLocal_Write: PL_UPDMA, m2s exit clear...");
            offset = 32'h0000_0078;
            data = 32'h0000_0000;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'h0000_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> FpgaLocal_Write: PL_UPDMA, m2s disable to clear...");
            offset = 32'h0000_0088;
            data = 32'h0000_0000;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'h0000_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> FpgaLocal_Write: PL_UPDMA, s2m set buffer length...");
            offset = 32'h0000_0028;
            data = 32'h0000_E100;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us230400
            if(data == 32'h0000_E100) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> FpgaLocal_Write: PL_UPDMA, s2m set buffer low...");
            offset = 32'h0000_0038;
            data = 32'h4508_0000;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'h4508_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> FpgaLocal_Write: PL_UPDMA, s2m set buffer high...");
            offset = 32'h0000_003C;
            data = 32'h0000_0000;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'h0000_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> FpgaLocal_Write: PL_UPDMA, set image width...");
            offset = 32'h0000_0054;
            data = 32'h0000_00A0;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'h0000_00A0) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> FpgaLocal_Write: PL_UPDMA, m2s set buffer low...");
            offset = 32'h0000_005C;
            data = 32'h4500_0000;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'h4500_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> FpgaLocal_Write: PL_UPDMA, m2s set buffer high...");
            offset = 32'h0000_0060;
            data = 32'h0000_0000;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'h0000_0000) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> FpgaLocal_Write: PL_UPDMA, m2s set buffer length...");
            offset = 32'h0000_0080;
            data = 32'h0000_E100;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 1);
            //#20us
            if(data == 32'h0000_E100) begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write PL_UPDMA offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            //Select EdgeDetection IP user project
            $display($time, "=> Fpga2Soc_Write: SOC_CC");
            offset = 0;
            data = 32'h0000_0000;
            axil_cycles_gen(WriteCyc, SOC_CC, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, SOC_CC, offset, data, 1);
            //#20us
            if(data == 32'h0000_0000) begin
                $display($time, "=> Fpga2Soc_Write SOC_CC offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write SOC_CC offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            //Configure EdgeDetection IP
            $display($time, "=> Fpga2Soc_Write: SOC_UP");
            offset = 4;
            data = 32'h0000_0280;
            axil_cycles_gen(ReadCyc, SOC_UP, offset, data, 1);
            //#20us
            if(data == 32'h0000_0280) begin
                $display($time, "=> Fpga2Soc_Write SOC_UP offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write SOC_UP offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> Fpga2Soc_Write: SOC_UP");
            offset = 8;
            data = 32'h0000_0168;
            axil_cycles_gen(WriteCyc, SOC_UP, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, SOC_UP, offset, data, 1);
            //#20us
            if(data == 32'h0000_0168) begin
                $display($time, "=> Fpga2Soc_Write SOC_UP offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write SOC_UP offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> Fpga2Soc_Write: SOC_CC");
            offset = 0;
            data = 32'h0000_0000;
            axil_cycles_gen(WriteCyc, SOC_CC, offset, data, 1);
            //#20us
            axil_cycles_gen(ReadCyc, SOC_CC, offset, data, 1);
            //#20us
            if(data == 32'h0000_0000) begin
                $display($time, "=> Fpga2Soc_Write SOC_CC offset %h = %h, PASS", offset, data);
            end else begin
                $display($time, "=> Fpga2Soc_Write SOC_CC offset %h = %h, FAIL", offset, data);
                ->> error_event;
            end

            $display($time, "=> FpgaLocal_Write: PL_UPDMA, set ap_start...");
            offset = 32'h0000_0000;
            data = 32'h0000_0001;
            axil_cycles_gen(WriteCyc, PL_UPDMA, offset, data, 1);

            fork
                CheckuserDMADone();
            join_none

            @(userdma_done);

            $display($time, "=> End SocUp2DmaPath() test...");
            $display($time, "=> =======================================================================");
        end
    endtask

    task CheckuserDMADone;
        begin
            $display($time, "=> Starting CheckuserDMADone()...");
            $display($time, "=> =======================================================================");
            $display($time, "=> FpgaLocal_Read: PL_UPDMA");

            keepChk = 1;
            offset = 32'h0000_0010;
            $display($time, "=> Wating buffer transfer done...");
            while (keepChk) begin
                #10us
                axil_cycles_gen(ReadCyc, PL_UPDMA, offset, data, 0);
                if(data == 32'h0000_0001) begin
                    $display($time, "=> Buffer transfer done. offset %h = %h, PASS", offset, data);
                    keepChk = 0;

                    fd = $fopen ("../../../../../updma_output.log", "w");
                    for (index = 0; index < 230400; index +=4) begin
                        $fdisplay(fd, "%08h", slave_agent2.mem_model.backdoor_memory_read_4byte(addro+index));
                    end

                    $fclose(fd);
                end
            end

            ->> userdma_done;
            $display($time, "=> End CheckuserDMADone()...");
            $display($time, "=> =======================================================================");

        end
    endtask

    task axil_cycles_gen;
        input types;
        input [15:0] target;
        input [11:0] offset;
        inout [31:0] data;
        input msg;
 
        begin
            if (types) begin
                master_agent.AXI4LITE_WRITE_BURST(base_addr + target + offset, 0, data, resp);
                if (msg)
                    $display($time, "=> AXI4LITE_WRITE_BURST %04h, value: %04h, resp: %02b", base_addr + target + offset, data, resp);
            end else begin
                master_agent.AXI4LITE_READ_BURST(base_addr + target + offset, 0, data, resp);
                if (msg)
                    $display($time, "=> AXI4LITE_READ_BURST %04h, value: %04h, resp: %02b", base_addr + target + offset, data, resp);
            end     
        end
    endtask
        
endmodule
