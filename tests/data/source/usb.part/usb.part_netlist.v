module usb (clk_48,
    data_in_valid,
    data_strobe,
    data_toggle,
    direction_in,
    rst_n,
    rx_j,
    rx_se0,
    setup,
    success,
    transaction_active,
    tx_en,
    tx_j,
    tx_se0,
    usb_rst,
    data_in,
    data_out,
    endpoint,
    handshake,
    usb_address);
 input clk_48;
 input data_in_valid;
 output data_strobe;
 input data_toggle;
 output direction_in;
 input rst_n;
 input rx_j;
 input rx_se0;
 output setup;
 output success;
 output transaction_active;
 output tx_en;
 output tx_j;
 output tx_se0;
 output usb_rst;
 input [7:0] data_in;
 output [7:0] data_out;
 output [3:0] endpoint;
 input [1:0] handshake;
 input [6:0] usb_address;

 wire partition__0002_;
 wire partition__0078_;
 wire partition__0080_;
 wire partition__0082_;
 wire partition__0085_;
 wire partition__0089_;
 wire partition__0108_;
 wire partition__0111_;
 wire partition__0112_;
 wire partition__0113_;
 wire partition__0114_;
 wire partition__0116_;
 wire partition__0119_;
 wire partition__0120_;
 wire partition__0125_;
 wire partition__0137_;
 wire partition__0138_;
 wire partition__0154_;
 wire partition__0169_;
 wire partition__0172_;
 wire partition__0173_;
 wire partition__0174_;
 wire partition__0176_;
 wire partition__0195_;
 wire partition__0220_;
 wire partition__0256_;
 wire partition__0263_;
 wire partition__0268_;
 wire partition__0269_;
 wire partition__0270_;
 wire partition__0273_;
 wire partition__0277_;
 wire partition__0281_;
 wire partition__0282_;
 wire partition__0283_;
 wire partition__0309_;
 wire partition__0319_;
 wire partition__0320_;
 wire partition__0331_;
 wire partition__0333_;
 wire partition__0335_;
 wire partition__0337_;
 wire partition__0339_;
 wire partition__0341_;
 wire partition__0348_;
 wire partition__0349_;
 wire partition__0352_;
 wire partition__0354_;
 wire partition__0355_;
 wire partition__0356_;
 wire partition__0358_;
 wire partition__0359_;
 wire partition__0361_;
 wire partition__0363_;
 wire partition__0364_;
 wire partition__0365_;
 wire partition__0368_;
 wire partition__0375_;
 wire partition__0385_;
 wire partition__0386_;
 wire partition__0388_;
 wire partition__0390_;
 wire partition__0392_;
 wire partition__0393_;
 wire partition__0412_;
 wire partition__0415_;
 wire partition__0416_;
 wire partition__0417_;
 wire partition__0423_;
 wire partition__0424_;
 wire partition__0426_;
 wire partition__0430_;
 wire partition__0433_;
 wire partition__0441_;
 wire partition__0457_;
 wire partition__0465_;
 wire partition__0467_;
 wire partition__0479_;
 wire partition__0490_;
 wire partition__0492_;
 wire partition__0525_;
 wire partition__0574_;
 wire partition__0581_;
 wire partition__0596_;
 wire partition__0604_;
 wire partition__0619_;
 wire partition__0622_;
 wire partition__0624_;
 wire partition__0640_;
 wire partition__0646_;
 wire partition__0647_;
 wire partition__0652_;
 wire partition__0657_;
 wire partition__0663_;
 wire partition__0670_;
 wire partition__0680_;
 wire partition__0681_;
 wire partition__0711_;
 wire partition__0712_;
 wire \partition_recv.destuffer.data[1] ;
 wire \partition_recv.destuffer.data[3] ;
 wire \partition_recv.destuffer.data[4] ;
 wire \partition_recv.nrzi_decoder.prev_i ;
 wire \partition_recv.reset_detect.cntr[11] ;
 wire \partition_recv.reset_detect.cntr[12] ;
 wire \partition_recv.reset_detect.cntr[1] ;
 wire \partition_recv.reset_detect.cntr[3] ;
 wire \partition_recv.reset_detect.cntr[5] ;
 wire \partition_recv.reset_detect.cntr[8] ;
 wire \partition_recv.sm.clear_shift ;
 wire \partition_recv.sm.crc16.next[14] ;
 wire \partition_recv.sm.crc16.next[1] ;
 wire \partition_recv.sm.crc16.next[3] ;
 wire \partition_recv.sm.crc16.next[5] ;
 wire \partition_recv.sm.crc16.next[8] ;
 wire \partition_recv.sm.crc16.next[9] ;
 wire \partition_recv.sm.crc16.r[1] ;
 wire \partition_recv.sm.crc16.rst_n ;
 wire \partition_recv.sm.crc5.next[3] ;
 wire \partition_recv.sm.crc5.r[1] ;
 wire \partition_recv.sm.shift_reg[7] ;
 wire \partition_recv.sm.state[1] ;
 wire \partition_recv.sm.state[2] ;
 wire \partition_recv.sm.xcrc16_ok ;
 wire \partition_recv.sm.xcrc5_ok ;
 wire \partition_recv.sm.xdata[3] ;
 wire \partition_recv.sm.xdatastrobe ;
 wire \partition_recv.sm.xpacket ;
 wire \partition_recv.sync_detect.data[1] ;
 wire \partition_recv.sync_detect.data[4] ;
 wire \partition_recv.sync_detect.data[5] ;
 wire \partition_recv.sync_detect.data[6] ;
 wire \partition_recv_queue_1[3] ;
 wire \partition_recv_queue_1[7] ;
 wire partition_recv_queue_1_valid;
 wire \partition_tx.bit_stuff_counter[0] ;
 wire \partition_tx.crc_out ;
 wire \partition_tx.state[2] ;
 wire \partition_tx.tx_clock[0] ;
 wire \partition_tx.tx_clock[1] ;
 wire \partition_tx.tx_crc.next[13] ;
 wire \partition_tx.tx_crc.rst_n ;

 usb_partition0 usb_partition0_inst (.clk_48(clk_48),
    .rst_n(rst_n),
    .\partition_tx.bit_stuff_counter[0] (\partition_tx.bit_stuff_counter[0] ),
    .partition__0256_(partition__0256_),
    .partition__0263_(partition__0263_),
    .partition__0268_(partition__0268_),
    .partition__0269_(partition__0269_),
    .partition__0320_(partition__0320_),
    .partition__0423_(partition__0423_),
    .partition__0424_(partition__0424_),
    .partition__0430_(partition__0430_),
    .partition__0467_(partition__0467_),
    .\partition_tx.tx_clock[1] (\partition_tx.tx_clock[1] ),
    .partition__0277_(partition__0277_),
    .\partition_tx.tx_crc.next[13] (\partition_tx.tx_crc.next[13] ),
    .partition__0492_(partition__0492_),
    .partition__0490_(partition__0490_),
    .\partition_tx.crc_out (\partition_tx.crc_out ),
    .partition__0319_(partition__0319_),
    .partition__0220_(partition__0220_),
    .\partition_tx.tx_crc.rst_n (\partition_tx.tx_crc.rst_n ),
    .partition__0154_(partition__0154_),
    .\partition_tx.state[2] (\partition_tx.state[2] ),
    .\partition_tx.tx_clock[0] (\partition_tx.tx_clock[0] ));
 usb_partition1 usb_partition1_inst (.clk_48(clk_48),
    .rst_n(rst_n),
    .success(success),
    .\partition_recv.destuffer.data[1] (\partition_recv.destuffer.data[1] ),
    .partition__0337_(partition__0337_),
    .partition__0426_(partition__0426_),
    .\partition_recv.destuffer.data[3] (\partition_recv.destuffer.data[3] ),
    .\partition_recv.destuffer.data[4] (\partition_recv.destuffer.data[4] ),
    .partition__0195_(partition__0195_),
    .partition__0712_(partition__0712_),
    .partition__0108_(partition__0108_),
    .\partition_recv.sm.xdatastrobe (\partition_recv.sm.xdatastrobe ),
    .partition__0112_(partition__0112_),
    .\partition_recv.sm.crc16.rst_n (\partition_recv.sm.crc16.rst_n ),
    .\partition_recv.sm.crc16.next[1] (\partition_recv.sm.crc16.next[1] ),
    .partition__0113_(partition__0113_),
    .\partition_recv.sm.crc16.r[1] (\partition_recv.sm.crc16.r[1] ),
    .partition__0114_(partition__0114_),
    .\partition_recv.sm.crc16.next[3] (\partition_recv.sm.crc16.next[3] ),
    .partition__0116_(partition__0116_),
    .\partition_recv.sm.crc16.next[5] (\partition_recv.sm.crc16.next[5] ),
    .partition__0119_(partition__0119_),
    .\partition_recv.sm.crc16.next[8] (\partition_recv.sm.crc16.next[8] ),
    .partition__0120_(partition__0120_),
    .\partition_recv.sm.crc16.next[9] (\partition_recv.sm.crc16.next[9] ),
    .partition__0125_(partition__0125_),
    .\partition_recv.sm.crc16.next[14] (\partition_recv.sm.crc16.next[14] ),
    .partition__0137_(partition__0137_),
    .\partition_recv.sm.crc5.r[1] (\partition_recv.sm.crc5.r[1] ),
    .partition__0138_(partition__0138_),
    .\partition_recv.sm.crc5.next[3] (\partition_recv.sm.crc5.next[3] ));
 usb_partition2 usb_partition2_inst (.clk_48(clk_48),
    .direction_in(direction_in),
    .rst_n(rst_n),
    .setup(setup),
    .partition__0268_(partition__0268_),
    .partition__0273_(partition__0273_),
    .partition__0283_(partition__0283_),
    .\partition_recv_queue_1[3] (\partition_recv_queue_1[3] ),
    .partition_recv_queue_1_valid(partition_recv_queue_1_valid),
    .\partition_recv.sm.xcrc5_ok (\partition_recv.sm.xcrc5_ok ),
    .partition__0309_(partition__0309_),
    .\partition_recv.sm.xcrc16_ok (\partition_recv.sm.xcrc16_ok ),
    .partition__0333_(partition__0333_),
    .\partition_recv.sm.clear_shift (\partition_recv.sm.clear_shift ),
    .partition__0365_(partition__0365_),
    .partition__0368_(partition__0368_),
    .partition__0375_(partition__0375_),
    .partition__0385_(partition__0385_),
    .partition__0390_(partition__0390_),
    .partition__0388_(partition__0388_),
    .partition__0393_(partition__0393_),
    .partition__0358_(partition__0358_),
    .partition__0412_(partition__0412_),
    .partition__0415_(partition__0415_),
    .partition__0416_(partition__0416_),
    .partition__0417_(partition__0417_),
    .partition__0441_(partition__0441_),
    .partition__0465_(partition__0465_),
    .partition__0479_(partition__0479_),
    .partition__0282_(partition__0282_),
    .\partition_recv_queue_1[7] (\partition_recv_queue_1[7] ),
    .\partition_recv.sm.xpacket (\partition_recv.sm.xpacket ),
    .partition__0525_(partition__0525_),
    .partition__0574_(partition__0574_),
    .partition__0581_(partition__0581_),
    .partition__0640_(partition__0640_),
    .partition__0386_(partition__0386_),
    .partition__0646_(partition__0646_),
    .partition__0647_(partition__0647_),
    .partition__0657_(partition__0657_),
    .partition__0176_(partition__0176_),
    .data_out({data_out[7],
    data_out[6],
    data_out[5],
    data_out[4],
    data_out[3],
    data_out[2],
    data_out[1],
    data_out[0]}),
    .endpoint({endpoint[3],
    endpoint[2],
    endpoint[1],
    endpoint[0]}),
    .usb_address({usb_address[6],
    usb_address[5],
    usb_address[4],
    usb_address[3],
    usb_address[2],
    usb_address[1],
    usb_address[0]}));
 usb_partition3 usb_partition3_inst (.clk_48(clk_48),
    .rst_n(rst_n),
    .usb_rst(usb_rst),
    .partition__0348_(partition__0348_),
    .partition__0349_(partition__0349_),
    .\partition_recv.reset_detect.cntr[1] (\partition_recv.reset_detect.cntr[1] ),
    .\partition_recv.reset_detect.cntr[3] (\partition_recv.reset_detect.cntr[3] ),
    .\partition_recv.reset_detect.cntr[5] (\partition_recv.reset_detect.cntr[5] ),
    .partition__0433_(partition__0433_),
    .\partition_recv.reset_detect.cntr[11] (\partition_recv.reset_detect.cntr[11] ),
    .\partition_recv.reset_detect.cntr[12] (\partition_recv.reset_detect.cntr[12] ),
    .partition__0596_(partition__0596_),
    .partition__0078_(partition__0078_),
    .partition__0604_(partition__0604_),
    .partition__0080_(partition__0080_),
    .partition__0082_(partition__0082_),
    .\partition_recv.reset_detect.cntr[8] (\partition_recv.reset_detect.cntr[8] ),
    .partition__0354_(partition__0354_),
    .partition__0085_(partition__0085_),
    .partition__0619_(partition__0619_),
    .partition__0622_(partition__0622_),
    .partition__0624_(partition__0624_),
    .partition__0089_(partition__0089_),
    .partition__0363_(partition__0363_),
    .partition__0364_(partition__0364_),
    .partition__0652_(partition__0652_),
    .\partition_recv.sm.xdata[3] (\partition_recv.sm.xdata[3] ),
    .partition__0169_(partition__0169_),
    .\partition_recv.sync_detect.data[1] (\partition_recv.sync_detect.data[1] ),
    .partition__0172_(partition__0172_),
    .\partition_recv.sync_detect.data[4] (\partition_recv.sync_detect.data[4] ),
    .partition__0173_(partition__0173_),
    .\partition_recv.sync_detect.data[5] (\partition_recv.sync_detect.data[5] ),
    .partition__0174_(partition__0174_),
    .\partition_recv.sync_detect.data[6] (\partition_recv.sync_detect.data[6] ));
 usb_partition4 usb_partition4_inst (.clk_48(clk_48),
    .data_in_valid(data_in_valid),
    .data_toggle(data_toggle),
    .rst_n(rst_n),
    .transaction_active(transaction_active),
    .tx_en(tx_en),
    .tx_j(tx_j),
    .tx_se0(tx_se0),
    .\partition_tx.state[2] (\partition_tx.state[2] ),
    .\partition_tx.crc_out (\partition_tx.crc_out ),
    .partition__0256_(partition__0256_),
    .\partition_tx.tx_clock[0] (\partition_tx.tx_clock[0] ),
    .partition__0263_(partition__0263_),
    .\partition_recv.sm.xpacket (\partition_recv.sm.xpacket ),
    .partition__0270_(partition__0270_),
    .partition__0273_(partition__0273_),
    .\partition_tx.tx_clock[1] (\partition_tx.tx_clock[1] ),
    .partition__0277_(partition__0277_),
    .partition__0269_(partition__0269_),
    .partition__0282_(partition__0282_),
    .\partition_tx.bit_stuff_counter[0] (\partition_tx.bit_stuff_counter[0] ),
    .partition__0319_(partition__0319_),
    .partition__0320_(partition__0320_),
    .partition__0309_(partition__0309_),
    .partition__0331_(partition__0331_),
    .partition__0333_(partition__0333_),
    .\partition_recv.sm.state[1] (\partition_recv.sm.state[1] ),
    .partition__0335_(partition__0335_),
    .partition__0352_(partition__0352_),
    .partition__0354_(partition__0354_),
    .partition__0355_(partition__0355_),
    .partition__0356_(partition__0356_),
    .partition__0341_(partition__0341_),
    .partition__0349_(partition__0349_),
    .partition__0348_(partition__0348_),
    .partition__0358_(partition__0358_),
    .partition__0392_(partition__0392_),
    .partition__0393_(partition__0393_),
    .partition_recv_queue_1_valid(partition_recv_queue_1_valid),
    .partition__0283_(partition__0283_),
    .partition__0412_(partition__0412_),
    .partition__0417_(partition__0417_),
    .partition__0416_(partition__0416_),
    .partition__0424_(partition__0424_),
    .partition__0426_(partition__0426_),
    .\partition_recv.sm.xdatastrobe (\partition_recv.sm.xdatastrobe ),
    .partition__0430_(partition__0430_),
    .partition__0441_(partition__0441_),
    .partition__0361_(partition__0361_),
    .\partition_recv.sm.shift_reg[7] (\partition_recv.sm.shift_reg[7] ),
    .partition__0002_(partition__0002_),
    .\partition_tx.tx_crc.rst_n (\partition_tx.tx_crc.rst_n ),
    .partition__0465_(partition__0465_),
    .partition__0467_(partition__0467_),
    .partition__0479_(partition__0479_),
    .partition__0712_(partition__0712_),
    .partition__0711_(partition__0711_),
    .partition__0490_(partition__0490_),
    .partition__0492_(partition__0492_),
    .partition__0423_(partition__0423_),
    .partition__0525_(partition__0525_),
    .partition__0681_(partition__0681_),
    .partition__0111_(partition__0111_),
    .partition__0640_(partition__0640_),
    .partition__0154_(partition__0154_),
    .partition__0220_(partition__0220_),
    .data_in({data_in[7],
    data_in[6],
    data_in[5],
    data_in[4],
    data_in[3],
    data_in[2],
    data_in[1],
    data_in[0]}),
    .handshake({handshake[1],
    handshake[0]}));
 usb_partition5 usb_partition5_inst (.clk_48(clk_48),
    .rst_n(rst_n),
    .rx_j(rx_j),
    .rx_se0(rx_se0),
    .partition__0281_(partition__0281_),
    .partition__0270_(partition__0270_),
    .partition__0331_(partition__0331_),
    .\partition_recv.sm.state[2] (\partition_recv.sm.state[2] ),
    .partition__0335_(partition__0335_),
    .\partition_recv.destuffer.data[3] (\partition_recv.destuffer.data[3] ),
    .\partition_recv.destuffer.data[4] (\partition_recv.destuffer.data[4] ),
    .partition__0337_(partition__0337_),
    .partition__0339_(partition__0339_),
    .partition__0341_(partition__0341_),
    .partition__0348_(partition__0348_),
    .partition__0354_(partition__0354_),
    .partition__0355_(partition__0355_),
    .partition__0359_(partition__0359_),
    .partition__0361_(partition__0361_),
    .partition__0363_(partition__0363_),
    .partition__0364_(partition__0364_),
    .partition__0365_(partition__0365_),
    .\partition_recv.sm.shift_reg[7] (\partition_recv.sm.shift_reg[7] ),
    .\partition_recv.nrzi_decoder.prev_i (\partition_recv.nrzi_decoder.prev_i ),
    .partition__0368_(partition__0368_),
    .partition__0375_(partition__0375_),
    .partition__0385_(partition__0385_),
    .partition__0386_(partition__0386_),
    .partition__0358_(partition__0358_),
    .\partition_recv.sm.state[1] (\partition_recv.sm.state[1] ),
    .partition__0388_(partition__0388_),
    .partition__0390_(partition__0390_),
    .partition__0392_(partition__0392_),
    .\partition_recv.sm.xpacket (\partition_recv.sm.xpacket ),
    .\partition_recv.sm.xdatastrobe (\partition_recv.sm.xdatastrobe ),
    .partition__0415_(partition__0415_),
    .partition__0426_(partition__0426_),
    .\partition_recv.sm.crc16.rst_n (\partition_recv.sm.crc16.rst_n ),
    .partition__0574_(partition__0574_),
    .\partition_recv.sm.xdata[3] (\partition_recv.sm.xdata[3] ),
    .partition__0581_(partition__0581_),
    .\partition_recv_queue_1[3] (\partition_recv_queue_1[3] ),
    .\partition_recv_queue_1[7] (\partition_recv_queue_1[7] ),
    .partition__0646_(partition__0646_),
    .partition__0647_(partition__0647_),
    .partition__0652_(partition__0652_),
    .partition__0657_(partition__0657_),
    .partition__0108_(partition__0108_),
    .partition__0663_(partition__0663_),
    .\partition_recv.sm.crc5.r[1] (\partition_recv.sm.crc5.r[1] ),
    .\partition_recv.sm.crc5.next[3] (\partition_recv.sm.crc5.next[3] ),
    .partition__0670_(partition__0670_),
    .\partition_recv.sm.crc16.next[14] (\partition_recv.sm.crc16.next[14] ),
    .\partition_recv.sm.crc16.next[9] (\partition_recv.sm.crc16.next[9] ),
    .\partition_recv.sm.crc16.next[8] (\partition_recv.sm.crc16.next[8] ),
    .\partition_recv.sm.crc16.next[5] (\partition_recv.sm.crc16.next[5] ),
    .\partition_recv.sm.crc16.r[1] (\partition_recv.sm.crc16.r[1] ),
    .\partition_recv.sm.crc16.next[1] (\partition_recv.sm.crc16.next[1] ),
    .\partition_recv.sm.crc16.next[3] (\partition_recv.sm.crc16.next[3] ),
    .partition__0680_(partition__0680_),
    .partition__0681_(partition__0681_),
    .partition__0112_(partition__0112_),
    .partition__0113_(partition__0113_),
    .partition__0114_(partition__0114_),
    .partition__0116_(partition__0116_),
    .partition__0119_(partition__0119_),
    .partition__0120_(partition__0120_),
    .partition__0125_(partition__0125_),
    .partition__0457_(partition__0457_),
    .partition__0176_(partition__0176_),
    .partition__0137_(partition__0137_),
    .partition__0138_(partition__0138_),
    .\partition_recv.destuffer.data[1] (\partition_recv.destuffer.data[1] ),
    .partition__0195_(partition__0195_));
 usb_partition6 usb_partition6_inst (.clk_48(clk_48),
    .rst_n(rst_n),
    .partition__0492_(partition__0492_),
    .partition__0490_(partition__0490_),
    .\partition_tx.tx_crc.next[13] (\partition_tx.tx_crc.next[13] ),
    .\partition_recv.sm.xcrc5_ok (\partition_recv.sm.xcrc5_ok ),
    .partition__0663_(partition__0663_),
    .partition__0670_(partition__0670_),
    .\partition_recv.sm.xcrc16_ok (\partition_recv.sm.xcrc16_ok ),
    .partition__0680_(partition__0680_),
    .\partition_tx.tx_crc.rst_n (\partition_tx.tx_crc.rst_n ),
    .partition__0111_(partition__0111_),
    .\partition_recv.sm.clear_shift (\partition_recv.sm.clear_shift ));
 usb_partition7 usb_partition7_inst (.clk_48(clk_48),
    .data_strobe(data_strobe),
    .rst_n(rst_n),
    .usb_rst(usb_rst),
    .partition__0281_(partition__0281_),
    .partition__0339_(partition__0339_),
    .\partition_recv.sync_detect.data[4] (\partition_recv.sync_detect.data[4] ),
    .\partition_recv.sync_detect.data[6] (\partition_recv.sync_detect.data[6] ),
    .\partition_recv.sync_detect.data[5] (\partition_recv.sync_detect.data[5] ),
    .\partition_recv.sync_detect.data[1] (\partition_recv.sync_detect.data[1] ),
    .partition__0352_(partition__0352_),
    .partition__0356_(partition__0356_),
    .\partition_recv.reset_detect.cntr[8] (\partition_recv.reset_detect.cntr[8] ),
    .partition__0433_(partition__0433_),
    .partition__0359_(partition__0359_),
    .partition__0457_(partition__0457_),
    .partition__0349_(partition__0349_),
    .partition__0604_(partition__0604_),
    .partition__0619_(partition__0619_),
    .partition__0622_(partition__0622_),
    .partition__0596_(partition__0596_),
    .\partition_recv.reset_detect.cntr[11] (\partition_recv.reset_detect.cntr[11] ),
    .partition__0624_(partition__0624_),
    .\partition_recv.nrzi_decoder.prev_i (\partition_recv.nrzi_decoder.prev_i ),
    .partition__0195_(partition__0195_),
    .partition__0169_(partition__0169_),
    .partition__0172_(partition__0172_),
    .partition__0173_(partition__0173_),
    .partition__0174_(partition__0174_),
    .partition__0711_(partition__0711_),
    .partition__0002_(partition__0002_),
    .\partition_recv.sm.state[2] (\partition_recv.sm.state[2] ),
    .partition__0078_(partition__0078_),
    .\partition_recv.reset_detect.cntr[1] (\partition_recv.reset_detect.cntr[1] ),
    .partition__0080_(partition__0080_),
    .\partition_recv.reset_detect.cntr[3] (\partition_recv.reset_detect.cntr[3] ),
    .partition__0082_(partition__0082_),
    .\partition_recv.reset_detect.cntr[5] (\partition_recv.reset_detect.cntr[5] ),
    .partition__0085_(partition__0085_),
    .partition__0089_(partition__0089_),
    .\partition_recv.reset_detect.cntr[12] (\partition_recv.reset_detect.cntr[12] ));
endmodule
module usb_partition0 (clk_48,
    rst_n,
    \partition_tx.bit_stuff_counter[0] ,
    partition__0256_,
    partition__0263_,
    partition__0268_,
    partition__0269_,
    partition__0320_,
    partition__0423_,
    partition__0424_,
    partition__0430_,
    partition__0467_,
    \partition_tx.tx_clock[1] ,
    partition__0277_,
    \partition_tx.tx_crc.next[13] ,
    partition__0492_,
    partition__0490_,
    \partition_tx.crc_out ,
    partition__0319_,
    partition__0220_,
    \partition_tx.tx_crc.rst_n ,
    partition__0154_,
    \partition_tx.state[2] ,
    \partition_tx.tx_clock[0] );
 input clk_48;
 input rst_n;
 output \partition_tx.bit_stuff_counter[0] ;
 output partition__0256_;
 input partition__0263_;
 input partition__0268_;
 output partition__0269_;
 output partition__0320_;
 output partition__0423_;
 output partition__0424_;
 output partition__0430_;
 input partition__0467_;
 output \partition_tx.tx_clock[1] ;
 input partition__0277_;
 input \partition_tx.tx_crc.next[13] ;
 input partition__0492_;
 input partition__0490_;
 output \partition_tx.crc_out ;
 input partition__0319_;
 input partition__0220_;
 input \partition_tx.tx_crc.rst_n ;
 input partition__0154_;
 output \partition_tx.state[2] ;
 output \partition_tx.tx_clock[0] ;

 wire _0014_;
 wire _0015_;
 wire _0031_;
 wire _0032_;
 wire _0033_;
 wire _0155_;
 wire _0156_;
 wire _0157_;
 wire _0221_;
 wire _0222_;
 wire _0223_;
 wire _0224_;
 wire _0225_;
 wire _0226_;
 wire _0227_;
 wire _0228_;
 wire _0264_;
 wire _0265_;
 wire _0266_;
 wire _0267_;
 wire _0419_;
 wire _0420_;
 wire _0421_;
 wire _0422_;
 wire _0468_;
 wire _0469_;
 wire _0470_;
 wire _0471_;
 wire _0472_;
 wire _0473_;
 wire _0474_;
 wire _0475_;
 wire _0476_;
 wire _0477_;
 wire _0478_;
 wire _0484_;
 wire _0509_;
 wire _0510_;
 wire _0511_;
 wire _0512_;
 wire _0704_;
 wire _0705_;
 wire _0706_;
 wire _0707_;
 wire _0708_;
 wire _0709_;
 wire _0710_;
 wire \token_timeout[0] ;
 wire \token_timeout[1] ;
 wire \token_timeout[2] ;
 wire \token_timeout[3] ;
 wire \token_timeout[4] ;
 wire \token_timeout[5] ;
 wire \token_timeout[6] ;
 wire \tx.bit_stuff_counter[1] ;
 wire \tx.bit_stuff_counter[2] ;
 wire \tx.tx_crc.next[14] ;
 wire \tx.tx_crc.r[14] ;

 sky130_fd_sc_hd__nand3b_2 _0716_ (.A_N(\partition_tx.bit_stuff_counter[0] ),
    .B(\tx.bit_stuff_counter[1] ),
    .C(\tx.bit_stuff_counter[2] ),
    .Y(partition__0256_));
 sky130_fd_sc_hd__inv_2 _0726_ (.A(partition__0263_),
    .Y(_0014_));
 sky130_fd_sc_hd__nor2_2 _0727_ (.A(\token_timeout[0] ),
    .B(\token_timeout[1] ),
    .Y(_0264_));
 sky130_fd_sc_hd__nor2_2 _0728_ (.A(\token_timeout[3] ),
    .B(\token_timeout[2] ),
    .Y(_0265_));
 sky130_fd_sc_hd__inv_2 _0729_ (.A(\token_timeout[4] ),
    .Y(_0266_));
 sky130_fd_sc_hd__nand3_2 _0730_ (.A(_0264_),
    .B(_0265_),
    .C(_0266_),
    .Y(_0267_));
 sky130_fd_sc_hd__o31a_2 _0732_ (.A1(\token_timeout[6] ),
    .A2(\token_timeout[5] ),
    .A3(_0267_),
    .B1(partition__0268_),
    .X(partition__0269_));
 sky130_fd_sc_hd__nand2_2 _0785_ (.A(\tx.bit_stuff_counter[1] ),
    .B(\tx.bit_stuff_counter[2] ),
    .Y(partition__0320_));
 sky130_fd_sc_hd__nor3_2 _0890_ (.A(\token_timeout[0] ),
    .B(\token_timeout[1] ),
    .C(\token_timeout[2] ),
    .Y(_0419_));
 sky130_fd_sc_hd__nor2_2 _0891_ (.A(\token_timeout[3] ),
    .B(\token_timeout[4] ),
    .Y(_0420_));
 sky130_fd_sc_hd__inv_2 _0892_ (.A(\token_timeout[6] ),
    .Y(_0421_));
 sky130_fd_sc_hd__inv_2 _0893_ (.A(\token_timeout[5] ),
    .Y(_0422_));
 sky130_fd_sc_hd__nand4_2 _0894_ (.A(_0419_),
    .B(_0420_),
    .C(_0421_),
    .D(_0422_),
    .Y(partition__0423_));
 sky130_fd_sc_hd__nand2_2 _0895_ (.A(partition__0423_),
    .B(partition__0268_),
    .Y(partition__0424_));
 sky130_fd_sc_hd__and4_2 _0903_ (.A(_0419_),
    .B(_0420_),
    .C(_0421_),
    .D(_0422_),
    .X(partition__0430_));
 sky130_fd_sc_hd__buf_1 _0950_ (.A(partition__0467_),
    .X(_0468_));
 sky130_fd_sc_hd__o21ai_2 _0951_ (.A1(\token_timeout[0] ),
    .A2(partition__0430_),
    .B1(_0468_),
    .Y(_0704_));
 sky130_fd_sc_hd__or3_2 _0952_ (.A(\token_timeout[0] ),
    .B(\token_timeout[1] ),
    .C(partition__0430_),
    .X(_0469_));
 sky130_fd_sc_hd__nand2_2 _0953_ (.A(\token_timeout[0] ),
    .B(\token_timeout[1] ),
    .Y(_0470_));
 sky130_fd_sc_hd__nand3_2 _0954_ (.A(_0468_),
    .B(_0469_),
    .C(_0470_),
    .Y(_0705_));
 sky130_fd_sc_hd__nand2_2 _0955_ (.A(_0469_),
    .B(\token_timeout[2] ),
    .Y(_0471_));
 sky130_fd_sc_hd__o211ai_2 _0956_ (.A1(\token_timeout[2] ),
    .A2(_0469_),
    .B1(_0471_),
    .C1(_0468_),
    .Y(_0706_));
 sky130_fd_sc_hd__o31a_2 _0957_ (.A1(\token_timeout[0] ),
    .A2(\token_timeout[1] ),
    .A3(\token_timeout[2] ),
    .B1(\token_timeout[3] ),
    .X(_0472_));
 sky130_fd_sc_hd__a21oi_2 _0958_ (.A1(_0264_),
    .A2(_0265_),
    .B1(_0472_),
    .Y(_0473_));
 sky130_fd_sc_hd__o21ai_2 _0959_ (.A1(partition__0430_),
    .A2(_0473_),
    .B1(_0468_),
    .Y(_0707_));
 sky130_fd_sc_hd__nor2_2 _0960_ (.A(\token_timeout[6] ),
    .B(\token_timeout[5] ),
    .Y(_0474_));
 sky130_fd_sc_hd__a21o_2 _0961_ (.A1(_0264_),
    .A2(_0265_),
    .B1(_0266_),
    .X(_0475_));
 sky130_fd_sc_hd__o211ai_2 _0962_ (.A1(_0267_),
    .A2(_0474_),
    .B1(_0475_),
    .C1(partition__0467_),
    .Y(_0708_));
 sky130_fd_sc_hd__and4_2 _0963_ (.A(\token_timeout[6] ),
    .B(_0419_),
    .C(_0420_),
    .D(_0422_),
    .X(_0476_));
 sky130_fd_sc_hd__a21oi_2 _0964_ (.A1(\token_timeout[5] ),
    .A2(_0267_),
    .B1(_0476_),
    .Y(_0477_));
 sky130_fd_sc_hd__nand2_2 _0965_ (.A(_0468_),
    .B(_0477_),
    .Y(_0709_));
 sky130_fd_sc_hd__a31o_2 _0966_ (.A1(_0419_),
    .A2(_0420_),
    .A3(_0422_),
    .B1(_0421_),
    .X(_0478_));
 sky130_fd_sc_hd__nand2_2 _0967_ (.A(_0468_),
    .B(_0478_),
    .Y(_0710_));
 sky130_fd_sc_hd__and2_2 _0975_ (.A(partition__0263_),
    .B(\partition_tx.tx_clock[1] ),
    .X(_0484_));
 sky130_fd_sc_hd__nor2_2 _0976_ (.A(partition__0277_),
    .B(_0484_),
    .Y(_0015_));
 sky130_fd_sc_hd__mux2_2 _1016_ (.A0(\tx.tx_crc.next[14] ),
    .A1(\partition_tx.tx_crc.next[13] ),
    .S(partition__0492_),
    .X(_0509_));
 sky130_fd_sc_hd__buf_1 _1017_ (.A(_0509_),
    .X(_0031_));
 sky130_fd_sc_hd__mux2_2 _1018_ (.A0(\tx.tx_crc.r[14] ),
    .A1(\tx.tx_crc.next[14] ),
    .S(partition__0492_),
    .X(_0510_));
 sky130_fd_sc_hd__buf_1 _1019_ (.A(_0510_),
    .X(_0032_));
 sky130_fd_sc_hd__xor2_2 _1020_ (.A(\tx.tx_crc.r[14] ),
    .B(partition__0490_),
    .X(_0511_));
 sky130_fd_sc_hd__mux2_2 _1021_ (.A0(\partition_tx.crc_out ),
    .A1(_0511_),
    .S(partition__0492_),
    .X(_0512_));
 sky130_fd_sc_hd__buf_1 _1022_ (.A(_0512_),
    .X(_0033_));
 sky130_fd_sc_hd__or2_2 _1380_ (.A(partition__0319_),
    .B(partition__0277_),
    .X(_0221_));
 sky130_fd_sc_hd__or3b_2 _1381_ (.A(partition__0263_),
    .B(\partition_tx.tx_clock[1] ),
    .C_N(partition__0319_),
    .X(_0222_));
 sky130_fd_sc_hd__and3_2 _1382_ (.A(partition__0220_),
    .B(_0221_),
    .C(_0222_),
    .X(_0223_));
 sky130_fd_sc_hd__buf_1 _1383_ (.A(_0223_),
    .X(_0155_));
 sky130_fd_sc_hd__xnor2_2 _1384_ (.A(\tx.bit_stuff_counter[1] ),
    .B(_0222_),
    .Y(_0224_));
 sky130_fd_sc_hd__and2_2 _1385_ (.A(partition__0220_),
    .B(_0224_),
    .X(_0225_));
 sky130_fd_sc_hd__buf_1 _1386_ (.A(_0225_),
    .X(_0156_));
 sky130_fd_sc_hd__a31o_2 _1387_ (.A1(partition__0319_),
    .A2(\tx.bit_stuff_counter[1] ),
    .A3(partition__0277_),
    .B1(\tx.bit_stuff_counter[2] ),
    .X(_0226_));
 sky130_fd_sc_hd__nand4_2 _1388_ (.A(partition__0319_),
    .B(\tx.bit_stuff_counter[1] ),
    .C(\tx.bit_stuff_counter[2] ),
    .D(partition__0277_),
    .Y(_0227_));
 sky130_fd_sc_hd__and3_2 _1389_ (.A(partition__0220_),
    .B(_0226_),
    .C(_0227_),
    .X(_0228_));
 sky130_fd_sc_hd__buf_1 _1390_ (.A(_0228_),
    .X(_0157_));
 sky130_fd_sc_hd__dfstp_2 _1456_ (.CLK(clk_48),
    .D(_0031_),
    .SET_B(\partition_tx.tx_crc.rst_n ),
    .Q(\tx.tx_crc.next[14] ));
 sky130_fd_sc_hd__dfstp_2 _1457_ (.CLK(clk_48),
    .D(_0032_),
    .SET_B(\partition_tx.tx_crc.rst_n ),
    .Q(\tx.tx_crc.r[14] ));
 sky130_fd_sc_hd__dfstp_2 _1458_ (.CLK(clk_48),
    .D(_0033_),
    .SET_B(\partition_tx.tx_crc.rst_n ),
    .Q(\partition_tx.crc_out ));
 sky130_fd_sc_hd__dfrtp_2 _1476_ (.CLK(clk_48),
    .D(_0704_),
    .RESET_B(rst_n),
    .Q(\token_timeout[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1477_ (.CLK(clk_48),
    .D(_0705_),
    .RESET_B(rst_n),
    .Q(\token_timeout[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1478_ (.CLK(clk_48),
    .D(_0706_),
    .RESET_B(rst_n),
    .Q(\token_timeout[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1479_ (.CLK(clk_48),
    .D(_0707_),
    .RESET_B(rst_n),
    .Q(\token_timeout[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1480_ (.CLK(clk_48),
    .D(_0708_),
    .RESET_B(rst_n),
    .Q(\token_timeout[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1481_ (.CLK(clk_48),
    .D(_0709_),
    .RESET_B(rst_n),
    .Q(\token_timeout[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1482_ (.CLK(clk_48),
    .D(_0710_),
    .RESET_B(rst_n),
    .Q(\token_timeout[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1603_ (.CLK(clk_48),
    .D(partition__0154_),
    .RESET_B(rst_n),
    .Q(\partition_tx.state[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1604_ (.CLK(clk_48),
    .D(_0014_),
    .RESET_B(rst_n),
    .Q(\partition_tx.tx_clock[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1605_ (.CLK(clk_48),
    .D(_0015_),
    .RESET_B(rst_n),
    .Q(\partition_tx.tx_clock[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1606_ (.CLK(clk_48),
    .D(_0155_),
    .RESET_B(rst_n),
    .Q(\partition_tx.bit_stuff_counter[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1607_ (.CLK(clk_48),
    .D(_0156_),
    .RESET_B(rst_n),
    .Q(\tx.bit_stuff_counter[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1608_ (.CLK(clk_48),
    .D(_0157_),
    .RESET_B(rst_n),
    .Q(\tx.bit_stuff_counter[2] ));
endmodule
module usb_partition1 (clk_48,
    rst_n,
    success,
    \partition_recv.destuffer.data[1] ,
    partition__0337_,
    partition__0426_,
    \partition_recv.destuffer.data[3] ,
    \partition_recv.destuffer.data[4] ,
    partition__0195_,
    partition__0712_,
    partition__0108_,
    \partition_recv.sm.xdatastrobe ,
    partition__0112_,
    \partition_recv.sm.crc16.rst_n ,
    \partition_recv.sm.crc16.next[1] ,
    partition__0113_,
    \partition_recv.sm.crc16.r[1] ,
    partition__0114_,
    \partition_recv.sm.crc16.next[3] ,
    partition__0116_,
    \partition_recv.sm.crc16.next[5] ,
    partition__0119_,
    \partition_recv.sm.crc16.next[8] ,
    partition__0120_,
    \partition_recv.sm.crc16.next[9] ,
    partition__0125_,
    \partition_recv.sm.crc16.next[14] ,
    partition__0137_,
    \partition_recv.sm.crc5.r[1] ,
    partition__0138_,
    \partition_recv.sm.crc5.next[3] );
 input clk_48;
 input rst_n;
 output success;
 input \partition_recv.destuffer.data[1] ;
 output partition__0337_;
 input partition__0426_;
 output \partition_recv.destuffer.data[3] ;
 output \partition_recv.destuffer.data[4] ;
 input partition__0195_;
 input partition__0712_;
 input partition__0108_;
 output \partition_recv.sm.xdatastrobe ;
 input partition__0112_;
 input \partition_recv.sm.crc16.rst_n ;
 output \partition_recv.sm.crc16.next[1] ;
 input partition__0113_;
 output \partition_recv.sm.crc16.r[1] ;
 input partition__0114_;
 output \partition_recv.sm.crc16.next[3] ;
 input partition__0116_;
 output \partition_recv.sm.crc16.next[5] ;
 input partition__0119_;
 output \partition_recv.sm.crc16.next[8] ;
 input partition__0120_;
 output \partition_recv.sm.crc16.next[9] ;
 input partition__0125_;
 output \partition_recv.sm.crc16.next[14] ;
 input partition__0137_;
 output \partition_recv.sm.crc5.r[1] ;
 input partition__0138_;
 output \partition_recv.sm.crc5.next[3] ;

 wire _0144_;
 wire _0145_;
 wire _0146_;
 wire _0147_;
 wire _0148_;
 wire _0193_;
 wire _0194_;
 wire _0196_;
 wire _0197_;
 wire _0198_;
 wire \recv.destuffer.data[2] ;
 wire \recv.destuffer.data[5] ;
 wire \recv.destuffer.data[6] ;

 sky130_fd_sc_hd__nand4b_2 _0804_ (.A_N(\recv.destuffer.data[6] ),
    .B(\recv.destuffer.data[5] ),
    .C(\recv.destuffer.data[2] ),
    .D(\partition_recv.destuffer.data[1] ),
    .Y(partition__0337_));
 sky130_fd_sc_hd__mux2_2 _1341_ (.A0(\recv.destuffer.data[2] ),
    .A1(\partition_recv.destuffer.data[1] ),
    .S(partition__0426_),
    .X(_0193_));
 sky130_fd_sc_hd__buf_1 _1342_ (.A(_0193_),
    .X(_0144_));
 sky130_fd_sc_hd__mux2_2 _1343_ (.A0(\partition_recv.destuffer.data[3] ),
    .A1(\recv.destuffer.data[2] ),
    .S(partition__0426_),
    .X(_0194_));
 sky130_fd_sc_hd__buf_1 _1344_ (.A(_0194_),
    .X(_0145_));
 sky130_fd_sc_hd__mux2_2 _1346_ (.A0(\partition_recv.destuffer.data[4] ),
    .A1(\partition_recv.destuffer.data[3] ),
    .S(partition__0195_),
    .X(_0196_));
 sky130_fd_sc_hd__buf_1 _1347_ (.A(_0196_),
    .X(_0146_));
 sky130_fd_sc_hd__mux2_2 _1348_ (.A0(\recv.destuffer.data[5] ),
    .A1(\partition_recv.destuffer.data[4] ),
    .S(partition__0195_),
    .X(_0197_));
 sky130_fd_sc_hd__buf_1 _1349_ (.A(_0197_),
    .X(_0147_));
 sky130_fd_sc_hd__mux2_2 _1350_ (.A0(\recv.destuffer.data[6] ),
    .A1(\recv.destuffer.data[5] ),
    .S(partition__0195_),
    .X(_0198_));
 sky130_fd_sc_hd__buf_1 _1351_ (.A(_0198_),
    .X(_0148_));
 sky130_fd_sc_hd__dfrtp_2 _1465_ (.CLK(clk_48),
    .D(partition__0712_),
    .RESET_B(rst_n),
    .Q(success));
 sky130_fd_sc_hd__dfrtp_2 _1546_ (.CLK(clk_48),
    .D(partition__0108_),
    .RESET_B(rst_n),
    .Q(\partition_recv.sm.xdatastrobe ));
 sky130_fd_sc_hd__dfstp_2 _1550_ (.CLK(clk_48),
    .D(partition__0112_),
    .SET_B(\partition_recv.sm.crc16.rst_n ),
    .Q(\partition_recv.sm.crc16.next[1] ));
 sky130_fd_sc_hd__dfstp_2 _1551_ (.CLK(clk_48),
    .D(partition__0113_),
    .SET_B(\partition_recv.sm.crc16.rst_n ),
    .Q(\partition_recv.sm.crc16.r[1] ));
 sky130_fd_sc_hd__dfstp_2 _1552_ (.CLK(clk_48),
    .D(partition__0114_),
    .SET_B(\partition_recv.sm.crc16.rst_n ),
    .Q(\partition_recv.sm.crc16.next[3] ));
 sky130_fd_sc_hd__dfstp_2 _1554_ (.CLK(clk_48),
    .D(partition__0116_),
    .SET_B(\partition_recv.sm.crc16.rst_n ),
    .Q(\partition_recv.sm.crc16.next[5] ));
 sky130_fd_sc_hd__dfstp_2 _1557_ (.CLK(clk_48),
    .D(partition__0119_),
    .SET_B(\partition_recv.sm.crc16.rst_n ),
    .Q(\partition_recv.sm.crc16.next[8] ));
 sky130_fd_sc_hd__dfstp_2 _1558_ (.CLK(clk_48),
    .D(partition__0120_),
    .SET_B(\partition_recv.sm.crc16.rst_n ),
    .Q(\partition_recv.sm.crc16.next[9] ));
 sky130_fd_sc_hd__dfstp_2 _1563_ (.CLK(clk_48),
    .D(partition__0125_),
    .SET_B(\partition_recv.sm.crc16.rst_n ),
    .Q(\partition_recv.sm.crc16.next[14] ));
 sky130_fd_sc_hd__dfstp_2 _1575_ (.CLK(clk_48),
    .D(partition__0137_),
    .SET_B(\partition_recv.sm.crc16.rst_n ),
    .Q(\partition_recv.sm.crc5.r[1] ));
 sky130_fd_sc_hd__dfstp_2 _1576_ (.CLK(clk_48),
    .D(partition__0138_),
    .SET_B(\partition_recv.sm.crc16.rst_n ),
    .Q(\partition_recv.sm.crc5.next[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1582_ (.CLK(clk_48),
    .D(_0144_),
    .RESET_B(rst_n),
    .Q(\recv.destuffer.data[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1583_ (.CLK(clk_48),
    .D(_0145_),
    .RESET_B(rst_n),
    .Q(\partition_recv.destuffer.data[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1584_ (.CLK(clk_48),
    .D(_0146_),
    .RESET_B(rst_n),
    .Q(\partition_recv.destuffer.data[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1585_ (.CLK(clk_48),
    .D(_0147_),
    .RESET_B(rst_n),
    .Q(\recv.destuffer.data[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1586_ (.CLK(clk_48),
    .D(_0148_),
    .RESET_B(rst_n),
    .Q(\recv.destuffer.data[6] ));
endmodule
module usb_partition2 (clk_48,
    direction_in,
    rst_n,
    setup,
    partition__0268_,
    partition__0273_,
    partition__0283_,
    \partition_recv_queue_1[3] ,
    partition_recv_queue_1_valid,
    \partition_recv.sm.xcrc5_ok ,
    partition__0309_,
    \partition_recv.sm.xcrc16_ok ,
    partition__0333_,
    \partition_recv.sm.clear_shift ,
    partition__0365_,
    partition__0368_,
    partition__0375_,
    partition__0385_,
    partition__0390_,
    partition__0388_,
    partition__0393_,
    partition__0358_,
    partition__0412_,
    partition__0415_,
    partition__0416_,
    partition__0417_,
    partition__0441_,
    partition__0465_,
    partition__0479_,
    partition__0282_,
    \partition_recv_queue_1[7] ,
    \partition_recv.sm.xpacket ,
    partition__0525_,
    partition__0574_,
    partition__0581_,
    partition__0640_,
    partition__0386_,
    partition__0646_,
    partition__0647_,
    partition__0657_,
    partition__0176_,
    data_out,
    endpoint,
    usb_address);
 input clk_48;
 output direction_in;
 input rst_n;
 output setup;
 output partition__0268_;
 output partition__0273_;
 output partition__0283_;
 input \partition_recv_queue_1[3] ;
 input partition_recv_queue_1_valid;
 input \partition_recv.sm.xcrc5_ok ;
 output partition__0309_;
 input \partition_recv.sm.xcrc16_ok ;
 output partition__0333_;
 input \partition_recv.sm.clear_shift ;
 output partition__0365_;
 output partition__0368_;
 output partition__0375_;
 output partition__0385_;
 input partition__0390_;
 input partition__0388_;
 input partition__0393_;
 input partition__0358_;
 output partition__0412_;
 input partition__0415_;
 output partition__0416_;
 output partition__0417_;
 output partition__0441_;
 output partition__0465_;
 output partition__0479_;
 input partition__0282_;
 input \partition_recv_queue_1[7] ;
 output \partition_recv.sm.xpacket ;
 output partition__0525_;
 input partition__0574_;
 input partition__0581_;
 output partition__0640_;
 input partition__0386_;
 input partition__0646_;
 output partition__0647_;
 input partition__0657_;
 input partition__0176_;
 output [7:0] data_out;
 output [3:0] endpoint;
 input [6:0] usb_address;

 wire _0003_;
 wire _0034_;
 wire _0035_;
 wire _0036_;
 wire _0037_;
 wire _0038_;
 wire _0049_;
 wire _0051_;
 wire _0052_;
 wire _0053_;
 wire _0054_;
 wire _0055_;
 wire _0056_;
 wire _0057_;
 wire _0058_;
 wire _0059_;
 wire _0060_;
 wire _0061_;
 wire _0063_;
 wire _0064_;
 wire _0065_;
 wire _0069_;
 wire _0070_;
 wire _0071_;
 wire _0073_;
 wire _0074_;
 wire _0075_;
 wire _0096_;
 wire _0097_;
 wire _0098_;
 wire _0099_;
 wire _0100_;
 wire _0101_;
 wire _0102_;
 wire _0104_;
 wire _0105_;
 wire _0106_;
 wire _0129_;
 wire _0130_;
 wire _0131_;
 wire _0132_;
 wire _0133_;
 wire _0134_;
 wire _0177_;
 wire _0178_;
 wire _0179_;
 wire _0180_;
 wire _0181_;
 wire _0182_;
 wire _0284_;
 wire _0285_;
 wire _0286_;
 wire _0287_;
 wire _0288_;
 wire _0289_;
 wire _0290_;
 wire _0291_;
 wire _0292_;
 wire _0293_;
 wire _0294_;
 wire _0295_;
 wire _0296_;
 wire _0297_;
 wire _0298_;
 wire _0299_;
 wire _0300_;
 wire _0301_;
 wire _0302_;
 wire _0303_;
 wire _0304_;
 wire _0305_;
 wire _0306_;
 wire _0307_;
 wire _0308_;
 wire _0367_;
 wire _0381_;
 wire _0382_;
 wire _0383_;
 wire _0384_;
 wire _0391_;
 wire _0459_;
 wire _0460_;
 wire _0461_;
 wire _0462_;
 wire _0463_;
 wire _0464_;
 wire _0513_;
 wire _0514_;
 wire _0515_;
 wire _0516_;
 wire _0517_;
 wire _0518_;
 wire _0519_;
 wire _0520_;
 wire _0521_;
 wire _0563_;
 wire _0564_;
 wire _0565_;
 wire _0566_;
 wire _0567_;
 wire _0568_;
 wire _0569_;
 wire _0570_;
 wire _0571_;
 wire _0572_;
 wire _0573_;
 wire _0575_;
 wire _0576_;
 wire _0578_;
 wire _0579_;
 wire _0580_;
 wire _0585_;
 wire _0586_;
 wire _0587_;
 wire _0589_;
 wire _0590_;
 wire _0591_;
 wire _0641_;
 wire _0642_;
 wire _0643_;
 wire _0644_;
 wire _0645_;
 wire _0648_;
 wire _0649_;
 wire _0650_;
 wire _0651_;
 wire _0653_;
 wire _0654_;
 wire _0655_;
 wire _0656_;
 wire _0658_;
 wire \recv.sm.shift_reg[1] ;
 wire \recv.sm.shift_reg[2] ;
 wire \recv.sm.shift_reg[3] ;
 wire \recv.sm.shift_reg[4] ;
 wire \recv.sm.shift_reg[5] ;
 wire \recv.sm.shift_reg[6] ;
 wire \recv.sm.xdata[0] ;
 wire \recv.sm.xdata[1] ;
 wire \recv.sm.xdata[2] ;
 wire \recv.sm.xdata[4] ;
 wire \recv.sm.xdata[5] ;
 wire \recv.sm.xdata[6] ;
 wire \recv.sm.xpid[0] ;
 wire \recv.sm.xpid[1] ;
 wire \recv.sm.xpid[2] ;
 wire \recv.sm.xpid[3] ;
 wire \recv_queue_0[0] ;
 wire \recv_queue_0[1] ;
 wire \recv_queue_0[2] ;
 wire \recv_queue_0[4] ;
 wire \recv_queue_0[5] ;
 wire \recv_queue_0[6] ;
 wire \recv_queue_1[0] ;
 wire \recv_queue_1[1] ;
 wire \recv_queue_1[2] ;
 wire \recv_queue_1[4] ;
 wire \recv_queue_1[5] ;
 wire \recv_queue_1[6] ;

 sky130_fd_sc_hd__and3b_2 _0731_ (.A_N(\recv.sm.xpid[2] ),
    .B(\recv.sm.xpid[1] ),
    .C(\recv.sm.xpid[0] ),
    .X(partition__0268_));
 sky130_fd_sc_hd__buf_1 _0736_ (.A(\recv.sm.xpid[3] ),
    .X(partition__0273_));
 sky130_fd_sc_hd__buf_1 _0748_ (.A(\recv.sm.xpid[1] ),
    .X(partition__0283_));
 sky130_fd_sc_hd__buf_1 _0749_ (.A(\recv.sm.xpid[2] ),
    .X(_0284_));
 sky130_fd_sc_hd__buf_1 _0750_ (.A(\recv.sm.xpid[0] ),
    .X(_0285_));
 sky130_fd_sc_hd__and4bb_2 _0751_ (.A_N(partition__0283_),
    .B_N(_0284_),
    .C(partition__0273_),
    .D(_0285_),
    .X(_0286_));
 sky130_fd_sc_hd__or2b_2 _0752_ (.A(usb_address[2]),
    .B_N(\recv_queue_1[2] ),
    .X(_0287_));
 sky130_fd_sc_hd__or2b_2 _0753_ (.A(usb_address[6]),
    .B_N(\recv_queue_1[6] ),
    .X(_0288_));
 sky130_fd_sc_hd__or2b_2 _0754_ (.A(usb_address[3]),
    .B_N(\partition_recv_queue_1[3] ),
    .X(_0289_));
 sky130_fd_sc_hd__or2b_2 _0755_ (.A(usb_address[0]),
    .B_N(\recv_queue_1[0] ),
    .X(_0290_));
 sky130_fd_sc_hd__nand4_2 _0756_ (.A(_0287_),
    .B(_0288_),
    .C(_0289_),
    .D(_0290_),
    .Y(_0291_));
 sky130_fd_sc_hd__or2b_2 _0757_ (.A(usb_address[4]),
    .B_N(\recv_queue_1[4] ),
    .X(_0292_));
 sky130_fd_sc_hd__or2b_2 _0758_ (.A(\recv_queue_1[0] ),
    .B_N(usb_address[0]),
    .X(_0293_));
 sky130_fd_sc_hd__or2b_2 _0759_ (.A(\partition_recv_queue_1[3] ),
    .B_N(usb_address[3]),
    .X(_0294_));
 sky130_fd_sc_hd__and2_2 _0760_ (.A(partition_recv_queue_1_valid),
    .B(\partition_recv.sm.xcrc5_ok ),
    .X(_0295_));
 sky130_fd_sc_hd__nand4_2 _0761_ (.A(_0292_),
    .B(_0293_),
    .C(_0294_),
    .D(_0295_),
    .Y(_0296_));
 sky130_fd_sc_hd__nor2_2 _0762_ (.A(_0291_),
    .B(_0296_),
    .Y(_0297_));
 sky130_fd_sc_hd__or2b_2 _0763_ (.A(usb_address[5]),
    .B_N(\recv_queue_1[5] ),
    .X(_0298_));
 sky130_fd_sc_hd__or2b_2 _0764_ (.A(\recv_queue_1[1] ),
    .B_N(usb_address[1]),
    .X(_0299_));
 sky130_fd_sc_hd__or2b_2 _0765_ (.A(\recv_queue_1[5] ),
    .B_N(usb_address[5]),
    .X(_0300_));
 sky130_fd_sc_hd__or2b_2 _0766_ (.A(\recv_queue_1[4] ),
    .B_N(usb_address[4]),
    .X(_0301_));
 sky130_fd_sc_hd__nand4_2 _0767_ (.A(_0298_),
    .B(_0299_),
    .C(_0300_),
    .D(_0301_),
    .Y(_0302_));
 sky130_fd_sc_hd__inv_2 _0768_ (.A(\recv_queue_1[1] ),
    .Y(_0303_));
 sky130_fd_sc_hd__or2b_2 _0769_ (.A(\recv.sm.xpid[3] ),
    .B_N(\recv.sm.xpid[2] ),
    .X(_0304_));
 sky130_fd_sc_hd__or2b_2 _0770_ (.A(\recv_queue_1[2] ),
    .B_N(usb_address[2]),
    .X(_0305_));
 sky130_fd_sc_hd__or2b_2 _0771_ (.A(\recv_queue_1[6] ),
    .B_N(usb_address[6]),
    .X(_0306_));
 sky130_fd_sc_hd__o2111ai_2 _0772_ (.A1(usb_address[1]),
    .A2(_0303_),
    .B1(_0304_),
    .C1(_0305_),
    .D1(_0306_),
    .Y(_0307_));
 sky130_fd_sc_hd__nor2_2 _0773_ (.A(_0302_),
    .B(_0307_),
    .Y(_0308_));
 sky130_fd_sc_hd__nand3_2 _0774_ (.A(_0286_),
    .B(_0297_),
    .C(_0308_),
    .Y(partition__0309_));
 sky130_fd_sc_hd__and4_2 _0799_ (.A(partition_recv_queue_1_valid),
    .B(_0285_),
    .C(\recv.sm.xpid[1] ),
    .D(\partition_recv.sm.xcrc16_ok ),
    .X(partition__0333_));
 sky130_fd_sc_hd__buf_1 _0833_ (.A(\partition_recv.sm.clear_shift ),
    .X(partition__0365_));
 sky130_fd_sc_hd__buf_1 _0835_ (.A(\partition_recv.sm.clear_shift ),
    .X(_0367_));
 sky130_fd_sc_hd__and2b_2 _0836_ (.A_N(_0367_),
    .B(\recv.sm.shift_reg[3] ),
    .X(partition__0368_));
 sky130_fd_sc_hd__or2b_2 _0843_ (.A(_0367_),
    .B_N(\recv.sm.shift_reg[4] ),
    .X(partition__0375_));
 sky130_fd_sc_hd__nor3b_2 _0849_ (.A(_0367_),
    .B(\recv.sm.shift_reg[1] ),
    .C_N(\recv.sm.shift_reg[5] ),
    .Y(_0381_));
 sky130_fd_sc_hd__nor3b_2 _0850_ (.A(_0367_),
    .B(\recv.sm.shift_reg[5] ),
    .C_N(\recv.sm.shift_reg[1] ),
    .Y(_0382_));
 sky130_fd_sc_hd__nor3b_2 _0851_ (.A(_0367_),
    .B(\recv.sm.shift_reg[2] ),
    .C_N(\recv.sm.shift_reg[6] ),
    .Y(_0383_));
 sky130_fd_sc_hd__nor3b_2 _0852_ (.A(_0367_),
    .B(\recv.sm.shift_reg[6] ),
    .C_N(\recv.sm.shift_reg[2] ),
    .Y(_0384_));
 sky130_fd_sc_hd__o22a_2 _0853_ (.A1(_0381_),
    .A2(_0382_),
    .B1(_0383_),
    .B2(_0384_),
    .X(partition__0385_));
 sky130_fd_sc_hd__buf_1 _0860_ (.A(partition__0390_),
    .X(_0391_));
 sky130_fd_sc_hd__a2bb2o_2 _0863_ (.A1_N(partition__0388_),
    .A2_N(_0391_),
    .B1(partition__0393_),
    .B2(partition__0358_),
    .X(_0003_));
 sky130_fd_sc_hd__buf_1 _0883_ (.A(_0285_),
    .X(partition__0412_));
 sky130_fd_sc_hd__buf_1 _0887_ (.A(partition__0415_),
    .X(partition__0416_));
 sky130_fd_sc_hd__or2b_2 _0888_ (.A(\recv.sm.xpid[1] ),
    .B_N(\recv.sm.xpid[0] ),
    .X(partition__0417_));
 sky130_fd_sc_hd__buf_1 _0916_ (.A(partition__0365_),
    .X(partition__0441_));
 sky130_fd_sc_hd__nand4_2 _0941_ (.A(_0288_),
    .B(_0290_),
    .C(_0293_),
    .D(_0306_),
    .Y(_0459_));
 sky130_fd_sc_hd__nand4_2 _0942_ (.A(_0287_),
    .B(_0289_),
    .C(_0298_),
    .D(_0300_),
    .Y(_0460_));
 sky130_fd_sc_hd__nand4_2 _0943_ (.A(_0292_),
    .B(_0301_),
    .C(_0304_),
    .D(_0305_),
    .Y(_0461_));
 sky130_fd_sc_hd__and2_2 _0944_ (.A(usb_address[1]),
    .B(\recv_queue_1[1] ),
    .X(_0462_));
 sky130_fd_sc_hd__nor2_2 _0945_ (.A(usb_address[1]),
    .B(\recv_queue_1[1] ),
    .Y(_0463_));
 sky130_fd_sc_hd__o2111ai_2 _0946_ (.A1(_0462_),
    .A2(_0463_),
    .B1(partition_recv_queue_1_valid),
    .C1(\partition_recv.sm.xcrc5_ok ),
    .D1(_0294_),
    .Y(_0464_));
 sky130_fd_sc_hd__nor4_2 _0947_ (.A(_0459_),
    .B(_0460_),
    .C(_0461_),
    .D(_0464_),
    .Y(partition__0465_));
 sky130_fd_sc_hd__nor4b_2 _0968_ (.A(_0285_),
    .B(_0284_),
    .C(\recv.sm.xpid[3] ),
    .D_N(\recv.sm.xpid[1] ),
    .Y(partition__0479_));
 sky130_fd_sc_hd__a21oi_2 _1023_ (.A1(_0285_),
    .A2(partition__0283_),
    .B1(partition__0282_),
    .Y(_0513_));
 sky130_fd_sc_hd__mux2_2 _1024_ (.A0(endpoint[0]),
    .A1(\partition_recv_queue_1[7] ),
    .S(_0513_),
    .X(_0514_));
 sky130_fd_sc_hd__buf_1 _1025_ (.A(_0514_),
    .X(_0034_));
 sky130_fd_sc_hd__mux2_2 _1026_ (.A0(endpoint[1]),
    .A1(\recv_queue_0[0] ),
    .S(_0513_),
    .X(_0515_));
 sky130_fd_sc_hd__buf_1 _1027_ (.A(_0515_),
    .X(_0035_));
 sky130_fd_sc_hd__mux2_2 _1028_ (.A0(endpoint[2]),
    .A1(\recv_queue_0[1] ),
    .S(_0513_),
    .X(_0516_));
 sky130_fd_sc_hd__buf_1 _1029_ (.A(_0516_),
    .X(_0036_));
 sky130_fd_sc_hd__mux2_2 _1030_ (.A0(endpoint[3]),
    .A1(\recv_queue_0[2] ),
    .S(_0513_),
    .X(_0517_));
 sky130_fd_sc_hd__buf_1 _1031_ (.A(_0517_),
    .X(_0037_));
 sky130_fd_sc_hd__and2b_2 _1032_ (.A_N(_0284_),
    .B(partition__0273_),
    .X(_0518_));
 sky130_fd_sc_hd__and2b_2 _1033_ (.A_N(partition__0273_),
    .B(_0284_),
    .X(_0519_));
 sky130_fd_sc_hd__a21o_2 _1034_ (.A1(partition__0412_),
    .A2(partition__0283_),
    .B1(partition__0282_),
    .X(_0520_));
 sky130_fd_sc_hd__a2bb2o_2 _1035_ (.A1_N(partition__0412_),
    .A2_N(partition__0282_),
    .B1(_0304_),
    .B2(_0513_),
    .X(_0521_));
 sky130_fd_sc_hd__o32a_2 _1036_ (.A1(_0518_),
    .A2(_0519_),
    .A3(_0520_),
    .B1(direction_in),
    .B2(_0521_),
    .X(_0038_));
 sky130_fd_sc_hd__or3b_2 _1040_ (.A(\recv.sm.xpid[1] ),
    .B(\partition_recv.sm.xpacket ),
    .C_N(_0285_),
    .X(partition__0525_));
 sky130_fd_sc_hd__o221a_2 _1088_ (.A1(partition__0412_),
    .A2(partition__0282_),
    .B1(_0519_),
    .B2(_0520_),
    .C1(setup),
    .X(_0563_));
 sky130_fd_sc_hd__a31o_2 _1089_ (.A1(_0284_),
    .A2(partition__0273_),
    .A3(_0513_),
    .B1(_0563_),
    .X(_0049_));
 sky130_fd_sc_hd__mux2_2 _1091_ (.A0(data_out[0]),
    .A1(\recv_queue_1[0] ),
    .S(partition__0416_),
    .X(_0564_));
 sky130_fd_sc_hd__buf_1 _1092_ (.A(_0564_),
    .X(_0051_));
 sky130_fd_sc_hd__mux2_2 _1093_ (.A0(data_out[1]),
    .A1(\recv_queue_1[1] ),
    .S(partition__0416_),
    .X(_0565_));
 sky130_fd_sc_hd__buf_1 _1094_ (.A(_0565_),
    .X(_0052_));
 sky130_fd_sc_hd__mux2_2 _1095_ (.A0(data_out[2]),
    .A1(\recv_queue_1[2] ),
    .S(partition__0416_),
    .X(_0566_));
 sky130_fd_sc_hd__buf_1 _1096_ (.A(_0566_),
    .X(_0053_));
 sky130_fd_sc_hd__buf_1 _1097_ (.A(partition__0415_),
    .X(_0567_));
 sky130_fd_sc_hd__mux2_2 _1098_ (.A0(data_out[3]),
    .A1(\partition_recv_queue_1[3] ),
    .S(_0567_),
    .X(_0568_));
 sky130_fd_sc_hd__buf_1 _1099_ (.A(_0568_),
    .X(_0054_));
 sky130_fd_sc_hd__mux2_2 _1100_ (.A0(data_out[4]),
    .A1(\recv_queue_1[4] ),
    .S(_0567_),
    .X(_0569_));
 sky130_fd_sc_hd__buf_1 _1101_ (.A(_0569_),
    .X(_0055_));
 sky130_fd_sc_hd__mux2_2 _1102_ (.A0(data_out[5]),
    .A1(\recv_queue_1[5] ),
    .S(_0567_),
    .X(_0570_));
 sky130_fd_sc_hd__buf_1 _1103_ (.A(_0570_),
    .X(_0056_));
 sky130_fd_sc_hd__mux2_2 _1104_ (.A0(data_out[6]),
    .A1(\recv_queue_1[6] ),
    .S(_0567_),
    .X(_0571_));
 sky130_fd_sc_hd__buf_1 _1105_ (.A(_0571_),
    .X(_0057_));
 sky130_fd_sc_hd__mux2_2 _1106_ (.A0(data_out[7]),
    .A1(\partition_recv_queue_1[7] ),
    .S(_0567_),
    .X(_0572_));
 sky130_fd_sc_hd__buf_1 _1107_ (.A(_0572_),
    .X(_0058_));
 sky130_fd_sc_hd__mux2_2 _1108_ (.A0(\recv_queue_0[0] ),
    .A1(\recv.sm.xdata[0] ),
    .S(_0567_),
    .X(_0573_));
 sky130_fd_sc_hd__buf_1 _1109_ (.A(_0573_),
    .X(_0059_));
 sky130_fd_sc_hd__mux2_2 _1111_ (.A0(\recv_queue_0[1] ),
    .A1(\recv.sm.xdata[1] ),
    .S(partition__0574_),
    .X(_0575_));
 sky130_fd_sc_hd__buf_1 _1112_ (.A(_0575_),
    .X(_0060_));
 sky130_fd_sc_hd__mux2_2 _1113_ (.A0(\recv_queue_0[2] ),
    .A1(\recv.sm.xdata[2] ),
    .S(partition__0574_),
    .X(_0576_));
 sky130_fd_sc_hd__buf_1 _1114_ (.A(_0576_),
    .X(_0061_));
 sky130_fd_sc_hd__mux2_2 _1117_ (.A0(\recv_queue_0[4] ),
    .A1(\recv.sm.xdata[4] ),
    .S(partition__0574_),
    .X(_0578_));
 sky130_fd_sc_hd__buf_1 _1118_ (.A(_0578_),
    .X(_0063_));
 sky130_fd_sc_hd__mux2_2 _1119_ (.A0(\recv_queue_0[5] ),
    .A1(\recv.sm.xdata[5] ),
    .S(partition__0574_),
    .X(_0579_));
 sky130_fd_sc_hd__buf_1 _1120_ (.A(_0579_),
    .X(_0064_));
 sky130_fd_sc_hd__mux2_2 _1121_ (.A0(\recv_queue_0[6] ),
    .A1(\recv.sm.xdata[6] ),
    .S(partition__0574_),
    .X(_0580_));
 sky130_fd_sc_hd__buf_1 _1122_ (.A(_0580_),
    .X(_0065_));
 sky130_fd_sc_hd__mux2_2 _1130_ (.A0(\recv_queue_1[0] ),
    .A1(\recv_queue_0[0] ),
    .S(partition__0581_),
    .X(_0585_));
 sky130_fd_sc_hd__buf_1 _1131_ (.A(_0585_),
    .X(_0069_));
 sky130_fd_sc_hd__mux2_2 _1132_ (.A0(\recv_queue_1[1] ),
    .A1(\recv_queue_0[1] ),
    .S(partition__0581_),
    .X(_0586_));
 sky130_fd_sc_hd__buf_1 _1133_ (.A(_0586_),
    .X(_0070_));
 sky130_fd_sc_hd__mux2_2 _1134_ (.A0(\recv_queue_1[2] ),
    .A1(\recv_queue_0[2] ),
    .S(partition__0581_),
    .X(_0587_));
 sky130_fd_sc_hd__buf_1 _1135_ (.A(_0587_),
    .X(_0071_));
 sky130_fd_sc_hd__mux2_2 _1138_ (.A0(\recv_queue_1[4] ),
    .A1(\recv_queue_0[4] ),
    .S(partition__0581_),
    .X(_0589_));
 sky130_fd_sc_hd__buf_1 _1139_ (.A(_0589_),
    .X(_0073_));
 sky130_fd_sc_hd__mux2_2 _1140_ (.A0(\recv_queue_1[5] ),
    .A1(\recv_queue_0[5] ),
    .S(partition__0415_),
    .X(_0590_));
 sky130_fd_sc_hd__buf_1 _1141_ (.A(_0590_),
    .X(_0074_));
 sky130_fd_sc_hd__mux2_2 _1142_ (.A0(\recv_queue_1[6] ),
    .A1(\recv_queue_0[6] ),
    .S(partition__0415_),
    .X(_0591_));
 sky130_fd_sc_hd__buf_1 _1143_ (.A(_0591_),
    .X(_0075_));
 sky130_fd_sc_hd__and2b_2 _1212_ (.A_N(partition__0365_),
    .B(\recv.sm.shift_reg[6] ),
    .X(partition__0640_));
 sky130_fd_sc_hd__o21bai_2 _1213_ (.A1(partition__0388_),
    .A2(_0391_),
    .B1_N(partition__0412_),
    .Y(_0641_));
 sky130_fd_sc_hd__o31a_2 _1214_ (.A1(partition__0640_),
    .A2(partition__0388_),
    .A3(_0391_),
    .B1(_0641_),
    .X(_0096_));
 sky130_fd_sc_hd__and2b_2 _1215_ (.A_N(partition__0441_),
    .B(\recv.sm.shift_reg[5] ),
    .X(_0642_));
 sky130_fd_sc_hd__o21bai_2 _1216_ (.A1(partition__0386_),
    .A2(partition__0390_),
    .B1_N(partition__0283_),
    .Y(_0643_));
 sky130_fd_sc_hd__o31a_2 _1217_ (.A1(_0642_),
    .A2(partition__0388_),
    .A3(_0391_),
    .B1(_0643_),
    .X(_0097_));
 sky130_fd_sc_hd__o21ai_2 _1218_ (.A1(partition__0386_),
    .A2(partition__0390_),
    .B1(_0284_),
    .Y(_0644_));
 sky130_fd_sc_hd__o31ai_2 _1219_ (.A1(partition__0375_),
    .A2(partition__0388_),
    .A3(_0391_),
    .B1(_0644_),
    .Y(_0098_));
 sky130_fd_sc_hd__o21bai_2 _1220_ (.A1(partition__0386_),
    .A2(partition__0390_),
    .B1_N(partition__0273_),
    .Y(_0645_));
 sky130_fd_sc_hd__o31a_2 _1221_ (.A1(partition__0368_),
    .A2(partition__0388_),
    .A3(_0391_),
    .B1(_0645_),
    .X(_0099_));
 sky130_fd_sc_hd__buf_1 _1223_ (.A(partition__0646_),
    .X(partition__0647_));
 sky130_fd_sc_hd__mux2_2 _1224_ (.A0(partition__0640_),
    .A1(\recv.sm.xdata[0] ),
    .S(partition__0647_),
    .X(_0648_));
 sky130_fd_sc_hd__buf_1 _1225_ (.A(_0648_),
    .X(_0100_));
 sky130_fd_sc_hd__mux2_2 _1226_ (.A0(_0642_),
    .A1(\recv.sm.xdata[1] ),
    .S(partition__0647_),
    .X(_0649_));
 sky130_fd_sc_hd__buf_1 _1227_ (.A(_0649_),
    .X(_0101_));
 sky130_fd_sc_hd__and2b_2 _1228_ (.A_N(partition__0441_),
    .B(\recv.sm.shift_reg[4] ),
    .X(_0650_));
 sky130_fd_sc_hd__mux2_2 _1229_ (.A0(_0650_),
    .A1(\recv.sm.xdata[2] ),
    .S(partition__0647_),
    .X(_0651_));
 sky130_fd_sc_hd__buf_1 _1230_ (.A(_0651_),
    .X(_0102_));
 sky130_fd_sc_hd__and2b_2 _1233_ (.A_N(partition__0441_),
    .B(\recv.sm.shift_reg[2] ),
    .X(_0653_));
 sky130_fd_sc_hd__mux2_2 _1234_ (.A0(_0653_),
    .A1(\recv.sm.xdata[4] ),
    .S(partition__0647_),
    .X(_0654_));
 sky130_fd_sc_hd__buf_1 _1235_ (.A(_0654_),
    .X(_0104_));
 sky130_fd_sc_hd__and2b_2 _1236_ (.A_N(partition__0441_),
    .B(\recv.sm.shift_reg[1] ),
    .X(_0655_));
 sky130_fd_sc_hd__mux2_2 _1237_ (.A0(_0655_),
    .A1(\recv.sm.xdata[5] ),
    .S(partition__0646_),
    .X(_0656_));
 sky130_fd_sc_hd__buf_1 _1238_ (.A(_0656_),
    .X(_0105_));
 sky130_fd_sc_hd__mux2_2 _1240_ (.A0(partition__0657_),
    .A1(\recv.sm.xdata[6] ),
    .S(partition__0646_),
    .X(_0658_));
 sky130_fd_sc_hd__buf_1 _1241_ (.A(_0658_),
    .X(_0106_));
 sky130_fd_sc_hd__mux2_2 _1310_ (.A0(partition__0657_),
    .A1(\recv.sm.shift_reg[1] ),
    .S(partition__0176_),
    .X(_0177_));
 sky130_fd_sc_hd__buf_1 _1311_ (.A(_0177_),
    .X(_0129_));
 sky130_fd_sc_hd__mux2_2 _1312_ (.A0(_0655_),
    .A1(\recv.sm.shift_reg[2] ),
    .S(partition__0176_),
    .X(_0178_));
 sky130_fd_sc_hd__buf_1 _1313_ (.A(_0178_),
    .X(_0130_));
 sky130_fd_sc_hd__mux2_2 _1314_ (.A0(_0653_),
    .A1(\recv.sm.shift_reg[3] ),
    .S(partition__0176_),
    .X(_0179_));
 sky130_fd_sc_hd__buf_1 _1315_ (.A(_0179_),
    .X(_0131_));
 sky130_fd_sc_hd__mux2_2 _1316_ (.A0(partition__0368_),
    .A1(\recv.sm.shift_reg[4] ),
    .S(partition__0176_),
    .X(_0180_));
 sky130_fd_sc_hd__buf_1 _1317_ (.A(_0180_),
    .X(_0132_));
 sky130_fd_sc_hd__mux2_2 _1318_ (.A0(_0650_),
    .A1(\recv.sm.shift_reg[5] ),
    .S(partition__0176_),
    .X(_0181_));
 sky130_fd_sc_hd__buf_1 _1319_ (.A(_0181_),
    .X(_0133_));
 sky130_fd_sc_hd__mux2_2 _1320_ (.A0(_0642_),
    .A1(\recv.sm.shift_reg[6] ),
    .S(partition__0176_),
    .X(_0182_));
 sky130_fd_sc_hd__buf_1 _1321_ (.A(_0182_),
    .X(_0134_));
 sky130_fd_sc_hd__dfrtp_2 _1459_ (.CLK(clk_48),
    .D(_0034_),
    .RESET_B(rst_n),
    .Q(endpoint[0]));
 sky130_fd_sc_hd__dfrtp_2 _1460_ (.CLK(clk_48),
    .D(_0035_),
    .RESET_B(rst_n),
    .Q(endpoint[1]));
 sky130_fd_sc_hd__dfrtp_2 _1461_ (.CLK(clk_48),
    .D(_0036_),
    .RESET_B(rst_n),
    .Q(endpoint[2]));
 sky130_fd_sc_hd__dfrtp_2 _1462_ (.CLK(clk_48),
    .D(_0037_),
    .RESET_B(rst_n),
    .Q(endpoint[3]));
 sky130_fd_sc_hd__dfrtp_2 _1463_ (.CLK(clk_48),
    .D(_0038_),
    .RESET_B(rst_n),
    .Q(direction_in));
 sky130_fd_sc_hd__dfrtp_2 _1483_ (.CLK(clk_48),
    .D(_0049_),
    .RESET_B(rst_n),
    .Q(setup));
 sky130_fd_sc_hd__dfxtp_2 _1485_ (.CLK(clk_48),
    .D(_0051_),
    .Q(data_out[0]));
 sky130_fd_sc_hd__dfxtp_2 _1486_ (.CLK(clk_48),
    .D(_0052_),
    .Q(data_out[1]));
 sky130_fd_sc_hd__dfxtp_2 _1487_ (.CLK(clk_48),
    .D(_0053_),
    .Q(data_out[2]));
 sky130_fd_sc_hd__dfxtp_2 _1488_ (.CLK(clk_48),
    .D(_0054_),
    .Q(data_out[3]));
 sky130_fd_sc_hd__dfxtp_2 _1489_ (.CLK(clk_48),
    .D(_0055_),
    .Q(data_out[4]));
 sky130_fd_sc_hd__dfxtp_2 _1490_ (.CLK(clk_48),
    .D(_0056_),
    .Q(data_out[5]));
 sky130_fd_sc_hd__dfxtp_2 _1491_ (.CLK(clk_48),
    .D(_0057_),
    .Q(data_out[6]));
 sky130_fd_sc_hd__dfxtp_2 _1492_ (.CLK(clk_48),
    .D(_0058_),
    .Q(data_out[7]));
 sky130_fd_sc_hd__dfxtp_2 _1493_ (.CLK(clk_48),
    .D(_0059_),
    .Q(\recv_queue_0[0] ));
 sky130_fd_sc_hd__dfxtp_2 _1494_ (.CLK(clk_48),
    .D(_0060_),
    .Q(\recv_queue_0[1] ));
 sky130_fd_sc_hd__dfxtp_2 _1495_ (.CLK(clk_48),
    .D(_0061_),
    .Q(\recv_queue_0[2] ));
 sky130_fd_sc_hd__dfxtp_2 _1497_ (.CLK(clk_48),
    .D(_0063_),
    .Q(\recv_queue_0[4] ));
 sky130_fd_sc_hd__dfxtp_2 _1498_ (.CLK(clk_48),
    .D(_0064_),
    .Q(\recv_queue_0[5] ));
 sky130_fd_sc_hd__dfxtp_2 _1499_ (.CLK(clk_48),
    .D(_0065_),
    .Q(\recv_queue_0[6] ));
 sky130_fd_sc_hd__dfxtp_2 _1503_ (.CLK(clk_48),
    .D(_0069_),
    .Q(\recv_queue_1[0] ));
 sky130_fd_sc_hd__dfxtp_2 _1504_ (.CLK(clk_48),
    .D(_0070_),
    .Q(\recv_queue_1[1] ));
 sky130_fd_sc_hd__dfxtp_2 _1505_ (.CLK(clk_48),
    .D(_0071_),
    .Q(\recv_queue_1[2] ));
 sky130_fd_sc_hd__dfxtp_2 _1507_ (.CLK(clk_48),
    .D(_0073_),
    .Q(\recv_queue_1[4] ));
 sky130_fd_sc_hd__dfxtp_2 _1508_ (.CLK(clk_48),
    .D(_0074_),
    .Q(\recv_queue_1[5] ));
 sky130_fd_sc_hd__dfxtp_2 _1509_ (.CLK(clk_48),
    .D(_0075_),
    .Q(\recv_queue_1[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1514_ (.CLK(clk_48),
    .D(_0003_),
    .RESET_B(rst_n),
    .Q(\partition_recv.sm.xpacket ));
 sky130_fd_sc_hd__dfrtp_2 _1534_ (.CLK(clk_48),
    .D(_0096_),
    .RESET_B(rst_n),
    .Q(\recv.sm.xpid[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1535_ (.CLK(clk_48),
    .D(_0097_),
    .RESET_B(rst_n),
    .Q(\recv.sm.xpid[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1536_ (.CLK(clk_48),
    .D(_0098_),
    .RESET_B(rst_n),
    .Q(\recv.sm.xpid[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1537_ (.CLK(clk_48),
    .D(_0099_),
    .RESET_B(rst_n),
    .Q(\recv.sm.xpid[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1538_ (.CLK(clk_48),
    .D(_0100_),
    .RESET_B(rst_n),
    .Q(\recv.sm.xdata[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1539_ (.CLK(clk_48),
    .D(_0101_),
    .RESET_B(rst_n),
    .Q(\recv.sm.xdata[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1540_ (.CLK(clk_48),
    .D(_0102_),
    .RESET_B(rst_n),
    .Q(\recv.sm.xdata[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1542_ (.CLK(clk_48),
    .D(_0104_),
    .RESET_B(rst_n),
    .Q(\recv.sm.xdata[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1543_ (.CLK(clk_48),
    .D(_0105_),
    .RESET_B(rst_n),
    .Q(\recv.sm.xdata[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1544_ (.CLK(clk_48),
    .D(_0106_),
    .RESET_B(rst_n),
    .Q(\recv.sm.xdata[6] ));
 sky130_fd_sc_hd__dfxtp_2 _1567_ (.CLK(clk_48),
    .D(_0129_),
    .Q(\recv.sm.shift_reg[1] ));
 sky130_fd_sc_hd__dfxtp_2 _1568_ (.CLK(clk_48),
    .D(_0130_),
    .Q(\recv.sm.shift_reg[2] ));
 sky130_fd_sc_hd__dfxtp_2 _1569_ (.CLK(clk_48),
    .D(_0131_),
    .Q(\recv.sm.shift_reg[3] ));
 sky130_fd_sc_hd__dfxtp_2 _1570_ (.CLK(clk_48),
    .D(_0132_),
    .Q(\recv.sm.shift_reg[4] ));
 sky130_fd_sc_hd__dfxtp_2 _1571_ (.CLK(clk_48),
    .D(_0133_),
    .Q(\recv.sm.shift_reg[5] ));
 sky130_fd_sc_hd__dfxtp_2 _1572_ (.CLK(clk_48),
    .D(_0134_),
    .Q(\recv.sm.shift_reg[6] ));
endmodule
module usb_partition3 (clk_48,
    rst_n,
    usb_rst,
    partition__0348_,
    partition__0349_,
    \partition_recv.reset_detect.cntr[1] ,
    \partition_recv.reset_detect.cntr[3] ,
    \partition_recv.reset_detect.cntr[5] ,
    partition__0433_,
    \partition_recv.reset_detect.cntr[11] ,
    \partition_recv.reset_detect.cntr[12] ,
    partition__0596_,
    partition__0078_,
    partition__0604_,
    partition__0080_,
    partition__0082_,
    \partition_recv.reset_detect.cntr[8] ,
    partition__0354_,
    partition__0085_,
    partition__0619_,
    partition__0622_,
    partition__0624_,
    partition__0089_,
    partition__0363_,
    partition__0364_,
    partition__0652_,
    \partition_recv.sm.xdata[3] ,
    partition__0169_,
    \partition_recv.sync_detect.data[1] ,
    partition__0172_,
    \partition_recv.sync_detect.data[4] ,
    partition__0173_,
    \partition_recv.sync_detect.data[5] ,
    partition__0174_,
    \partition_recv.sync_detect.data[6] );
 input clk_48;
 input rst_n;
 output usb_rst;
 input partition__0348_;
 output partition__0349_;
 input \partition_recv.reset_detect.cntr[1] ;
 input \partition_recv.reset_detect.cntr[3] ;
 input \partition_recv.reset_detect.cntr[5] ;
 input partition__0433_;
 input \partition_recv.reset_detect.cntr[11] ;
 input \partition_recv.reset_detect.cntr[12] ;
 output partition__0596_;
 output partition__0078_;
 input partition__0604_;
 output partition__0080_;
 output partition__0082_;
 input \partition_recv.reset_detect.cntr[8] ;
 input partition__0354_;
 output partition__0085_;
 output partition__0619_;
 output partition__0622_;
 output partition__0624_;
 output partition__0089_;
 input partition__0363_;
 input partition__0364_;
 input partition__0652_;
 output \partition_recv.sm.xdata[3] ;
 input partition__0169_;
 output \partition_recv.sync_detect.data[1] ;
 input partition__0172_;
 output \partition_recv.sync_detect.data[4] ;
 input partition__0173_;
 output \partition_recv.sync_detect.data[5] ;
 input partition__0174_;
 output \partition_recv.sync_detect.data[6] ;

 wire _0077_;
 wire _0079_;
 wire _0081_;
 wire _0083_;
 wire _0084_;
 wire _0090_;
 wire _0091_;
 wire _0092_;
 wire _0093_;
 wire _0094_;
 wire _0095_;
 wire _0103_;
 wire _0431_;
 wire _0432_;
 wire _0434_;
 wire _0435_;
 wire _0436_;
 wire _0437_;
 wire _0438_;
 wire _0439_;
 wire _0440_;
 wire _0593_;
 wire _0594_;
 wire _0595_;
 wire _0597_;
 wire _0598_;
 wire _0599_;
 wire _0600_;
 wire _0601_;
 wire _0602_;
 wire _0603_;
 wire _0605_;
 wire _0606_;
 wire _0607_;
 wire _0608_;
 wire _0609_;
 wire _0610_;
 wire _0611_;
 wire _0612_;
 wire _0613_;
 wire _0614_;
 wire _0615_;
 wire _0616_;
 wire _0617_;
 wire _0618_;
 wire _0626_;
 wire _0627_;
 wire _0628_;
 wire _0629_;
 wire _0630_;
 wire _0631_;
 wire _0632_;
 wire _0633_;
 wire _0634_;
 wire _0635_;
 wire _0636_;
 wire _0637_;
 wire _0638_;
 wire _0639_;
 wire \recv.reset_detect.cntr[0] ;
 wire \recv.reset_detect.cntr[13] ;
 wire \recv.reset_detect.cntr[14] ;
 wire \recv.reset_detect.cntr[15] ;
 wire \recv.reset_detect.cntr[16] ;
 wire \recv.reset_detect.cntr[17] ;
 wire \recv.reset_detect.cntr[18] ;
 wire \recv.reset_detect.cntr[2] ;
 wire \recv.reset_detect.cntr[4] ;
 wire \recv.reset_detect.cntr[6] ;
 wire \recv.reset_detect.cntr[7] ;

 sky130_fd_sc_hd__buf_1 _0816_ (.A(partition__0348_),
    .X(partition__0349_));
 sky130_fd_sc_hd__nor4_2 _0905_ (.A(\recv.reset_detect.cntr[0] ),
    .B(\partition_recv.reset_detect.cntr[1] ),
    .C(\partition_recv.reset_detect.cntr[3] ),
    .D(\recv.reset_detect.cntr[2] ),
    .Y(_0431_));
 sky130_fd_sc_hd__nor3_2 _0906_ (.A(\partition_recv.reset_detect.cntr[5] ),
    .B(\recv.reset_detect.cntr[4] ),
    .C(\recv.reset_detect.cntr[6] ),
    .Y(_0432_));
 sky130_fd_sc_hd__inv_2 _0908_ (.A(\recv.reset_detect.cntr[7] ),
    .Y(_0434_));
 sky130_fd_sc_hd__nand4_2 _0909_ (.A(_0431_),
    .B(_0432_),
    .C(partition__0433_),
    .D(_0434_),
    .Y(_0435_));
 sky130_fd_sc_hd__or3_2 _0910_ (.A(\partition_recv.reset_detect.cntr[11] ),
    .B(\recv.reset_detect.cntr[13] ),
    .C(\partition_recv.reset_detect.cntr[12] ),
    .X(_0436_));
 sky130_fd_sc_hd__nor2_2 _0911_ (.A(_0435_),
    .B(_0436_),
    .Y(_0437_));
 sky130_fd_sc_hd__nor2_2 _0912_ (.A(\recv.reset_detect.cntr[15] ),
    .B(\recv.reset_detect.cntr[14] ),
    .Y(_0438_));
 sky130_fd_sc_hd__nor2_2 _0913_ (.A(\recv.reset_detect.cntr[17] ),
    .B(\recv.reset_detect.cntr[16] ),
    .Y(_0439_));
 sky130_fd_sc_hd__nand4b_2 _0914_ (.A_N(\recv.reset_detect.cntr[18] ),
    .B(_0437_),
    .C(_0438_),
    .D(_0439_),
    .Y(_0440_));
 sky130_fd_sc_hd__inv_2 _0915_ (.A(_0440_),
    .Y(usb_rst));
 sky130_fd_sc_hd__buf_1 _1146_ (.A(\recv.reset_detect.cntr[0] ),
    .X(_0593_));
 sky130_fd_sc_hd__nand3_2 _1147_ (.A(_0437_),
    .B(_0438_),
    .C(_0439_),
    .Y(_0594_));
 sky130_fd_sc_hd__o21ai_2 _1148_ (.A1(\recv.reset_detect.cntr[18] ),
    .A2(_0594_),
    .B1(partition__0348_),
    .Y(_0595_));
 sky130_fd_sc_hd__buf_1 _1149_ (.A(_0595_),
    .X(partition__0596_));
 sky130_fd_sc_hd__nor2_2 _1150_ (.A(_0593_),
    .B(partition__0596_),
    .Y(_0077_));
 sky130_fd_sc_hd__buf_1 _1151_ (.A(\partition_recv.reset_detect.cntr[1] ),
    .X(_0597_));
 sky130_fd_sc_hd__or2_2 _1152_ (.A(_0593_),
    .B(_0597_),
    .X(_0598_));
 sky130_fd_sc_hd__nand2_2 _1153_ (.A(_0593_),
    .B(_0597_),
    .Y(_0599_));
 sky130_fd_sc_hd__a21oi_2 _1154_ (.A1(_0598_),
    .A2(_0599_),
    .B1(partition__0596_),
    .Y(partition__0078_));
 sky130_fd_sc_hd__nor3_2 _1155_ (.A(\recv.reset_detect.cntr[0] ),
    .B(_0597_),
    .C(\recv.reset_detect.cntr[2] ),
    .Y(_0600_));
 sky130_fd_sc_hd__o21a_2 _1156_ (.A1(_0593_),
    .A2(_0597_),
    .B1(\recv.reset_detect.cntr[2] ),
    .X(_0601_));
 sky130_fd_sc_hd__buf_1 _1157_ (.A(\recv.reset_detect.cntr[18] ),
    .X(_0602_));
 sky130_fd_sc_hd__buf_1 _1158_ (.A(_0594_),
    .X(_0603_));
 sky130_fd_sc_hd__o221a_2 _1160_ (.A1(_0600_),
    .A2(_0601_),
    .B1(_0602_),
    .B2(_0603_),
    .C1(partition__0604_),
    .X(_0079_));
 sky130_fd_sc_hd__o31a_2 _1161_ (.A1(_0593_),
    .A2(_0597_),
    .A3(\recv.reset_detect.cntr[2] ),
    .B1(\partition_recv.reset_detect.cntr[3] ),
    .X(_0605_));
 sky130_fd_sc_hd__o221a_2 _1162_ (.A1(_0431_),
    .A2(_0605_),
    .B1(_0602_),
    .B2(_0603_),
    .C1(partition__0604_),
    .X(partition__0080_));
 sky130_fd_sc_hd__buf_1 _1163_ (.A(\recv.reset_detect.cntr[4] ),
    .X(_0606_));
 sky130_fd_sc_hd__or4_2 _1164_ (.A(_0593_),
    .B(_0597_),
    .C(\partition_recv.reset_detect.cntr[3] ),
    .D(\recv.reset_detect.cntr[2] ),
    .X(_0607_));
 sky130_fd_sc_hd__nor2_2 _1165_ (.A(_0606_),
    .B(_0607_),
    .Y(_0608_));
 sky130_fd_sc_hd__o31a_2 _1166_ (.A1(\partition_recv.reset_detect.cntr[3] ),
    .A2(\recv.reset_detect.cntr[2] ),
    .A3(_0598_),
    .B1(_0606_),
    .X(_0609_));
 sky130_fd_sc_hd__o221a_2 _1167_ (.A1(_0608_),
    .A2(_0609_),
    .B1(_0602_),
    .B2(_0603_),
    .C1(partition__0604_),
    .X(_0081_));
 sky130_fd_sc_hd__or3_2 _1168_ (.A(\partition_recv.reset_detect.cntr[5] ),
    .B(_0606_),
    .C(_0607_),
    .X(_0610_));
 sky130_fd_sc_hd__o21ai_2 _1169_ (.A1(_0606_),
    .A2(_0607_),
    .B1(\partition_recv.reset_detect.cntr[5] ),
    .Y(_0611_));
 sky130_fd_sc_hd__a21oi_2 _1170_ (.A1(_0610_),
    .A2(_0611_),
    .B1(partition__0596_),
    .Y(partition__0082_));
 sky130_fd_sc_hd__inv_2 _1171_ (.A(\partition_recv.reset_detect.cntr[3] ),
    .Y(_0612_));
 sky130_fd_sc_hd__and3_2 _1172_ (.A(_0600_),
    .B(_0432_),
    .C(_0612_),
    .X(_0613_));
 sky130_fd_sc_hd__o31a_2 _1173_ (.A1(\partition_recv.reset_detect.cntr[5] ),
    .A2(_0606_),
    .A3(_0607_),
    .B1(\recv.reset_detect.cntr[6] ),
    .X(_0614_));
 sky130_fd_sc_hd__o221a_2 _1174_ (.A1(_0613_),
    .A2(_0614_),
    .B1(_0603_),
    .B2(_0602_),
    .C1(partition__0349_),
    .X(_0083_));
 sky130_fd_sc_hd__and3_2 _1175_ (.A(_0431_),
    .B(_0432_),
    .C(_0434_),
    .X(_0615_));
 sky130_fd_sc_hd__o41a_2 _1176_ (.A1(\partition_recv.reset_detect.cntr[5] ),
    .A2(_0606_),
    .A3(\recv.reset_detect.cntr[6] ),
    .A4(_0607_),
    .B1(\recv.reset_detect.cntr[7] ),
    .X(_0616_));
 sky130_fd_sc_hd__o221a_2 _1177_ (.A1(_0603_),
    .A2(_0602_),
    .B1(_0615_),
    .B2(_0616_),
    .C1(partition__0349_),
    .X(_0084_));
 sky130_fd_sc_hd__a31o_2 _1178_ (.A1(_0431_),
    .A2(_0432_),
    .A3(_0434_),
    .B1(\partition_recv.reset_detect.cntr[8] ),
    .X(_0617_));
 sky130_fd_sc_hd__nand2_2 _1179_ (.A(\partition_recv.reset_detect.cntr[8] ),
    .B(_0615_),
    .Y(_0618_));
 sky130_fd_sc_hd__a31o_2 _1180_ (.A1(_0440_),
    .A2(_0617_),
    .A3(_0618_),
    .B1(partition__0354_),
    .X(partition__0085_));
 sky130_fd_sc_hd__nand4_2 _1181_ (.A(_0600_),
    .B(_0432_),
    .C(_0612_),
    .D(_0434_),
    .Y(partition__0619_));
 sky130_fd_sc_hd__buf_1 _1185_ (.A(_0435_),
    .X(partition__0622_));
 sky130_fd_sc_hd__or2_2 _1188_ (.A(\partition_recv.reset_detect.cntr[11] ),
    .B(partition__0622_),
    .X(partition__0624_));
 sky130_fd_sc_hd__or3b_2 _1191_ (.A(partition__0622_),
    .B(\partition_recv.reset_detect.cntr[11] ),
    .C_N(\partition_recv.reset_detect.cntr[12] ),
    .X(_0626_));
 sky130_fd_sc_hd__o21bai_2 _1192_ (.A1(\partition_recv.reset_detect.cntr[11] ),
    .A2(partition__0622_),
    .B1_N(\partition_recv.reset_detect.cntr[12] ),
    .Y(_0627_));
 sky130_fd_sc_hd__a31o_2 _1193_ (.A1(_0440_),
    .A2(_0626_),
    .A3(_0627_),
    .B1(partition__0354_),
    .X(partition__0089_));
 sky130_fd_sc_hd__nor3_2 _1194_ (.A(\partition_recv.reset_detect.cntr[11] ),
    .B(\recv.reset_detect.cntr[13] ),
    .C(\partition_recv.reset_detect.cntr[12] ),
    .Y(_0628_));
 sky130_fd_sc_hd__nand4_2 _1195_ (.A(_0613_),
    .B(partition__0433_),
    .C(_0628_),
    .D(_0434_),
    .Y(_0629_));
 sky130_fd_sc_hd__o21ai_2 _1196_ (.A1(\partition_recv.reset_detect.cntr[12] ),
    .A2(partition__0624_),
    .B1(\recv.reset_detect.cntr[13] ),
    .Y(_0630_));
 sky130_fd_sc_hd__a21oi_2 _1197_ (.A1(_0629_),
    .A2(_0630_),
    .B1(partition__0596_),
    .Y(_0090_));
 sky130_fd_sc_hd__nand2_2 _1198_ (.A(\recv.reset_detect.cntr[14] ),
    .B(_0437_),
    .Y(_0631_));
 sky130_fd_sc_hd__a31o_2 _1199_ (.A1(_0615_),
    .A2(partition__0433_),
    .A3(_0628_),
    .B1(\recv.reset_detect.cntr[14] ),
    .X(_0632_));
 sky130_fd_sc_hd__a31o_2 _1200_ (.A1(_0440_),
    .A2(_0631_),
    .A3(_0632_),
    .B1(partition__0354_),
    .X(_0091_));
 sky130_fd_sc_hd__nand4b_2 _1201_ (.A_N(partition__0619_),
    .B(partition__0433_),
    .C(_0628_),
    .D(_0438_),
    .Y(_0633_));
 sky130_fd_sc_hd__o21ai_2 _1202_ (.A1(\recv.reset_detect.cntr[14] ),
    .A2(_0629_),
    .B1(\recv.reset_detect.cntr[15] ),
    .Y(_0634_));
 sky130_fd_sc_hd__a21oi_2 _1203_ (.A1(_0633_),
    .A2(_0634_),
    .B1(_0595_),
    .Y(_0092_));
 sky130_fd_sc_hd__o41a_2 _1204_ (.A1(\recv.reset_detect.cntr[15] ),
    .A2(_0436_),
    .A3(\recv.reset_detect.cntr[14] ),
    .A4(partition__0622_),
    .B1(\recv.reset_detect.cntr[16] ),
    .X(_0635_));
 sky130_fd_sc_hd__nor2_2 _1205_ (.A(\recv.reset_detect.cntr[16] ),
    .B(_0633_),
    .Y(_0636_));
 sky130_fd_sc_hd__o21ai_2 _1206_ (.A1(_0635_),
    .A2(_0636_),
    .B1(_0440_),
    .Y(_0637_));
 sky130_fd_sc_hd__nand2_2 _1207_ (.A(_0637_),
    .B(partition__0604_),
    .Y(_0093_));
 sky130_fd_sc_hd__and4_2 _1208_ (.A(\recv.reset_detect.cntr[18] ),
    .B(_0437_),
    .C(_0438_),
    .D(_0439_),
    .X(_0638_));
 sky130_fd_sc_hd__o21ai_2 _1209_ (.A1(\recv.reset_detect.cntr[16] ),
    .A2(_0633_),
    .B1(\recv.reset_detect.cntr[17] ),
    .Y(_0639_));
 sky130_fd_sc_hd__nand3b_2 _1210_ (.A_N(_0638_),
    .B(_0639_),
    .C(partition__0604_),
    .Y(_0094_));
 sky130_fd_sc_hd__a211o_2 _1211_ (.A1(_0603_),
    .A2(_0602_),
    .B1(partition__0363_),
    .C1(partition__0364_),
    .X(_0095_));
 sky130_fd_sc_hd__buf_1 _1232_ (.A(partition__0652_),
    .X(_0103_));
 sky130_fd_sc_hd__dfrtp_2 _1515_ (.CLK(clk_48),
    .D(_0077_),
    .RESET_B(rst_n),
    .Q(\recv.reset_detect.cntr[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1517_ (.CLK(clk_48),
    .D(_0079_),
    .RESET_B(rst_n),
    .Q(\recv.reset_detect.cntr[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1519_ (.CLK(clk_48),
    .D(_0081_),
    .RESET_B(rst_n),
    .Q(\recv.reset_detect.cntr[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1521_ (.CLK(clk_48),
    .D(_0083_),
    .RESET_B(rst_n),
    .Q(\recv.reset_detect.cntr[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1522_ (.CLK(clk_48),
    .D(_0084_),
    .RESET_B(rst_n),
    .Q(\recv.reset_detect.cntr[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1528_ (.CLK(clk_48),
    .D(_0090_),
    .RESET_B(rst_n),
    .Q(\recv.reset_detect.cntr[13] ));
 sky130_fd_sc_hd__dfrtp_2 _1529_ (.CLK(clk_48),
    .D(_0091_),
    .RESET_B(rst_n),
    .Q(\recv.reset_detect.cntr[14] ));
 sky130_fd_sc_hd__dfrtp_2 _1530_ (.CLK(clk_48),
    .D(_0092_),
    .RESET_B(rst_n),
    .Q(\recv.reset_detect.cntr[15] ));
 sky130_fd_sc_hd__dfrtp_2 _1531_ (.CLK(clk_48),
    .D(_0093_),
    .RESET_B(rst_n),
    .Q(\recv.reset_detect.cntr[16] ));
 sky130_fd_sc_hd__dfrtp_2 _1532_ (.CLK(clk_48),
    .D(_0094_),
    .RESET_B(rst_n),
    .Q(\recv.reset_detect.cntr[17] ));
 sky130_fd_sc_hd__dfrtp_2 _1533_ (.CLK(clk_48),
    .D(_0095_),
    .RESET_B(rst_n),
    .Q(\recv.reset_detect.cntr[18] ));
 sky130_fd_sc_hd__dfrtp_2 _1541_ (.CLK(clk_48),
    .D(_0103_),
    .RESET_B(rst_n),
    .Q(\partition_recv.sm.xdata[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1620_ (.CLK(clk_48),
    .D(partition__0169_),
    .RESET_B(rst_n),
    .Q(\partition_recv.sync_detect.data[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1623_ (.CLK(clk_48),
    .D(partition__0172_),
    .RESET_B(rst_n),
    .Q(\partition_recv.sync_detect.data[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1624_ (.CLK(clk_48),
    .D(partition__0173_),
    .RESET_B(rst_n),
    .Q(\partition_recv.sync_detect.data[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1625_ (.CLK(clk_48),
    .D(partition__0174_),
    .RESET_B(rst_n),
    .Q(\partition_recv.sync_detect.data[6] ));
endmodule
module usb_partition4 (clk_48,
    data_in_valid,
    data_toggle,
    rst_n,
    transaction_active,
    tx_en,
    tx_j,
    tx_se0,
    \partition_tx.state[2] ,
    \partition_tx.crc_out ,
    partition__0256_,
    \partition_tx.tx_clock[0] ,
    partition__0263_,
    \partition_recv.sm.xpacket ,
    partition__0270_,
    partition__0273_,
    \partition_tx.tx_clock[1] ,
    partition__0277_,
    partition__0269_,
    partition__0282_,
    \partition_tx.bit_stuff_counter[0] ,
    partition__0319_,
    partition__0320_,
    partition__0309_,
    partition__0331_,
    partition__0333_,
    \partition_recv.sm.state[1] ,
    partition__0335_,
    partition__0352_,
    partition__0354_,
    partition__0355_,
    partition__0356_,
    partition__0341_,
    partition__0349_,
    partition__0348_,
    partition__0358_,
    partition__0392_,
    partition__0393_,
    partition_recv_queue_1_valid,
    partition__0283_,
    partition__0412_,
    partition__0417_,
    partition__0416_,
    partition__0424_,
    partition__0426_,
    \partition_recv.sm.xdatastrobe ,
    partition__0430_,
    partition__0441_,
    partition__0361_,
    \partition_recv.sm.shift_reg[7] ,
    partition__0002_,
    \partition_tx.tx_crc.rst_n ,
    partition__0465_,
    partition__0467_,
    partition__0479_,
    partition__0712_,
    partition__0711_,
    partition__0490_,
    partition__0492_,
    partition__0423_,
    partition__0525_,
    partition__0681_,
    partition__0111_,
    partition__0640_,
    partition__0154_,
    partition__0220_,
    data_in,
    handshake);
 input clk_48;
 input data_in_valid;
 input data_toggle;
 input rst_n;
 output transaction_active;
 output tx_en;
 output tx_j;
 output tx_se0;
 input \partition_tx.state[2] ;
 input \partition_tx.crc_out ;
 input partition__0256_;
 input \partition_tx.tx_clock[0] ;
 output partition__0263_;
 input \partition_recv.sm.xpacket ;
 output partition__0270_;
 input partition__0273_;
 input \partition_tx.tx_clock[1] ;
 output partition__0277_;
 input partition__0269_;
 output partition__0282_;
 input \partition_tx.bit_stuff_counter[0] ;
 output partition__0319_;
 input partition__0320_;
 input partition__0309_;
 input partition__0331_;
 input partition__0333_;
 input \partition_recv.sm.state[1] ;
 input partition__0335_;
 input partition__0352_;
 input partition__0354_;
 input partition__0355_;
 input partition__0356_;
 input partition__0341_;
 input partition__0349_;
 input partition__0348_;
 output partition__0358_;
 input partition__0392_;
 output partition__0393_;
 output partition_recv_queue_1_valid;
 input partition__0283_;
 input partition__0412_;
 input partition__0417_;
 input partition__0416_;
 input partition__0424_;
 input partition__0426_;
 input \partition_recv.sm.xdatastrobe ;
 input partition__0430_;
 input partition__0441_;
 input partition__0361_;
 output \partition_recv.sm.shift_reg[7] ;
 output partition__0002_;
 output \partition_tx.tx_crc.rst_n ;
 input partition__0465_;
 output partition__0467_;
 input partition__0479_;
 output partition__0712_;
 output partition__0711_;
 output partition__0490_;
 output partition__0492_;
 input partition__0423_;
 input partition__0525_;
 input partition__0681_;
 output partition__0111_;
 input partition__0640_;
 output partition__0154_;
 output partition__0220_;
 input [7:0] data_in;
 input [1:0] handshake;

 wire _0000_;
 wire _0004_;
 wire _0005_;
 wire _0006_;
 wire _0007_;
 wire _0008_;
 wire _0009_;
 wire _0010_;
 wire _0011_;
 wire _0016_;
 wire _0017_;
 wire _0039_;
 wire _0040_;
 wire _0041_;
 wire _0042_;
 wire _0043_;
 wire _0044_;
 wire _0045_;
 wire _0046_;
 wire _0047_;
 wire _0048_;
 wire _0050_;
 wire _0067_;
 wire _0068_;
 wire _0135_;
 wire _0149_;
 wire _0150_;
 wire _0151_;
 wire _0152_;
 wire _0153_;
 wire _0158_;
 wire _0159_;
 wire _0160_;
 wire _0161_;
 wire _0162_;
 wire _0163_;
 wire _0164_;
 wire _0165_;
 wire _0166_;
 wire _0167_;
 wire _0175_;
 wire _0183_;
 wire _0199_;
 wire _0200_;
 wire _0201_;
 wire _0202_;
 wire _0203_;
 wire _0204_;
 wire _0205_;
 wire _0206_;
 wire _0207_;
 wire _0208_;
 wire _0209_;
 wire _0210_;
 wire _0211_;
 wire _0212_;
 wire _0213_;
 wire _0214_;
 wire _0215_;
 wire _0216_;
 wire _0217_;
 wire _0218_;
 wire _0219_;
 wire _0229_;
 wire _0230_;
 wire _0231_;
 wire _0232_;
 wire _0233_;
 wire _0234_;
 wire _0235_;
 wire _0236_;
 wire _0237_;
 wire _0238_;
 wire _0239_;
 wire _0240_;
 wire _0241_;
 wire _0242_;
 wire _0243_;
 wire _0244_;
 wire _0245_;
 wire _0246_;
 wire _0252_;
 wire _0253_;
 wire _0254_;
 wire _0255_;
 wire _0257_;
 wire _0258_;
 wire _0259_;
 wire _0260_;
 wire _0261_;
 wire _0262_;
 wire _0271_;
 wire _0272_;
 wire _0274_;
 wire _0275_;
 wire _0276_;
 wire _0278_;
 wire _0279_;
 wire _0310_;
 wire _0311_;
 wire _0312_;
 wire _0313_;
 wire _0314_;
 wire _0315_;
 wire _0316_;
 wire _0317_;
 wire _0318_;
 wire _0321_;
 wire _0322_;
 wire _0323_;
 wire _0324_;
 wire _0325_;
 wire _0326_;
 wire _0327_;
 wire _0328_;
 wire _0329_;
 wire _0330_;
 wire _0332_;
 wire _0334_;
 wire _0336_;
 wire _0357_;
 wire _0394_;
 wire _0395_;
 wire _0396_;
 wire _0397_;
 wire _0398_;
 wire _0399_;
 wire _0400_;
 wire _0401_;
 wire _0402_;
 wire _0403_;
 wire _0404_;
 wire _0405_;
 wire _0406_;
 wire _0407_;
 wire _0408_;
 wire _0409_;
 wire _0410_;
 wire _0411_;
 wire _0413_;
 wire _0418_;
 wire _0425_;
 wire _0427_;
 wire _0428_;
 wire _0429_;
 wire _0442_;
 wire _0443_;
 wire _0444_;
 wire _0445_;
 wire _0446_;
 wire _0447_;
 wire _0448_;
 wire _0449_;
 wire _0451_;
 wire _0452_;
 wire _0453_;
 wire _0454_;
 wire _0455_;
 wire _0466_;
 wire _0480_;
 wire _0481_;
 wire _0482_;
 wire _0483_;
 wire _0485_;
 wire _0486_;
 wire _0487_;
 wire _0488_;
 wire _0489_;
 wire _0491_;
 wire _0522_;
 wire _0523_;
 wire _0524_;
 wire _0526_;
 wire _0527_;
 wire _0528_;
 wire _0529_;
 wire _0530_;
 wire _0531_;
 wire _0532_;
 wire _0533_;
 wire _0534_;
 wire _0535_;
 wire _0536_;
 wire _0537_;
 wire _0538_;
 wire _0539_;
 wire _0540_;
 wire _0541_;
 wire _0542_;
 wire _0543_;
 wire _0544_;
 wire _0545_;
 wire _0546_;
 wire _0547_;
 wire _0548_;
 wire _0549_;
 wire _0550_;
 wire _0551_;
 wire _0552_;
 wire _0553_;
 wire _0554_;
 wire _0555_;
 wire _0556_;
 wire _0557_;
 wire _0558_;
 wire _0559_;
 wire _0560_;
 wire _0561_;
 wire _0562_;
 wire _0583_;
 wire _0584_;
 wire _0682_;
 wire \handshake_latch[0] ;
 wire \handshake_latch[1] ;
 wire \recv.short_idle_counter[0] ;
 wire \recv.short_idle_counter[1] ;
 wire \recv.short_idle_counter[2] ;
 wire \recv.sm.state[0] ;
 wire recv_queue_0_valid;
 wire \state[0] ;
 wire \state[1] ;
 wire \state[2] ;
 wire \state[3] ;
 wire \state[4] ;
 wire \state[6] ;
 wire \state[7] ;
 wire \tx.crc_enabled ;
 wire \tx.data[0] ;
 wire \tx.data[1] ;
 wire \tx.data[2] ;
 wire \tx.data[3] ;
 wire \tx.data[4] ;
 wire \tx.data[5] ;
 wire \tx.data[6] ;
 wire \tx.data[7] ;
 wire \tx.last_j ;
 wire \tx.send_crc16 ;
 wire \tx.state[0] ;
 wire \tx.state[1] ;
 wire \tx.transmit ;
 wire \tx.tx_data[0] ;
 wire \tx.tx_data[1] ;
 wire \tx.tx_data[2] ;
 wire \tx.tx_data[3] ;
 wire \tx.tx_data[4] ;
 wire \tx.tx_data[5] ;
 wire \tx.tx_data[6] ;
 wire \tx.tx_data[7] ;
 wire \tx.tx_data[8] ;
 wire \tx.update_crc16 ;

 sky130_fd_sc_hd__inv_2 _0713_ (.A(\tx.state[0] ),
    .Y(_0253_));
 sky130_fd_sc_hd__inv_2 _0714_ (.A(\tx.state[1] ),
    .Y(_0254_));
 sky130_fd_sc_hd__buf_1 _0715_ (.A(_0254_),
    .X(_0255_));
 sky130_fd_sc_hd__buf_1 _0717_ (.A(\tx.state[1] ),
    .X(_0257_));
 sky130_fd_sc_hd__nand3_2 _0718_ (.A(\partition_tx.state[2] ),
    .B(_0257_),
    .C(\partition_tx.crc_out ),
    .Y(_0258_));
 sky130_fd_sc_hd__a21o_2 _0719_ (.A1(\partition_tx.state[2] ),
    .A2(\tx.state[1] ),
    .B1(\tx.tx_data[0] ),
    .X(_0259_));
 sky130_fd_sc_hd__a31oi_2 _0720_ (.A1(partition__0256_),
    .A2(_0258_),
    .A3(_0259_),
    .B1(\tx.last_j ),
    .Y(_0260_));
 sky130_fd_sc_hd__and4_2 _0721_ (.A(partition__0256_),
    .B(_0258_),
    .C(_0259_),
    .D(\tx.last_j ),
    .X(_0261_));
 sky130_fd_sc_hd__a211o_2 _0722_ (.A1(_0253_),
    .A2(_0255_),
    .B1(_0260_),
    .C1(_0261_),
    .X(tx_j));
 sky130_fd_sc_hd__or3_2 _0723_ (.A(\partition_tx.state[2] ),
    .B(\tx.state[0] ),
    .C(\tx.state[1] ),
    .X(_0262_));
 sky130_fd_sc_hd__buf_1 _0724_ (.A(_0262_),
    .X(tx_en));
 sky130_fd_sc_hd__buf_1 _0725_ (.A(\partition_tx.tx_clock[0] ),
    .X(partition__0263_));
 sky130_fd_sc_hd__buf_1 _0733_ (.A(\partition_recv.sm.xpacket ),
    .X(partition__0270_));
 sky130_fd_sc_hd__buf_1 _0734_ (.A(partition__0270_),
    .X(_0271_));
 sky130_fd_sc_hd__and2_2 _0735_ (.A(_0271_),
    .B(\state[0] ),
    .X(_0272_));
 sky130_fd_sc_hd__xor2_2 _0737_ (.A(data_toggle),
    .B(partition__0273_),
    .X(_0274_));
 sky130_fd_sc_hd__nor4_2 _0738_ (.A(\tx.tx_data[3] ),
    .B(\tx.tx_data[2] ),
    .C(\tx.tx_data[5] ),
    .D(\tx.tx_data[4] ),
    .Y(_0275_));
 sky130_fd_sc_hd__nor2_2 _0739_ (.A(\partition_tx.tx_clock[0] ),
    .B(\partition_tx.tx_clock[1] ),
    .Y(_0276_));
 sky130_fd_sc_hd__buf_1 _0740_ (.A(_0276_),
    .X(partition__0277_));
 sky130_fd_sc_hd__nor4b_2 _0741_ (.A(\tx.tx_data[7] ),
    .B(\tx.tx_data[6] ),
    .C(\tx.tx_data[8] ),
    .D_N(\tx.transmit ),
    .Y(_0278_));
 sky130_fd_sc_hd__nand4_2 _0742_ (.A(_0275_),
    .B(partition__0277_),
    .C(_0278_),
    .D(partition__0256_),
    .Y(_0279_));
 sky130_fd_sc_hd__a32o_2 _0743_ (.A1(partition__0269_),
    .A2(_0272_),
    .A3(_0274_),
    .B1(_0279_),
    .B2(\state[7] ),
    .X(_0011_));
 sky130_fd_sc_hd__nand2b_2 _0747_ (.A_N(\partition_recv.sm.xpacket ),
    .B(\state[4] ),
    .Y(partition__0282_));
 sky130_fd_sc_hd__buf_1 _0775_ (.A(handshake[1]),
    .X(_0310_));
 sky130_fd_sc_hd__nor4_2 _0776_ (.A(\recv.short_idle_counter[2] ),
    .B(\recv.short_idle_counter[1] ),
    .C(\recv.short_idle_counter[0] ),
    .D(\tx.transmit ),
    .Y(_0311_));
 sky130_fd_sc_hd__buf_1 _0777_ (.A(_0311_),
    .X(_0312_));
 sky130_fd_sc_hd__a21bo_2 _0778_ (.A1(_0310_),
    .A2(_0312_),
    .B1_N(\state[1] ),
    .X(_0313_));
 sky130_fd_sc_hd__nor2_2 _0779_ (.A(\tx.tx_data[3] ),
    .B(\tx.tx_data[2] ),
    .Y(_0314_));
 sky130_fd_sc_hd__nor2_2 _0780_ (.A(\tx.tx_data[5] ),
    .B(\tx.tx_data[4] ),
    .Y(_0315_));
 sky130_fd_sc_hd__nor2_2 _0781_ (.A(\tx.tx_data[7] ),
    .B(\tx.tx_data[6] ),
    .Y(_0316_));
 sky130_fd_sc_hd__inv_2 _0782_ (.A(\tx.tx_data[8] ),
    .Y(_0317_));
 sky130_fd_sc_hd__nand4_2 _0783_ (.A(_0314_),
    .B(_0315_),
    .C(_0316_),
    .D(_0317_),
    .Y(_0318_));
 sky130_fd_sc_hd__buf_1 _0784_ (.A(\partition_tx.bit_stuff_counter[0] ),
    .X(partition__0319_));
 sky130_fd_sc_hd__buf_1 _0786_ (.A(\tx.transmit ),
    .X(_0321_));
 sky130_fd_sc_hd__o211ai_2 _0787_ (.A1(partition__0319_),
    .A2(partition__0320_),
    .B1(_0276_),
    .C1(_0321_),
    .Y(_0322_));
 sky130_fd_sc_hd__a211o_2 _0788_ (.A1(\state[1] ),
    .A2(data_in_valid),
    .B1(_0318_),
    .C1(_0322_),
    .X(_0323_));
 sky130_fd_sc_hd__a21bo_2 _0789_ (.A1(_0279_),
    .A2(_0313_),
    .B1_N(_0323_),
    .X(_0324_));
 sky130_fd_sc_hd__o21ai_2 _0790_ (.A1(partition__0282_),
    .A2(partition__0309_),
    .B1(_0324_),
    .Y(_0005_));
 sky130_fd_sc_hd__buf_1 _0791_ (.A(\recv.short_idle_counter[2] ),
    .X(_0325_));
 sky130_fd_sc_hd__or2_2 _0792_ (.A(\recv.short_idle_counter[1] ),
    .B(\recv.short_idle_counter[0] ),
    .X(_0326_));
 sky130_fd_sc_hd__and2b_2 _0793_ (.A_N(\handshake_latch[1] ),
    .B(\handshake_latch[0] ),
    .X(_0327_));
 sky130_fd_sc_hd__or4b_2 _0794_ (.A(_0325_),
    .B(_0321_),
    .C(_0326_),
    .D_N(_0327_),
    .X(_0328_));
 sky130_fd_sc_hd__buf_1 _0795_ (.A(\state[6] ),
    .X(_0329_));
 sky130_fd_sc_hd__buf_1 _0796_ (.A(\state[1] ),
    .X(_0330_));
 sky130_fd_sc_hd__and2b_2 _0798_ (.A_N(partition__0331_),
    .B(\state[4] ),
    .X(_0332_));
 sky130_fd_sc_hd__a32o_2 _0800_ (.A1(_0310_),
    .A2(_0330_),
    .A3(_0312_),
    .B1(_0332_),
    .B2(partition__0333_),
    .X(_0334_));
 sky130_fd_sc_hd__a31o_2 _0801_ (.A1(_0328_),
    .A2(_0329_),
    .A3(_0279_),
    .B1(_0334_),
    .X(_0010_));
 sky130_fd_sc_hd__or3_2 _0803_ (.A(_0271_),
    .B(\partition_recv.sm.state[1] ),
    .C(partition__0335_),
    .X(_0336_));
 sky130_fd_sc_hd__nand4_2 _0824_ (.A(partition__0352_),
    .B(partition__0354_),
    .C(partition__0355_),
    .D(partition__0356_),
    .Y(_0357_));
 sky130_fd_sc_hd__a32o_2 _0825_ (.A1(_0336_),
    .A2(partition__0341_),
    .A3(partition__0349_),
    .B1(_0357_),
    .B2(\recv.sm.state[0] ),
    .X(_0000_));
 sky130_fd_sc_hd__nand2_2 _0826_ (.A(partition__0341_),
    .B(partition__0348_),
    .Y(partition__0358_));
 sky130_fd_sc_hd__buf_1 _0862_ (.A(partition__0392_),
    .X(partition__0393_));
 sky130_fd_sc_hd__buf_1 _0864_ (.A(data_in_valid),
    .X(_0394_));
 sky130_fd_sc_hd__or3_2 _0865_ (.A(_0310_),
    .B(handshake[0]),
    .C(_0394_),
    .X(_0395_));
 sky130_fd_sc_hd__nor2_2 _0866_ (.A(_0318_),
    .B(_0322_),
    .Y(_0396_));
 sky130_fd_sc_hd__nand2_2 _0867_ (.A(_0330_),
    .B(_0396_),
    .Y(_0397_));
 sky130_fd_sc_hd__buf_1 _0868_ (.A(\partition_tx.state[2] ),
    .X(_0398_));
 sky130_fd_sc_hd__buf_1 _0869_ (.A(_0398_),
    .X(_0399_));
 sky130_fd_sc_hd__buf_1 _0870_ (.A(\tx.state[0] ),
    .X(_0400_));
 sky130_fd_sc_hd__buf_1 _0871_ (.A(_0257_),
    .X(_0401_));
 sky130_fd_sc_hd__or4_2 _0872_ (.A(_0399_),
    .B(_0400_),
    .C(_0401_),
    .D(_0271_),
    .X(_0402_));
 sky130_fd_sc_hd__a2bb2o_2 _0873_ (.A1_N(_0395_),
    .A2_N(_0397_),
    .B1(\tx.send_crc16 ),
    .B2(_0402_),
    .X(_0009_));
 sky130_fd_sc_hd__nor2_2 _0874_ (.A(handshake[1]),
    .B(handshake[0]),
    .Y(_0403_));
 sky130_fd_sc_hd__and4bb_2 _0875_ (.A_N(_0394_),
    .B_N(_0403_),
    .C(_0396_),
    .D(_0330_),
    .X(_0404_));
 sky130_fd_sc_hd__nor2_2 _0876_ (.A(\state[7] ),
    .B(\state[6] ),
    .Y(_0405_));
 sky130_fd_sc_hd__buf_1 _0877_ (.A(_0405_),
    .X(_0406_));
 sky130_fd_sc_hd__a21oi_2 _0878_ (.A1(_0271_),
    .A2(\state[3] ),
    .B1(\state[2] ),
    .Y(_0407_));
 sky130_fd_sc_hd__nor2_2 _0879_ (.A(_0271_),
    .B(tx_en),
    .Y(_0408_));
 sky130_fd_sc_hd__o22a_2 _0880_ (.A1(_0279_),
    .A2(_0406_),
    .B1(_0407_),
    .B2(_0408_),
    .X(_0409_));
 sky130_fd_sc_hd__buf_1 _0881_ (.A(\state[4] ),
    .X(_0410_));
 sky130_fd_sc_hd__inv_2 _0882_ (.A(partition_recv_queue_1_valid),
    .Y(_0411_));
 sky130_fd_sc_hd__o21ai_2 _0884_ (.A1(partition__0283_),
    .A2(_0411_),
    .B1(partition__0412_),
    .Y(_0413_));
 sky130_fd_sc_hd__and3_2 _0889_ (.A(partition__0417_),
    .B(\state[0] ),
    .C(partition__0270_),
    .X(_0418_));
 sky130_fd_sc_hd__a32oi_2 _0896_ (.A1(_0410_),
    .A2(_0413_),
    .A3(partition__0416_),
    .B1(_0418_),
    .B2(partition__0424_),
    .Y(_0425_));
 sky130_fd_sc_hd__nand3b_2 _0897_ (.A_N(_0404_),
    .B(_0409_),
    .C(_0425_),
    .Y(_0006_));
 sky130_fd_sc_hd__nand4_2 _0899_ (.A(partition__0355_),
    .B(partition__0426_),
    .C(_0413_),
    .D(\partition_recv.sm.xdatastrobe ),
    .Y(_0427_));
 sky130_fd_sc_hd__o21ai_2 _0900_ (.A1(partition__0424_),
    .A2(_0274_),
    .B1(partition__0417_),
    .Y(_0428_));
 sky130_fd_sc_hd__a32o_2 _0901_ (.A1(partition__0393_),
    .A2(_0410_),
    .A3(_0427_),
    .B1(_0428_),
    .B2(_0272_),
    .X(_0008_));
 sky130_fd_sc_hd__or2b_2 _0902_ (.A(\partition_recv.sm.xpacket ),
    .B_N(\state[3] ),
    .X(_0429_));
 sky130_fd_sc_hd__a2bb2o_2 _0904_ (.A1_N(_0429_),
    .A2_N(partition__0430_),
    .B1(\tx.send_crc16 ),
    .B2(_0408_),
    .X(_0007_));
 sky130_fd_sc_hd__or3b_2 _0917_ (.A(partition__0441_),
    .B(partition__0361_),
    .C_N(\partition_recv.sm.shift_reg[7] ),
    .X(_0442_));
 sky130_fd_sc_hd__and4_2 _0918_ (.A(partition__0352_),
    .B(partition__0354_),
    .C(partition__0355_),
    .D(partition__0356_),
    .X(_0443_));
 sky130_fd_sc_hd__a32o_2 _0919_ (.A1(partition__0335_),
    .A2(partition__0358_),
    .A3(_0442_),
    .B1(_0443_),
    .B2(\recv.sm.state[0] ),
    .X(partition__0002_));
 sky130_fd_sc_hd__and2b_2 _0920_ (.A_N(partition__0333_),
    .B(_0410_),
    .X(_0444_));
 sky130_fd_sc_hd__nand2_2 _0921_ (.A(\state[3] ),
    .B(partition__0430_),
    .Y(_0445_));
 sky130_fd_sc_hd__or4b_2 _0922_ (.A(_0398_),
    .B(_0400_),
    .C(_0257_),
    .D_N(\state[2] ),
    .X(_0446_));
 sky130_fd_sc_hd__nand3b_2 _0923_ (.A_N(\state[0] ),
    .B(_0445_),
    .C(_0446_),
    .Y(_0447_));
 sky130_fd_sc_hd__a21oi_2 _0924_ (.A1(partition__0309_),
    .A2(_0444_),
    .B1(_0447_),
    .Y(_0448_));
 sky130_fd_sc_hd__and3_2 _0925_ (.A(_0329_),
    .B(_0312_),
    .C(_0327_),
    .X(_0449_));
 sky130_fd_sc_hd__o21bai_2 _0926_ (.A1(partition__0393_),
    .A2(_0448_),
    .B1_N(_0449_),
    .Y(_0004_));
 sky130_fd_sc_hd__buf_1 _0929_ (.A(_0398_),
    .X(_0451_));
 sky130_fd_sc_hd__buf_1 _0930_ (.A(_0400_),
    .X(_0452_));
 sky130_fd_sc_hd__buf_1 _0931_ (.A(_0401_),
    .X(_0453_));
 sky130_fd_sc_hd__o31a_2 _0932_ (.A1(_0451_),
    .A2(_0452_),
    .A3(_0453_),
    .B1(rst_n),
    .X(\partition_tx.tx_crc.rst_n ));
 sky130_fd_sc_hd__inv_2 _0933_ (.A(\partition_tx.state[2] ),
    .Y(_0454_));
 sky130_fd_sc_hd__and3_2 _0934_ (.A(_0454_),
    .B(partition__0256_),
    .C(_0453_),
    .X(_0455_));
 sky130_fd_sc_hd__buf_1 _0935_ (.A(_0455_),
    .X(tx_se0));
 sky130_fd_sc_hd__nor2_2 _0948_ (.A(partition__0270_),
    .B(partition__0417_),
    .Y(_0466_));
 sky130_fd_sc_hd__a31oi_2 _0949_ (.A1(\state[4] ),
    .A2(partition__0465_),
    .A3(_0466_),
    .B1(\tx.send_crc16 ),
    .Y(partition__0467_));
 sky130_fd_sc_hd__buf_1 _0969_ (.A(\handshake_latch[1] ),
    .X(_0480_));
 sky130_fd_sc_hd__and4bb_2 _0970_ (.A_N(_0271_),
    .B_N(_0480_),
    .C(partition__0333_),
    .D(_0410_),
    .X(_0481_));
 sky130_fd_sc_hd__a311o_2 _0971_ (.A1(partition__0393_),
    .A2(\state[3] ),
    .A3(partition__0479_),
    .B1(_0481_),
    .C1(_0404_),
    .X(partition__0712_));
 sky130_fd_sc_hd__and4b_2 _0972_ (.A_N(_0480_),
    .B(partition__0283_),
    .C(partition__0412_),
    .D(partition_recv_queue_1_valid),
    .X(_0482_));
 sky130_fd_sc_hd__and3_2 _0973_ (.A(_0330_),
    .B(_0394_),
    .C(_0396_),
    .X(_0483_));
 sky130_fd_sc_hd__a31o_2 _0974_ (.A1(_0410_),
    .A2(partition__0416_),
    .A3(_0482_),
    .B1(_0483_),
    .X(partition__0711_));
 sky130_fd_sc_hd__and4b_2 _0977_ (.A_N(\state[0] ),
    .B(handshake[1]),
    .C(\state[1] ),
    .D(_0312_),
    .X(_0485_));
 sky130_fd_sc_hd__a31oi_2 _0978_ (.A1(partition__0269_),
    .A2(_0313_),
    .A3(_0418_),
    .B1(_0485_),
    .Y(_0486_));
 sky130_fd_sc_hd__a311o_2 _0979_ (.A1(partition__0269_),
    .A2(_0313_),
    .A3(_0418_),
    .B1(_0485_),
    .C1(\handshake_latch[0] ),
    .X(_0487_));
 sky130_fd_sc_hd__o21a_2 _0980_ (.A1(handshake[0]),
    .A2(_0486_),
    .B1(_0487_),
    .X(_0016_));
 sky130_fd_sc_hd__a311o_2 _0981_ (.A1(partition__0269_),
    .A2(_0313_),
    .A3(_0418_),
    .B1(_0485_),
    .C1(_0480_),
    .X(_0488_));
 sky130_fd_sc_hd__o21a_2 _0982_ (.A1(_0310_),
    .A2(_0486_),
    .B1(_0488_),
    .X(_0017_));
 sky130_fd_sc_hd__a22oi_2 _0983_ (.A1(_0398_),
    .A2(_0257_),
    .B1(\tx.tx_data[0] ),
    .B2(\partition_tx.crc_out ),
    .Y(_0489_));
 sky130_fd_sc_hd__o21a_2 _0984_ (.A1(\tx.tx_data[0] ),
    .A2(\partition_tx.crc_out ),
    .B1(_0489_),
    .X(partition__0490_));
 sky130_fd_sc_hd__nor2_2 _0985_ (.A(_0454_),
    .B(_0254_),
    .Y(_0491_));
 sky130_fd_sc_hd__o221a_2 _0986_ (.A1(partition__0320_),
    .A2(\partition_tx.bit_stuff_counter[0] ),
    .B1(\tx.crc_enabled ),
    .B2(_0491_),
    .C1(_0276_),
    .X(partition__0492_));
 sky130_fd_sc_hd__nand2_2 _1037_ (.A(_0410_),
    .B(partition__0465_),
    .Y(_0522_));
 sky130_fd_sc_hd__o31ai_2 _1038_ (.A1(_0394_),
    .A2(_0403_),
    .A3(_0279_),
    .B1(_0330_),
    .Y(_0523_));
 sky130_fd_sc_hd__nand3b_2 _1039_ (.A_N(partition__0479_),
    .B(\state[3] ),
    .C(partition__0331_),
    .Y(_0524_));
 sky130_fd_sc_hd__nand3b_2 _1041_ (.A_N(\tx.send_crc16 ),
    .B(_0429_),
    .C(_0405_),
    .Y(_0526_));
 sky130_fd_sc_hd__a221oi_2 _1042_ (.A1(\state[0] ),
    .A2(partition__0423_),
    .B1(partition__0525_),
    .B2(\state[4] ),
    .C1(_0526_),
    .Y(_0527_));
 sky130_fd_sc_hd__nand3_2 _1043_ (.A(_0523_),
    .B(_0524_),
    .C(_0527_),
    .Y(_0528_));
 sky130_fd_sc_hd__nand2_2 _1044_ (.A(_0528_),
    .B(transaction_active),
    .Y(_0529_));
 sky130_fd_sc_hd__o21ai_2 _1045_ (.A1(_0522_),
    .A2(_0528_),
    .B1(_0529_),
    .Y(_0039_));
 sky130_fd_sc_hd__or2_2 _1046_ (.A(\state[7] ),
    .B(_0329_),
    .X(_0530_));
 sky130_fd_sc_hd__a2111oi_2 _1047_ (.A1(_0310_),
    .A2(_0406_),
    .B1(_0326_),
    .C1(_0325_),
    .D1(_0449_),
    .Y(_0531_));
 sky130_fd_sc_hd__o221a_2 _1048_ (.A1(_0530_),
    .A2(_0330_),
    .B1(_0321_),
    .B2(_0531_),
    .C1(_0323_),
    .X(_0040_));
 sky130_fd_sc_hd__or2b_2 _1049_ (.A(handshake[1]),
    .B_N(_0311_),
    .X(_0532_));
 sky130_fd_sc_hd__o21a_2 _1050_ (.A1(\partition_tx.bit_stuff_counter[0] ),
    .A2(partition__0320_),
    .B1(_0276_),
    .X(_0533_));
 sky130_fd_sc_hd__nand4_2 _1051_ (.A(data_in_valid),
    .B(_0275_),
    .C(_0533_),
    .D(_0278_),
    .Y(_0534_));
 sky130_fd_sc_hd__buf_1 _1052_ (.A(_0534_),
    .X(_0535_));
 sky130_fd_sc_hd__o31a_2 _1053_ (.A1(\state[7] ),
    .A2(\state[1] ),
    .A3(\state[6] ),
    .B1(rst_n),
    .X(_0536_));
 sky130_fd_sc_hd__nand3_2 _1054_ (.A(\state[6] ),
    .B(_0311_),
    .C(_0327_),
    .Y(_0537_));
 sky130_fd_sc_hd__o211ai_2 _1055_ (.A1(_0312_),
    .A2(_0405_),
    .B1(_0536_),
    .C1(_0537_),
    .Y(_0538_));
 sky130_fd_sc_hd__buf_1 _1056_ (.A(_0538_),
    .X(_0539_));
 sky130_fd_sc_hd__a21oi_2 _1057_ (.A1(_0532_),
    .A2(_0535_),
    .B1(_0539_),
    .Y(_0540_));
 sky130_fd_sc_hd__o21a_2 _1058_ (.A1(data_in[0]),
    .A2(_0535_),
    .B1(_0406_),
    .X(_0541_));
 sky130_fd_sc_hd__o22a_2 _1059_ (.A1(\tx.data[0] ),
    .A2(_0540_),
    .B1(_0541_),
    .B2(_0539_),
    .X(_0041_));
 sky130_fd_sc_hd__nand2_2 _1060_ (.A(_0406_),
    .B(_0536_),
    .Y(_0542_));
 sky130_fd_sc_hd__a31oi_2 _1061_ (.A1(_0532_),
    .A2(_0534_),
    .A3(_0406_),
    .B1(_0539_),
    .Y(_0543_));
 sky130_fd_sc_hd__o32a_2 _1062_ (.A1(data_in[1]),
    .A2(_0535_),
    .A3(_0542_),
    .B1(\tx.data[1] ),
    .B2(_0543_),
    .X(_0042_));
 sky130_fd_sc_hd__and3_2 _1063_ (.A(_0329_),
    .B(_0480_),
    .C(\handshake_latch[0] ),
    .X(_0544_));
 sky130_fd_sc_hd__a41o_2 _1064_ (.A1(_0394_),
    .A2(data_in[2]),
    .A3(_0396_),
    .A4(_0406_),
    .B1(_0544_),
    .X(_0545_));
 sky130_fd_sc_hd__o211a_2 _1065_ (.A1(_0312_),
    .A2(_0405_),
    .B1(_0536_),
    .C1(_0537_),
    .X(_0546_));
 sky130_fd_sc_hd__a31o_2 _1066_ (.A1(_0532_),
    .A2(_0534_),
    .A3(_0405_),
    .B1(_0538_),
    .X(_0547_));
 sky130_fd_sc_hd__a22o_2 _1067_ (.A1(_0545_),
    .A2(_0546_),
    .B1(\tx.data[2] ),
    .B2(_0547_),
    .X(_0043_));
 sky130_fd_sc_hd__nand2_2 _1068_ (.A(_0329_),
    .B(_0480_),
    .Y(_0548_));
 sky130_fd_sc_hd__nor4_2 _1069_ (.A(_0325_),
    .B(_0321_),
    .C(_0310_),
    .D(_0326_),
    .Y(_0549_));
 sky130_fd_sc_hd__buf_1 _1070_ (.A(_0533_),
    .X(_0550_));
 sky130_fd_sc_hd__and4_2 _1071_ (.A(data_in_valid),
    .B(_0275_),
    .C(_0550_),
    .D(_0278_),
    .X(_0551_));
 sky130_fd_sc_hd__a22oi_2 _1072_ (.A1(data_toggle),
    .A2(_0549_),
    .B1(_0551_),
    .B2(data_in[3]),
    .Y(_0552_));
 sky130_fd_sc_hd__nand2_2 _1073_ (.A(\tx.data[3] ),
    .B(_0547_),
    .Y(_0553_));
 sky130_fd_sc_hd__o221ai_2 _1074_ (.A1(_0539_),
    .A2(_0548_),
    .B1(_0552_),
    .B2(_0542_),
    .C1(_0553_),
    .Y(_0044_));
 sky130_fd_sc_hd__a31o_2 _1075_ (.A1(_0394_),
    .A2(data_in[4]),
    .A3(_0396_),
    .B1(_0530_),
    .X(_0554_));
 sky130_fd_sc_hd__a21o_2 _1076_ (.A1(_0532_),
    .A2(_0535_),
    .B1(_0539_),
    .X(_0555_));
 sky130_fd_sc_hd__a22o_2 _1077_ (.A1(_0554_),
    .A2(_0546_),
    .B1(\tx.data[4] ),
    .B2(_0555_),
    .X(_0045_));
 sky130_fd_sc_hd__nor2_2 _1078_ (.A(_0530_),
    .B(_0538_),
    .Y(_0556_));
 sky130_fd_sc_hd__a32o_2 _1079_ (.A1(data_in[5]),
    .A2(_0551_),
    .A3(_0556_),
    .B1(_0547_),
    .B2(\tx.data[5] ),
    .X(_0046_));
 sky130_fd_sc_hd__nand2_2 _1080_ (.A(_0539_),
    .B(\tx.data[6] ),
    .Y(_0557_));
 sky130_fd_sc_hd__inv_2 _1081_ (.A(\state[7] ),
    .Y(_0558_));
 sky130_fd_sc_hd__a2bb2o_2 _1082_ (.A1_N(data_in[6]),
    .A2_N(_0535_),
    .B1(_0544_),
    .B2(_0558_),
    .X(_0559_));
 sky130_fd_sc_hd__o2bb2a_2 _1083_ (.A1_N(_0557_),
    .A2_N(_0559_),
    .B1(\tx.data[6] ),
    .B2(_0543_),
    .X(_0047_));
 sky130_fd_sc_hd__nand4_2 _1084_ (.A(_0329_),
    .B(_0480_),
    .C(_0546_),
    .D(_0558_),
    .Y(_0560_));
 sky130_fd_sc_hd__o2bb2ai_2 _1085_ (.A1_N(data_toggle),
    .A2_N(_0549_),
    .B1(data_in[7]),
    .B2(_0535_),
    .Y(_0561_));
 sky130_fd_sc_hd__nand2_2 _1086_ (.A(_0556_),
    .B(_0561_),
    .Y(_0562_));
 sky130_fd_sc_hd__o211a_2 _1087_ (.A1(\tx.data[7] ),
    .A2(_0543_),
    .B1(_0560_),
    .C1(_0562_),
    .X(_0048_));
 sky130_fd_sc_hd__a21o_2 _1090_ (.A1(\tx.update_crc16 ),
    .A2(_0397_),
    .B1(_0483_),
    .X(_0050_));
 sky130_fd_sc_hd__a21o_2 _1126_ (.A1(recv_queue_0_valid),
    .A2(partition__0393_),
    .B1(partition__0416_),
    .X(_0067_));
 sky130_fd_sc_hd__nand2_2 _1127_ (.A(\partition_recv.sm.xdatastrobe ),
    .B(partition__0341_),
    .Y(_0583_));
 sky130_fd_sc_hd__a31o_2 _1128_ (.A1(partition__0355_),
    .A2(partition__0426_),
    .A3(\partition_recv.sm.xdatastrobe ),
    .B1(partition_recv_queue_1_valid),
    .X(_0584_));
 sky130_fd_sc_hd__o211a_2 _1129_ (.A1(recv_queue_0_valid),
    .A2(_0583_),
    .B1(partition__0393_),
    .C1(_0584_),
    .X(_0068_));
 sky130_fd_sc_hd__nand2_2 _1269_ (.A(partition__0681_),
    .B(partition__0441_),
    .Y(_0682_));
 sky130_fd_sc_hd__o311ai_2 _1270_ (.A1(partition__0392_),
    .A2(partition__0681_),
    .A3(partition__0335_),
    .B1(_0682_),
    .C1(_0442_),
    .Y(partition__0111_));
 sky130_fd_sc_hd__mux2_2 _1322_ (.A0(partition__0640_),
    .A1(\partition_recv.sm.shift_reg[7] ),
    .S(partition__0361_),
    .X(_0183_));
 sky130_fd_sc_hd__buf_1 _1323_ (.A(_0183_),
    .X(_0135_));
 sky130_fd_sc_hd__o21ba_2 _1352_ (.A1(_0325_),
    .A2(\recv.short_idle_counter[1] ),
    .B1_N(\recv.short_idle_counter[0] ),
    .X(_0199_));
 sky130_fd_sc_hd__or4_2 _1353_ (.A(partition__0392_),
    .B(_0199_),
    .C(partition__0356_),
    .D(partition__0348_),
    .X(_0200_));
 sky130_fd_sc_hd__buf_1 _1354_ (.A(_0200_),
    .X(_0149_));
 sky130_fd_sc_hd__nor3b_2 _1355_ (.A(\recv.short_idle_counter[1] ),
    .B(\recv.short_idle_counter[0] ),
    .C_N(_0325_),
    .Y(_0201_));
 sky130_fd_sc_hd__a21oi_2 _1356_ (.A1(\recv.short_idle_counter[1] ),
    .A2(\recv.short_idle_counter[0] ),
    .B1(_0201_),
    .Y(_0202_));
 sky130_fd_sc_hd__or4b_2 _1357_ (.A(partition__0392_),
    .B(partition__0356_),
    .C(partition__0348_),
    .D_N(_0202_),
    .X(_0203_));
 sky130_fd_sc_hd__buf_1 _1358_ (.A(_0203_),
    .X(_0150_));
 sky130_fd_sc_hd__a2111o_2 _1359_ (.A1(_0325_),
    .A2(_0326_),
    .B1(partition__0356_),
    .C1(partition__0392_),
    .D1(partition__0349_),
    .X(_0151_));
 sky130_fd_sc_hd__nand2_2 _1360_ (.A(_0454_),
    .B(_0321_),
    .Y(_0204_));
 sky130_fd_sc_hd__a21oi_2 _1361_ (.A1(_0255_),
    .A2(_0399_),
    .B1(_0253_),
    .Y(_0205_));
 sky130_fd_sc_hd__a31oi_2 _1362_ (.A1(_0253_),
    .A2(_0255_),
    .A3(_0204_),
    .B1(_0205_),
    .Y(_0206_));
 sky130_fd_sc_hd__nor3_2 _1363_ (.A(\tx.tx_data[7] ),
    .B(\tx.tx_data[6] ),
    .C(\tx.tx_data[8] ),
    .Y(_0207_));
 sky130_fd_sc_hd__nand2_2 _1364_ (.A(_0255_),
    .B(\tx.state[0] ),
    .Y(_0208_));
 sky130_fd_sc_hd__a31o_2 _1365_ (.A1(_0275_),
    .A2(_0207_),
    .A3(_0204_),
    .B1(_0208_),
    .X(_0209_));
 sky130_fd_sc_hd__nand2_2 _1366_ (.A(_0318_),
    .B(_0491_),
    .Y(_0210_));
 sky130_fd_sc_hd__nand3_2 _1367_ (.A(_0209_),
    .B(_0550_),
    .C(_0210_),
    .Y(_0211_));
 sky130_fd_sc_hd__mux2_2 _1368_ (.A0(_0206_),
    .A1(_0452_),
    .S(_0211_),
    .X(_0212_));
 sky130_fd_sc_hd__buf_1 _1369_ (.A(_0212_),
    .X(_0152_));
 sky130_fd_sc_hd__nor2_2 _1370_ (.A(_0399_),
    .B(_0253_),
    .Y(_0213_));
 sky130_fd_sc_hd__o41a_2 _1371_ (.A1(_0398_),
    .A2(_0400_),
    .A3(_0401_),
    .A4(_0321_),
    .B1(_0550_),
    .X(_0214_));
 sky130_fd_sc_hd__nand4_2 _1372_ (.A(_0209_),
    .B(_0213_),
    .C(_0214_),
    .D(_0210_),
    .Y(_0215_));
 sky130_fd_sc_hd__xor2_2 _1373_ (.A(_0255_),
    .B(_0215_),
    .X(_0153_));
 sky130_fd_sc_hd__o211a_2 _1374_ (.A1(_0257_),
    .A2(\tx.send_crc16 ),
    .B1(\tx.state[0] ),
    .C1(_0454_),
    .X(_0216_));
 sky130_fd_sc_hd__a31o_2 _1375_ (.A1(_0399_),
    .A2(_0253_),
    .A3(_0401_),
    .B1(_0216_),
    .X(_0217_));
 sky130_fd_sc_hd__mux2_2 _1376_ (.A0(_0217_),
    .A1(_0451_),
    .S(_0211_),
    .X(_0218_));
 sky130_fd_sc_hd__buf_1 _1377_ (.A(_0218_),
    .X(partition__0154_));
 sky130_fd_sc_hd__o2111a_2 _1378_ (.A1(_0398_),
    .A2(_0254_),
    .B1(partition__0256_),
    .C1(_0258_),
    .D1(_0259_),
    .X(_0219_));
 sky130_fd_sc_hd__a211o_2 _1379_ (.A1(_0219_),
    .A2(tx_en),
    .B1(\partition_tx.tx_clock[1] ),
    .C1(partition__0263_),
    .X(partition__0220_));
 sky130_fd_sc_hd__o311a_2 _1391_ (.A1(\partition_tx.state[2] ),
    .A2(\tx.state[0] ),
    .A3(_0257_),
    .B1(_0276_),
    .C1(partition__0256_),
    .X(_0229_));
 sky130_fd_sc_hd__and3_2 _1392_ (.A(_0275_),
    .B(_0207_),
    .C(_0229_),
    .X(_0230_));
 sky130_fd_sc_hd__buf_1 _1393_ (.A(_0230_),
    .X(_0231_));
 sky130_fd_sc_hd__nor2_2 _1394_ (.A(partition__0319_),
    .B(partition__0320_),
    .Y(_0232_));
 sky130_fd_sc_hd__a2111o_2 _1395_ (.A1(tx_en),
    .A2(_0318_),
    .B1(partition__0263_),
    .C1(\partition_tx.tx_clock[1] ),
    .D1(_0232_),
    .X(_0233_));
 sky130_fd_sc_hd__a22o_2 _1396_ (.A1(\tx.update_crc16 ),
    .A2(_0231_),
    .B1(_0233_),
    .B2(\tx.crc_enabled ),
    .X(_0158_));
 sky130_fd_sc_hd__or3_2 _1397_ (.A(partition__0263_),
    .B(\partition_tx.tx_clock[1] ),
    .C(_0232_),
    .X(_0234_));
 sky130_fd_sc_hd__buf_1 _1398_ (.A(_0234_),
    .X(_0235_));
 sky130_fd_sc_hd__a31o_2 _1399_ (.A1(_0314_),
    .A2(_0315_),
    .A3(_0207_),
    .B1(\tx.tx_data[1] ),
    .X(_0236_));
 sky130_fd_sc_hd__o211a_2 _1400_ (.A1(\tx.data[0] ),
    .A2(_0318_),
    .B1(_0229_),
    .C1(_0236_),
    .X(_0237_));
 sky130_fd_sc_hd__a21o_2 _1401_ (.A1(\tx.tx_data[0] ),
    .A2(_0235_),
    .B1(_0237_),
    .X(_0159_));
 sky130_fd_sc_hd__buf_1 _1402_ (.A(_0550_),
    .X(_0238_));
 sky130_fd_sc_hd__o311a_2 _1403_ (.A1(_0451_),
    .A2(_0452_),
    .A3(_0453_),
    .B1(\tx.tx_data[2] ),
    .C1(_0238_),
    .X(_0239_));
 sky130_fd_sc_hd__a221o_2 _1404_ (.A1(\tx.tx_data[1] ),
    .A2(_0235_),
    .B1(_0231_),
    .B2(\tx.data[1] ),
    .C1(_0239_),
    .X(_0160_));
 sky130_fd_sc_hd__o311a_2 _1405_ (.A1(_0451_),
    .A2(_0452_),
    .A3(_0453_),
    .B1(\tx.tx_data[3] ),
    .C1(_0238_),
    .X(_0240_));
 sky130_fd_sc_hd__a221o_2 _1406_ (.A1(\tx.tx_data[2] ),
    .A2(_0235_),
    .B1(_0231_),
    .B2(\tx.data[2] ),
    .C1(_0240_),
    .X(_0161_));
 sky130_fd_sc_hd__o311a_2 _1407_ (.A1(_0451_),
    .A2(_0452_),
    .A3(_0453_),
    .B1(\tx.tx_data[4] ),
    .C1(_0238_),
    .X(_0241_));
 sky130_fd_sc_hd__a221o_2 _1408_ (.A1(\tx.tx_data[3] ),
    .A2(_0235_),
    .B1(_0231_),
    .B2(\tx.data[3] ),
    .C1(_0241_),
    .X(_0162_));
 sky130_fd_sc_hd__o311a_2 _1409_ (.A1(_0451_),
    .A2(_0452_),
    .A3(_0453_),
    .B1(\tx.tx_data[5] ),
    .C1(_0238_),
    .X(_0242_));
 sky130_fd_sc_hd__a221o_2 _1410_ (.A1(\tx.tx_data[4] ),
    .A2(_0235_),
    .B1(_0231_),
    .B2(\tx.data[4] ),
    .C1(_0242_),
    .X(_0163_));
 sky130_fd_sc_hd__o311a_2 _1411_ (.A1(_0399_),
    .A2(_0400_),
    .A3(_0401_),
    .B1(\tx.tx_data[6] ),
    .C1(_0550_),
    .X(_0243_));
 sky130_fd_sc_hd__a221o_2 _1412_ (.A1(\tx.tx_data[5] ),
    .A2(_0235_),
    .B1(_0231_),
    .B2(\tx.data[5] ),
    .C1(_0243_),
    .X(_0164_));
 sky130_fd_sc_hd__o311a_2 _1413_ (.A1(_0399_),
    .A2(_0400_),
    .A3(_0401_),
    .B1(\tx.tx_data[7] ),
    .C1(_0550_),
    .X(_0244_));
 sky130_fd_sc_hd__a221o_2 _1414_ (.A1(\tx.tx_data[6] ),
    .A2(_0234_),
    .B1(_0230_),
    .B2(\tx.data[6] ),
    .C1(_0244_),
    .X(_0165_));
 sky130_fd_sc_hd__and3_2 _1415_ (.A(\tx.data[7] ),
    .B(_0275_),
    .C(_0207_),
    .X(_0245_));
 sky130_fd_sc_hd__a311o_2 _1416_ (.A1(_0454_),
    .A2(_0253_),
    .A3(_0255_),
    .B1(_0245_),
    .C1(_0234_),
    .X(_0246_));
 sky130_fd_sc_hd__o22a_2 _1417_ (.A1(\tx.tx_data[7] ),
    .A2(_0238_),
    .B1(\tx.tx_data[8] ),
    .B2(_0246_),
    .X(_0166_));
 sky130_fd_sc_hd__o21ai_2 _1418_ (.A1(_0317_),
    .A2(_0238_),
    .B1(_0233_),
    .Y(_0167_));
 sky130_fd_sc_hd__mux2_2 _1431_ (.A0(\tx.last_j ),
    .A1(tx_j),
    .S(partition__0277_),
    .X(_0252_));
 sky130_fd_sc_hd__buf_1 _1432_ (.A(_0252_),
    .X(_0175_));
 sky130_fd_sc_hd__dfrtp_2 _1433_ (.CLK(clk_48),
    .D(_0016_),
    .RESET_B(rst_n),
    .Q(\handshake_latch[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1434_ (.CLK(clk_48),
    .D(_0017_),
    .RESET_B(rst_n),
    .Q(\handshake_latch[1] ));
 sky130_fd_sc_hd__dfstp_2 _1435_ (.CLK(clk_48),
    .D(_0004_),
    .SET_B(rst_n),
    .Q(\state[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1436_ (.CLK(clk_48),
    .D(_0005_),
    .RESET_B(rst_n),
    .Q(\state[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1437_ (.CLK(clk_48),
    .D(_0006_),
    .RESET_B(rst_n),
    .Q(\state[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1438_ (.CLK(clk_48),
    .D(_0007_),
    .RESET_B(rst_n),
    .Q(\state[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1439_ (.CLK(clk_48),
    .D(_0008_),
    .RESET_B(rst_n),
    .Q(\state[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1440_ (.CLK(clk_48),
    .D(_0009_),
    .RESET_B(rst_n),
    .Q(\tx.send_crc16 ));
 sky130_fd_sc_hd__dfrtp_2 _1441_ (.CLK(clk_48),
    .D(_0010_),
    .RESET_B(rst_n),
    .Q(\state[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1442_ (.CLK(clk_48),
    .D(_0011_),
    .RESET_B(rst_n),
    .Q(\state[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1466_ (.CLK(clk_48),
    .D(_0039_),
    .RESET_B(rst_n),
    .Q(transaction_active));
 sky130_fd_sc_hd__dfrtp_2 _1467_ (.CLK(clk_48),
    .D(_0040_),
    .RESET_B(rst_n),
    .Q(\tx.transmit ));
 sky130_fd_sc_hd__dfxtp_2 _1468_ (.CLK(clk_48),
    .D(_0041_),
    .Q(\tx.data[0] ));
 sky130_fd_sc_hd__dfxtp_2 _1469_ (.CLK(clk_48),
    .D(_0042_),
    .Q(\tx.data[1] ));
 sky130_fd_sc_hd__dfxtp_2 _1470_ (.CLK(clk_48),
    .D(_0043_),
    .Q(\tx.data[2] ));
 sky130_fd_sc_hd__dfxtp_2 _1471_ (.CLK(clk_48),
    .D(_0044_),
    .Q(\tx.data[3] ));
 sky130_fd_sc_hd__dfxtp_2 _1472_ (.CLK(clk_48),
    .D(_0045_),
    .Q(\tx.data[4] ));
 sky130_fd_sc_hd__dfxtp_2 _1473_ (.CLK(clk_48),
    .D(_0046_),
    .Q(\tx.data[5] ));
 sky130_fd_sc_hd__dfxtp_2 _1474_ (.CLK(clk_48),
    .D(_0047_),
    .Q(\tx.data[6] ));
 sky130_fd_sc_hd__dfxtp_2 _1475_ (.CLK(clk_48),
    .D(_0048_),
    .Q(\tx.data[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1484_ (.CLK(clk_48),
    .D(_0050_),
    .RESET_B(rst_n),
    .Q(\tx.update_crc16 ));
 sky130_fd_sc_hd__dfxtp_2 _1501_ (.CLK(clk_48),
    .D(_0067_),
    .Q(recv_queue_0_valid));
 sky130_fd_sc_hd__dfxtp_2 _1502_ (.CLK(clk_48),
    .D(_0068_),
    .Q(partition_recv_queue_1_valid));
 sky130_fd_sc_hd__dfstp_2 _1511_ (.CLK(clk_48),
    .D(_0000_),
    .SET_B(rst_n),
    .Q(\recv.sm.state[0] ));
 sky130_fd_sc_hd__dfxtp_2 _1573_ (.CLK(clk_48),
    .D(_0135_),
    .Q(\partition_recv.sm.shift_reg[7] ));
 sky130_fd_sc_hd__dfxtp_2 _1598_ (.CLK(clk_48),
    .D(_0149_),
    .Q(\recv.short_idle_counter[0] ));
 sky130_fd_sc_hd__dfxtp_2 _1599_ (.CLK(clk_48),
    .D(_0150_),
    .Q(\recv.short_idle_counter[1] ));
 sky130_fd_sc_hd__dfxtp_2 _1600_ (.CLK(clk_48),
    .D(_0151_),
    .Q(\recv.short_idle_counter[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1601_ (.CLK(clk_48),
    .D(_0152_),
    .RESET_B(rst_n),
    .Q(\tx.state[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1602_ (.CLK(clk_48),
    .D(_0153_),
    .RESET_B(rst_n),
    .Q(\tx.state[1] ));
 sky130_fd_sc_hd__dfxtp_2 _1609_ (.CLK(clk_48),
    .D(_0158_),
    .Q(\tx.crc_enabled ));
 sky130_fd_sc_hd__dfxtp_2 _1610_ (.CLK(clk_48),
    .D(_0159_),
    .Q(\tx.tx_data[0] ));
 sky130_fd_sc_hd__dfxtp_2 _1611_ (.CLK(clk_48),
    .D(_0160_),
    .Q(\tx.tx_data[1] ));
 sky130_fd_sc_hd__dfxtp_2 _1612_ (.CLK(clk_48),
    .D(_0161_),
    .Q(\tx.tx_data[2] ));
 sky130_fd_sc_hd__dfxtp_2 _1613_ (.CLK(clk_48),
    .D(_0162_),
    .Q(\tx.tx_data[3] ));
 sky130_fd_sc_hd__dfxtp_2 _1614_ (.CLK(clk_48),
    .D(_0163_),
    .Q(\tx.tx_data[4] ));
 sky130_fd_sc_hd__dfxtp_2 _1615_ (.CLK(clk_48),
    .D(_0164_),
    .Q(\tx.tx_data[5] ));
 sky130_fd_sc_hd__dfxtp_2 _1616_ (.CLK(clk_48),
    .D(_0165_),
    .Q(\tx.tx_data[6] ));
 sky130_fd_sc_hd__dfxtp_2 _1617_ (.CLK(clk_48),
    .D(_0166_),
    .Q(\tx.tx_data[7] ));
 sky130_fd_sc_hd__dfxtp_2 _1618_ (.CLK(clk_48),
    .D(_0167_),
    .Q(\tx.tx_data[8] ));
 sky130_fd_sc_hd__dfxtp_2 _1626_ (.CLK(clk_48),
    .D(_0175_),
    .Q(\tx.last_j ));
endmodule
module usb_partition5 (clk_48,
    rst_n,
    rx_j,
    rx_se0,
    partition__0281_,
    partition__0270_,
    partition__0331_,
    \partition_recv.sm.state[2] ,
    partition__0335_,
    \partition_recv.destuffer.data[3] ,
    \partition_recv.destuffer.data[4] ,
    partition__0337_,
    partition__0339_,
    partition__0341_,
    partition__0348_,
    partition__0354_,
    partition__0355_,
    partition__0359_,
    partition__0361_,
    partition__0363_,
    partition__0364_,
    partition__0365_,
    \partition_recv.sm.shift_reg[7] ,
    \partition_recv.nrzi_decoder.prev_i ,
    partition__0368_,
    partition__0375_,
    partition__0385_,
    partition__0386_,
    partition__0358_,
    \partition_recv.sm.state[1] ,
    partition__0388_,
    partition__0390_,
    partition__0392_,
    \partition_recv.sm.xpacket ,
    \partition_recv.sm.xdatastrobe ,
    partition__0415_,
    partition__0426_,
    \partition_recv.sm.crc16.rst_n ,
    partition__0574_,
    \partition_recv.sm.xdata[3] ,
    partition__0581_,
    \partition_recv_queue_1[3] ,
    \partition_recv_queue_1[7] ,
    partition__0646_,
    partition__0647_,
    partition__0652_,
    partition__0657_,
    partition__0108_,
    partition__0663_,
    \partition_recv.sm.crc5.r[1] ,
    \partition_recv.sm.crc5.next[3] ,
    partition__0670_,
    \partition_recv.sm.crc16.next[14] ,
    \partition_recv.sm.crc16.next[9] ,
    \partition_recv.sm.crc16.next[8] ,
    \partition_recv.sm.crc16.next[5] ,
    \partition_recv.sm.crc16.r[1] ,
    \partition_recv.sm.crc16.next[1] ,
    \partition_recv.sm.crc16.next[3] ,
    partition__0680_,
    partition__0681_,
    partition__0112_,
    partition__0113_,
    partition__0114_,
    partition__0116_,
    partition__0119_,
    partition__0120_,
    partition__0125_,
    partition__0457_,
    partition__0176_,
    partition__0137_,
    partition__0138_,
    \partition_recv.destuffer.data[1] ,
    partition__0195_);
 input clk_48;
 input rst_n;
 input rx_j;
 input rx_se0;
 output partition__0281_;
 input partition__0270_;
 output partition__0331_;
 input \partition_recv.sm.state[2] ;
 output partition__0335_;
 input \partition_recv.destuffer.data[3] ;
 input \partition_recv.destuffer.data[4] ;
 input partition__0337_;
 input partition__0339_;
 output partition__0341_;
 output partition__0348_;
 output partition__0354_;
 output partition__0355_;
 output partition__0359_;
 output partition__0361_;
 output partition__0363_;
 output partition__0364_;
 input partition__0365_;
 input \partition_recv.sm.shift_reg[7] ;
 input \partition_recv.nrzi_decoder.prev_i ;
 input partition__0368_;
 input partition__0375_;
 input partition__0385_;
 output partition__0386_;
 input partition__0358_;
 output \partition_recv.sm.state[1] ;
 output partition__0388_;
 output partition__0390_;
 output partition__0392_;
 input \partition_recv.sm.xpacket ;
 input \partition_recv.sm.xdatastrobe ;
 output partition__0415_;
 output partition__0426_;
 output \partition_recv.sm.crc16.rst_n ;
 output partition__0574_;
 input \partition_recv.sm.xdata[3] ;
 output partition__0581_;
 output \partition_recv_queue_1[3] ;
 output \partition_recv_queue_1[7] ;
 output partition__0646_;
 input partition__0647_;
 output partition__0652_;
 output partition__0657_;
 output partition__0108_;
 output partition__0663_;
 input \partition_recv.sm.crc5.r[1] ;
 input \partition_recv.sm.crc5.next[3] ;
 output partition__0670_;
 input \partition_recv.sm.crc16.next[14] ;
 input \partition_recv.sm.crc16.next[9] ;
 input \partition_recv.sm.crc16.next[8] ;
 input \partition_recv.sm.crc16.next[5] ;
 input \partition_recv.sm.crc16.r[1] ;
 input \partition_recv.sm.crc16.next[1] ;
 input \partition_recv.sm.crc16.next[3] ;
 output partition__0680_;
 output partition__0681_;
 output partition__0112_;
 output partition__0113_;
 output partition__0114_;
 output partition__0116_;
 output partition__0119_;
 output partition__0120_;
 output partition__0125_;
 input partition__0457_;
 output partition__0176_;
 output partition__0137_;
 output partition__0138_;
 output \partition_recv.destuffer.data[1] ;
 output partition__0195_;

 wire _0001_;
 wire _0062_;
 wire _0066_;
 wire _0072_;
 wire _0076_;
 wire _0107_;
 wire _0115_;
 wire _0117_;
 wire _0118_;
 wire _0121_;
 wire _0122_;
 wire _0123_;
 wire _0124_;
 wire _0126_;
 wire _0127_;
 wire _0128_;
 wire _0136_;
 wire _0139_;
 wire _0140_;
 wire _0142_;
 wire _0143_;
 wire _0184_;
 wire _0185_;
 wire _0186_;
 wire _0187_;
 wire _0188_;
 wire _0189_;
 wire _0191_;
 wire _0192_;
 wire _0280_;
 wire _0338_;
 wire _0340_;
 wire _0342_;
 wire _0343_;
 wire _0344_;
 wire _0345_;
 wire _0346_;
 wire _0347_;
 wire _0353_;
 wire _0360_;
 wire _0362_;
 wire _0366_;
 wire _0369_;
 wire _0370_;
 wire _0371_;
 wire _0372_;
 wire _0373_;
 wire _0374_;
 wire _0376_;
 wire _0377_;
 wire _0378_;
 wire _0379_;
 wire _0380_;
 wire _0387_;
 wire _0389_;
 wire _0414_;
 wire _0450_;
 wire _0577_;
 wire _0582_;
 wire _0588_;
 wire _0592_;
 wire _0659_;
 wire _0660_;
 wire _0662_;
 wire _0664_;
 wire _0665_;
 wire _0666_;
 wire _0667_;
 wire _0668_;
 wire _0669_;
 wire _0672_;
 wire _0673_;
 wire _0674_;
 wire _0675_;
 wire _0676_;
 wire _0677_;
 wire _0678_;
 wire _0679_;
 wire _0683_;
 wire _0684_;
 wire _0685_;
 wire _0686_;
 wire _0687_;
 wire _0688_;
 wire _0689_;
 wire _0690_;
 wire _0691_;
 wire _0692_;
 wire _0693_;
 wire _0694_;
 wire _0695_;
 wire _0696_;
 wire _0697_;
 wire _0698_;
 wire _0699_;
 wire _0700_;
 wire _0701_;
 wire _0702_;
 wire _0703_;
 wire \recv.d_filter.r[0] ;
 wire \recv.d_filter.r[1] ;
 wire \recv.d_filter.r[2] ;
 wire \recv.destuffer.data[0] ;
 wire \recv.se0_filter.r[0] ;
 wire \recv.se0_filter.r[1] ;
 wire \recv.se0_filter.r[2] ;
 wire \recv.se0_filter.r[3] ;
 wire \recv.se0_filter.r[4] ;
 wire \recv.sm.crc16.next[10] ;
 wire \recv.sm.crc16.next[11] ;
 wire \recv.sm.crc16.next[12] ;
 wire \recv.sm.crc16.next[13] ;
 wire \recv.sm.crc16.next[4] ;
 wire \recv.sm.crc16.next[6] ;
 wire \recv.sm.crc16.next[7] ;
 wire \recv.sm.crc16.out ;
 wire \recv.sm.crc16.r[14] ;
 wire \recv.sm.crc5.next[1] ;
 wire \recv.sm.crc5.next[4] ;
 wire \recv.sm.crc5.r[4] ;
 wire \recv.sm.shift_reg[0] ;
 wire \recv.sm.xdata[7] ;
 wire \recv_queue_0[3] ;
 wire \recv_queue_0[7] ;

 sky130_fd_sc_hd__a21o_2 _0744_ (.A1(\recv.d_filter.r[1] ),
    .A2(\recv.d_filter.r[2] ),
    .B1(\recv.d_filter.r[0] ),
    .X(_0280_));
 sky130_fd_sc_hd__o21ai_2 _0745_ (.A1(\recv.d_filter.r[1] ),
    .A2(\recv.d_filter.r[2] ),
    .B1(_0280_),
    .Y(partition__0281_));
 sky130_fd_sc_hd__buf_1 _0797_ (.A(partition__0270_),
    .X(partition__0331_));
 sky130_fd_sc_hd__buf_1 _0802_ (.A(\partition_recv.sm.state[2] ),
    .X(partition__0335_));
 sky130_fd_sc_hd__nand3_2 _0805_ (.A(\recv.destuffer.data[0] ),
    .B(\partition_recv.destuffer.data[3] ),
    .C(\partition_recv.destuffer.data[4] ),
    .Y(_0338_));
 sky130_fd_sc_hd__o21a_2 _0807_ (.A1(partition__0337_),
    .A2(_0338_),
    .B1(partition__0339_),
    .X(_0340_));
 sky130_fd_sc_hd__buf_1 _0808_ (.A(_0340_),
    .X(partition__0341_));
 sky130_fd_sc_hd__o21ai_2 _0809_ (.A1(\recv.se0_filter.r[4] ),
    .A2(\recv.se0_filter.r[3] ),
    .B1(\recv.se0_filter.r[0] ),
    .Y(_0342_));
 sky130_fd_sc_hd__nand2_2 _0810_ (.A(\recv.se0_filter.r[4] ),
    .B(\recv.se0_filter.r[3] ),
    .Y(_0343_));
 sky130_fd_sc_hd__nand2_2 _0811_ (.A(_0342_),
    .B(_0343_),
    .Y(_0344_));
 sky130_fd_sc_hd__o31a_2 _0812_ (.A1(\recv.se0_filter.r[4] ),
    .A2(\recv.se0_filter.r[0] ),
    .A3(\recv.se0_filter.r[3] ),
    .B1(\recv.se0_filter.r[1] ),
    .X(_0345_));
 sky130_fd_sc_hd__a31o_2 _0813_ (.A1(\recv.se0_filter.r[4] ),
    .A2(\recv.se0_filter.r[0] ),
    .A3(\recv.se0_filter.r[3] ),
    .B1(\recv.se0_filter.r[2] ),
    .X(_0346_));
 sky130_fd_sc_hd__a21boi_2 _0814_ (.A1(_0342_),
    .A2(_0343_),
    .B1_N(\recv.se0_filter.r[1] ),
    .Y(_0347_));
 sky130_fd_sc_hd__o22a_2 _0815_ (.A1(_0344_),
    .A2(_0345_),
    .B1(_0346_),
    .B2(_0347_),
    .X(partition__0348_));
 sky130_fd_sc_hd__o22ai_2 _0820_ (.A1(_0344_),
    .A2(_0345_),
    .B1(_0346_),
    .B2(_0347_),
    .Y(_0353_));
 sky130_fd_sc_hd__buf_1 _0821_ (.A(_0353_),
    .X(partition__0354_));
 sky130_fd_sc_hd__or2_2 _0822_ (.A(partition__0337_),
    .B(_0338_),
    .X(partition__0355_));
 sky130_fd_sc_hd__buf_1 _0827_ (.A(partition__0339_),
    .X(partition__0359_));
 sky130_fd_sc_hd__o21ai_2 _0828_ (.A1(partition__0337_),
    .A2(_0338_),
    .B1(partition__0359_),
    .Y(_0360_));
 sky130_fd_sc_hd__buf_1 _0829_ (.A(_0360_),
    .X(partition__0361_));
 sky130_fd_sc_hd__buf_1 _0830_ (.A(partition__0361_),
    .X(_0362_));
 sky130_fd_sc_hd__a21oi_2 _0831_ (.A1(_0344_),
    .A2(\recv.se0_filter.r[1] ),
    .B1(_0346_),
    .Y(partition__0363_));
 sky130_fd_sc_hd__nor2_2 _0832_ (.A(_0344_),
    .B(_0345_),
    .Y(partition__0364_));
 sky130_fd_sc_hd__and3b_2 _0834_ (.A_N(partition__0365_),
    .B(\partition_recv.sm.shift_reg[7] ),
    .C(\partition_recv.sm.state[2] ),
    .X(_0366_));
 sky130_fd_sc_hd__o211ai_2 _0837_ (.A1(\recv.d_filter.r[1] ),
    .A2(\recv.d_filter.r[2] ),
    .B1(\partition_recv.nrzi_decoder.prev_i ),
    .C1(_0280_),
    .Y(_0369_));
 sky130_fd_sc_hd__nor2_2 _0838_ (.A(\recv.d_filter.r[1] ),
    .B(\recv.d_filter.r[2] ),
    .Y(_0370_));
 sky130_fd_sc_hd__a21oi_2 _0839_ (.A1(\recv.d_filter.r[1] ),
    .A2(\recv.d_filter.r[2] ),
    .B1(\recv.d_filter.r[0] ),
    .Y(_0371_));
 sky130_fd_sc_hd__inv_2 _0840_ (.A(\partition_recv.nrzi_decoder.prev_i ),
    .Y(_0372_));
 sky130_fd_sc_hd__o21ai_2 _0841_ (.A1(_0370_),
    .A2(_0371_),
    .B1(_0372_),
    .Y(_0373_));
 sky130_fd_sc_hd__nand3b_2 _0842_ (.A_N(partition__0368_),
    .B(_0369_),
    .C(_0373_),
    .Y(_0374_));
 sky130_fd_sc_hd__o21ai_2 _0844_ (.A1(partition__0365_),
    .A2(\recv.sm.shift_reg[0] ),
    .B1(partition__0375_),
    .Y(_0376_));
 sky130_fd_sc_hd__o21ai_2 _0845_ (.A1(\recv.sm.shift_reg[0] ),
    .A2(partition__0375_),
    .B1(_0376_),
    .Y(_0377_));
 sky130_fd_sc_hd__o21ai_2 _0846_ (.A1(\recv.d_filter.r[1] ),
    .A2(\recv.d_filter.r[2] ),
    .B1(_0372_),
    .Y(_0378_));
 sky130_fd_sc_hd__o21ai_2 _0847_ (.A1(_0370_),
    .A2(_0371_),
    .B1(\partition_recv.nrzi_decoder.prev_i ),
    .Y(_0379_));
 sky130_fd_sc_hd__o211ai_2 _0848_ (.A1(_0371_),
    .A2(_0378_),
    .B1(partition__0368_),
    .C1(_0379_),
    .Y(_0380_));
 sky130_fd_sc_hd__nand4_2 _0854_ (.A(_0374_),
    .B(_0377_),
    .C(_0380_),
    .D(partition__0385_),
    .Y(partition__0386_));
 sky130_fd_sc_hd__o211ai_2 _0855_ (.A1(partition__0363_),
    .A2(partition__0364_),
    .B1(_0366_),
    .C1(partition__0386_),
    .Y(_0387_));
 sky130_fd_sc_hd__o2bb2ai_2 _0856_ (.A1_N(partition__0358_),
    .A2_N(\partition_recv.sm.state[1] ),
    .B1(_0362_),
    .B2(_0387_),
    .Y(_0001_));
 sky130_fd_sc_hd__buf_1 _0857_ (.A(partition__0386_),
    .X(partition__0388_));
 sky130_fd_sc_hd__and2b_2 _0858_ (.A_N(partition__0365_),
    .B(\partition_recv.sm.shift_reg[7] ),
    .X(_0389_));
 sky130_fd_sc_hd__nand4_2 _0859_ (.A(_0353_),
    .B(_0389_),
    .C(partition__0335_),
    .D(_0340_),
    .Y(partition__0390_));
 sky130_fd_sc_hd__buf_1 _0861_ (.A(partition__0331_),
    .X(partition__0392_));
 sky130_fd_sc_hd__o2111a_2 _0885_ (.A1(partition__0337_),
    .A2(_0338_),
    .B1(partition__0339_),
    .C1(\partition_recv.sm.xpacket ),
    .D1(\partition_recv.sm.xdatastrobe ),
    .X(_0414_));
 sky130_fd_sc_hd__buf_1 _0886_ (.A(_0414_),
    .X(partition__0415_));
 sky130_fd_sc_hd__buf_2 _0898_ (.A(partition__0359_),
    .X(partition__0426_));
 sky130_fd_sc_hd__and2_2 _0927_ (.A(partition__0392_),
    .B(rst_n),
    .X(_0450_));
 sky130_fd_sc_hd__buf_1 _0928_ (.A(_0450_),
    .X(\partition_recv.sm.crc16.rst_n ));
 sky130_fd_sc_hd__buf_1 _1110_ (.A(partition__0415_),
    .X(partition__0574_));
 sky130_fd_sc_hd__mux2_2 _1115_ (.A0(\recv_queue_0[3] ),
    .A1(\partition_recv.sm.xdata[3] ),
    .S(partition__0574_),
    .X(_0577_));
 sky130_fd_sc_hd__buf_1 _1116_ (.A(_0577_),
    .X(_0062_));
 sky130_fd_sc_hd__buf_1 _1123_ (.A(_0414_),
    .X(partition__0581_));
 sky130_fd_sc_hd__mux2_2 _1124_ (.A0(\recv_queue_0[7] ),
    .A1(\recv.sm.xdata[7] ),
    .S(partition__0581_),
    .X(_0582_));
 sky130_fd_sc_hd__buf_1 _1125_ (.A(_0582_),
    .X(_0066_));
 sky130_fd_sc_hd__mux2_2 _1136_ (.A0(\partition_recv_queue_1[3] ),
    .A1(\recv_queue_0[3] ),
    .S(partition__0581_),
    .X(_0588_));
 sky130_fd_sc_hd__buf_1 _1137_ (.A(_0588_),
    .X(_0072_));
 sky130_fd_sc_hd__mux2_2 _1144_ (.A0(\partition_recv_queue_1[7] ),
    .A1(\recv_queue_0[7] ),
    .S(partition__0415_),
    .X(_0592_));
 sky130_fd_sc_hd__buf_1 _1145_ (.A(_0592_),
    .X(_0076_));
 sky130_fd_sc_hd__nand4_2 _1222_ (.A(_0353_),
    .B(_0389_),
    .C(partition__0270_),
    .D(_0340_),
    .Y(partition__0646_));
 sky130_fd_sc_hd__mux2_2 _1231_ (.A0(partition__0368_),
    .A1(\partition_recv.sm.xdata[3] ),
    .S(partition__0647_),
    .X(partition__0652_));
 sky130_fd_sc_hd__or2_2 _1239_ (.A(partition__0365_),
    .B(\recv.sm.shift_reg[0] ),
    .X(partition__0657_));
 sky130_fd_sc_hd__o21a_2 _1242_ (.A1(_0371_),
    .A2(_0378_),
    .B1(_0379_),
    .X(_0659_));
 sky130_fd_sc_hd__mux2_2 _1243_ (.A0(_0659_),
    .A1(\recv.sm.xdata[7] ),
    .S(partition__0646_),
    .X(_0660_));
 sky130_fd_sc_hd__buf_1 _1244_ (.A(_0660_),
    .X(_0107_));
 sky130_fd_sc_hd__a21bo_2 _1245_ (.A1(\partition_recv.sm.xdatastrobe ),
    .A2(_0362_),
    .B1_N(partition__0647_),
    .X(partition__0108_));
 sky130_fd_sc_hd__o2111ai_2 _1247_ (.A1(partition__0331_),
    .A2(partition__0335_),
    .B1(partition__0341_),
    .C1(_0389_),
    .D1(_0353_),
    .Y(_0662_));
 sky130_fd_sc_hd__a31oi_2 _1248_ (.A1(partition__0354_),
    .A2(partition__0386_),
    .A3(_0366_),
    .B1(_0662_),
    .Y(partition__0663_));
 sky130_fd_sc_hd__nand3_2 _1249_ (.A(_0373_),
    .B(\recv.sm.crc5.r[4] ),
    .C(_0369_),
    .Y(_0664_));
 sky130_fd_sc_hd__inv_2 _1250_ (.A(\recv.sm.crc5.r[4] ),
    .Y(_0665_));
 sky130_fd_sc_hd__o211ai_2 _1251_ (.A1(_0378_),
    .A2(_0371_),
    .B1(_0665_),
    .C1(_0379_),
    .Y(_0666_));
 sky130_fd_sc_hd__and3_2 _1252_ (.A(_0664_),
    .B(_0666_),
    .C(\partition_recv.sm.crc5.r[1] ),
    .X(_0667_));
 sky130_fd_sc_hd__and4bb_2 _1253_ (.A_N(\recv.sm.crc5.next[1] ),
    .B_N(\recv.sm.crc5.next[4] ),
    .C(\partition_recv.sm.crc5.next[3] ),
    .D(partition__0331_),
    .X(_0668_));
 sky130_fd_sc_hd__o2111a_2 _1254_ (.A1(partition__0331_),
    .A2(partition__0335_),
    .B1(_0340_),
    .C1(_0389_),
    .D1(_0353_),
    .X(_0669_));
 sky130_fd_sc_hd__nand4_2 _1255_ (.A(_0387_),
    .B(_0667_),
    .C(_0668_),
    .D(_0669_),
    .Y(partition__0670_));
 sky130_fd_sc_hd__o211ai_2 _1258_ (.A1(_0371_),
    .A2(_0378_),
    .B1(\recv.sm.crc16.out ),
    .C1(_0379_),
    .Y(_0672_));
 sky130_fd_sc_hd__nand3b_2 _1259_ (.A_N(\recv.sm.crc16.out ),
    .B(_0369_),
    .C(_0373_),
    .Y(_0673_));
 sky130_fd_sc_hd__nand3b_2 _1260_ (.A_N(\recv.sm.crc16.r[14] ),
    .B(_0672_),
    .C(_0673_),
    .Y(_0674_));
 sky130_fd_sc_hd__or3_2 _1261_ (.A(\recv.sm.crc16.next[13] ),
    .B(\recv.sm.crc16.next[12] ),
    .C(\partition_recv.sm.crc16.next[14] ),
    .X(_0675_));
 sky130_fd_sc_hd__or4_2 _1262_ (.A(\partition_recv.sm.crc16.next[9] ),
    .B(\partition_recv.sm.crc16.next[8] ),
    .C(\recv.sm.crc16.next[11] ),
    .D(\recv.sm.crc16.next[10] ),
    .X(_0676_));
 sky130_fd_sc_hd__or4_2 _1263_ (.A(\partition_recv.sm.crc16.next[5] ),
    .B(\recv.sm.crc16.next[4] ),
    .C(\recv.sm.crc16.next[7] ),
    .D(\recv.sm.crc16.next[6] ),
    .X(_0677_));
 sky130_fd_sc_hd__or4bb_2 _1264_ (.A(\partition_recv.sm.crc16.r[1] ),
    .B(\partition_recv.sm.crc16.next[1] ),
    .C_N(\partition_recv.sm.crc16.next[3] ),
    .D_N(partition__0270_),
    .X(_0678_));
 sky130_fd_sc_hd__nor4_2 _1265_ (.A(_0675_),
    .B(_0676_),
    .C(_0677_),
    .D(_0678_),
    .Y(_0679_));
 sky130_fd_sc_hd__nand4b_2 _1266_ (.A_N(_0674_),
    .B(_0387_),
    .C(_0669_),
    .D(_0679_),
    .Y(partition__0680_));
 sky130_fd_sc_hd__buf_1 _1268_ (.A(_0360_),
    .X(partition__0681_));
 sky130_fd_sc_hd__a21oi_2 _1271_ (.A1(_0672_),
    .A2(_0673_),
    .B1(partition__0681_),
    .Y(_0683_));
 sky130_fd_sc_hd__o21ba_2 _1272_ (.A1(\partition_recv.sm.crc16.next[1] ),
    .A2(partition__0341_),
    .B1_N(_0683_),
    .X(partition__0112_));
 sky130_fd_sc_hd__mux2_2 _1273_ (.A0(\partition_recv.sm.crc16.next[1] ),
    .A1(\partition_recv.sm.crc16.r[1] ),
    .S(partition__0681_),
    .X(_0684_));
 sky130_fd_sc_hd__buf_1 _1274_ (.A(_0684_),
    .X(partition__0113_));
 sky130_fd_sc_hd__a21oi_2 _1275_ (.A1(_0672_),
    .A2(_0673_),
    .B1(\partition_recv.sm.crc16.r[1] ),
    .Y(_0685_));
 sky130_fd_sc_hd__a31o_2 _1276_ (.A1(_0673_),
    .A2(\partition_recv.sm.crc16.r[1] ),
    .A3(_0672_),
    .B1(partition__0681_),
    .X(_0686_));
 sky130_fd_sc_hd__a2bb2o_2 _1277_ (.A1_N(_0685_),
    .A2_N(_0686_),
    .B1(\partition_recv.sm.crc16.next[3] ),
    .B2(_0362_),
    .X(partition__0114_));
 sky130_fd_sc_hd__mux2_2 _1278_ (.A0(\partition_recv.sm.crc16.next[3] ),
    .A1(\recv.sm.crc16.next[4] ),
    .S(partition__0681_),
    .X(_0687_));
 sky130_fd_sc_hd__buf_1 _1279_ (.A(_0687_),
    .X(_0115_));
 sky130_fd_sc_hd__buf_1 _1280_ (.A(_0360_),
    .X(_0688_));
 sky130_fd_sc_hd__mux2_2 _1281_ (.A0(\recv.sm.crc16.next[4] ),
    .A1(\partition_recv.sm.crc16.next[5] ),
    .S(_0688_),
    .X(_0689_));
 sky130_fd_sc_hd__buf_1 _1282_ (.A(_0689_),
    .X(partition__0116_));
 sky130_fd_sc_hd__mux2_2 _1283_ (.A0(\partition_recv.sm.crc16.next[5] ),
    .A1(\recv.sm.crc16.next[6] ),
    .S(_0688_),
    .X(_0690_));
 sky130_fd_sc_hd__buf_1 _1284_ (.A(_0690_),
    .X(_0117_));
 sky130_fd_sc_hd__mux2_2 _1285_ (.A0(\recv.sm.crc16.next[6] ),
    .A1(\recv.sm.crc16.next[7] ),
    .S(_0688_),
    .X(_0691_));
 sky130_fd_sc_hd__buf_1 _1286_ (.A(_0691_),
    .X(_0118_));
 sky130_fd_sc_hd__mux2_2 _1287_ (.A0(\recv.sm.crc16.next[7] ),
    .A1(\partition_recv.sm.crc16.next[8] ),
    .S(_0688_),
    .X(_0692_));
 sky130_fd_sc_hd__buf_1 _1288_ (.A(_0692_),
    .X(partition__0119_));
 sky130_fd_sc_hd__mux2_2 _1289_ (.A0(\partition_recv.sm.crc16.next[8] ),
    .A1(\partition_recv.sm.crc16.next[9] ),
    .S(_0688_),
    .X(_0693_));
 sky130_fd_sc_hd__buf_1 _1290_ (.A(_0693_),
    .X(partition__0120_));
 sky130_fd_sc_hd__mux2_2 _1291_ (.A0(\partition_recv.sm.crc16.next[9] ),
    .A1(\recv.sm.crc16.next[10] ),
    .S(_0688_),
    .X(_0694_));
 sky130_fd_sc_hd__buf_1 _1292_ (.A(_0694_),
    .X(_0121_));
 sky130_fd_sc_hd__buf_1 _1293_ (.A(_0360_),
    .X(_0695_));
 sky130_fd_sc_hd__mux2_2 _1294_ (.A0(\recv.sm.crc16.next[10] ),
    .A1(\recv.sm.crc16.next[11] ),
    .S(_0695_),
    .X(_0696_));
 sky130_fd_sc_hd__buf_1 _1295_ (.A(_0696_),
    .X(_0122_));
 sky130_fd_sc_hd__mux2_2 _1296_ (.A0(\recv.sm.crc16.next[11] ),
    .A1(\recv.sm.crc16.next[12] ),
    .S(_0695_),
    .X(_0697_));
 sky130_fd_sc_hd__buf_1 _1297_ (.A(_0697_),
    .X(_0123_));
 sky130_fd_sc_hd__mux2_2 _1298_ (.A0(\recv.sm.crc16.next[12] ),
    .A1(\recv.sm.crc16.next[13] ),
    .S(_0695_),
    .X(_0698_));
 sky130_fd_sc_hd__buf_1 _1299_ (.A(_0698_),
    .X(_0124_));
 sky130_fd_sc_hd__mux2_2 _1300_ (.A0(\recv.sm.crc16.next[13] ),
    .A1(\partition_recv.sm.crc16.next[14] ),
    .S(_0695_),
    .X(_0699_));
 sky130_fd_sc_hd__buf_1 _1301_ (.A(_0699_),
    .X(partition__0125_));
 sky130_fd_sc_hd__mux2_2 _1302_ (.A0(\partition_recv.sm.crc16.next[14] ),
    .A1(\recv.sm.crc16.r[14] ),
    .S(_0695_),
    .X(_0700_));
 sky130_fd_sc_hd__buf_1 _1303_ (.A(_0700_),
    .X(_0126_));
 sky130_fd_sc_hd__a21bo_2 _1304_ (.A1(_0672_),
    .A2(_0673_),
    .B1_N(\recv.sm.crc16.r[14] ),
    .X(_0701_));
 sky130_fd_sc_hd__a21oi_2 _1305_ (.A1(partition__0355_),
    .A2(partition__0457_),
    .B1(\recv.sm.crc16.out ),
    .Y(_0702_));
 sky130_fd_sc_hd__a31oi_2 _1306_ (.A1(_0701_),
    .A2(partition__0341_),
    .A3(_0674_),
    .B1(_0702_),
    .Y(_0127_));
 sky130_fd_sc_hd__mux2_2 _1307_ (.A0(_0659_),
    .A1(\recv.sm.shift_reg[0] ),
    .S(_0695_),
    .X(_0703_));
 sky130_fd_sc_hd__buf_1 _1308_ (.A(_0703_),
    .X(_0128_));
 sky130_fd_sc_hd__buf_1 _1309_ (.A(_0360_),
    .X(partition__0176_));
 sky130_fd_sc_hd__a21oi_2 _1324_ (.A1(_0664_),
    .A2(_0666_),
    .B1(_0362_),
    .Y(_0184_));
 sky130_fd_sc_hd__a21o_2 _1325_ (.A1(\recv.sm.crc5.next[1] ),
    .A2(_0362_),
    .B1(_0184_),
    .X(_0136_));
 sky130_fd_sc_hd__mux2_2 _1326_ (.A0(\recv.sm.crc5.next[1] ),
    .A1(\partition_recv.sm.crc5.r[1] ),
    .S(partition__0361_),
    .X(_0185_));
 sky130_fd_sc_hd__buf_1 _1327_ (.A(_0185_),
    .X(partition__0137_));
 sky130_fd_sc_hd__a21oi_2 _1328_ (.A1(_0664_),
    .A2(_0666_),
    .B1(\partition_recv.sm.crc5.r[1] ),
    .Y(_0186_));
 sky130_fd_sc_hd__a21o_2 _1329_ (.A1(partition__0355_),
    .A2(partition__0457_),
    .B1(\partition_recv.sm.crc5.next[3] ),
    .X(_0187_));
 sky130_fd_sc_hd__o31a_2 _1330_ (.A1(_0186_),
    .A2(_0362_),
    .A3(_0667_),
    .B1(_0187_),
    .X(partition__0138_));
 sky130_fd_sc_hd__mux2_2 _1331_ (.A0(\partition_recv.sm.crc5.next[3] ),
    .A1(\recv.sm.crc5.next[4] ),
    .S(partition__0361_),
    .X(_0188_));
 sky130_fd_sc_hd__buf_1 _1332_ (.A(_0188_),
    .X(_0139_));
 sky130_fd_sc_hd__mux2_2 _1333_ (.A0(\recv.sm.crc5.next[4] ),
    .A1(\recv.sm.crc5.r[4] ),
    .S(partition__0361_),
    .X(_0189_));
 sky130_fd_sc_hd__buf_1 _1334_ (.A(_0189_),
    .X(_0140_));
 sky130_fd_sc_hd__mux2_2 _1337_ (.A0(\recv.destuffer.data[0] ),
    .A1(_0659_),
    .S(partition__0426_),
    .X(_0191_));
 sky130_fd_sc_hd__buf_1 _1338_ (.A(_0191_),
    .X(_0142_));
 sky130_fd_sc_hd__mux2_2 _1339_ (.A0(\partition_recv.destuffer.data[1] ),
    .A1(\recv.destuffer.data[0] ),
    .S(partition__0426_),
    .X(_0192_));
 sky130_fd_sc_hd__buf_1 _1340_ (.A(_0192_),
    .X(_0143_));
 sky130_fd_sc_hd__buf_1 _1345_ (.A(partition__0359_),
    .X(partition__0195_));
 sky130_fd_sc_hd__dfxtp_2 _1496_ (.CLK(clk_48),
    .D(_0062_),
    .Q(\recv_queue_0[3] ));
 sky130_fd_sc_hd__dfxtp_2 _1500_ (.CLK(clk_48),
    .D(_0066_),
    .Q(\recv_queue_0[7] ));
 sky130_fd_sc_hd__dfxtp_2 _1506_ (.CLK(clk_48),
    .D(_0072_),
    .Q(\partition_recv_queue_1[3] ));
 sky130_fd_sc_hd__dfxtp_2 _1510_ (.CLK(clk_48),
    .D(_0076_),
    .Q(\partition_recv_queue_1[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1512_ (.CLK(clk_48),
    .D(_0001_),
    .RESET_B(rst_n),
    .Q(\partition_recv.sm.state[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1545_ (.CLK(clk_48),
    .D(_0107_),
    .RESET_B(rst_n),
    .Q(\recv.sm.xdata[7] ));
 sky130_fd_sc_hd__dfstp_2 _1553_ (.CLK(clk_48),
    .D(_0115_),
    .SET_B(\partition_recv.sm.crc16.rst_n ),
    .Q(\recv.sm.crc16.next[4] ));
 sky130_fd_sc_hd__dfstp_2 _1555_ (.CLK(clk_48),
    .D(_0117_),
    .SET_B(\partition_recv.sm.crc16.rst_n ),
    .Q(\recv.sm.crc16.next[6] ));
 sky130_fd_sc_hd__dfstp_2 _1556_ (.CLK(clk_48),
    .D(_0118_),
    .SET_B(\partition_recv.sm.crc16.rst_n ),
    .Q(\recv.sm.crc16.next[7] ));
 sky130_fd_sc_hd__dfstp_2 _1559_ (.CLK(clk_48),
    .D(_0121_),
    .SET_B(\partition_recv.sm.crc16.rst_n ),
    .Q(\recv.sm.crc16.next[10] ));
 sky130_fd_sc_hd__dfstp_2 _1560_ (.CLK(clk_48),
    .D(_0122_),
    .SET_B(\partition_recv.sm.crc16.rst_n ),
    .Q(\recv.sm.crc16.next[11] ));
 sky130_fd_sc_hd__dfstp_2 _1561_ (.CLK(clk_48),
    .D(_0123_),
    .SET_B(\partition_recv.sm.crc16.rst_n ),
    .Q(\recv.sm.crc16.next[12] ));
 sky130_fd_sc_hd__dfstp_2 _1562_ (.CLK(clk_48),
    .D(_0124_),
    .SET_B(\partition_recv.sm.crc16.rst_n ),
    .Q(\recv.sm.crc16.next[13] ));
 sky130_fd_sc_hd__dfstp_2 _1564_ (.CLK(clk_48),
    .D(_0126_),
    .SET_B(\partition_recv.sm.crc16.rst_n ),
    .Q(\recv.sm.crc16.r[14] ));
 sky130_fd_sc_hd__dfstp_2 _1565_ (.CLK(clk_48),
    .D(_0127_),
    .SET_B(\partition_recv.sm.crc16.rst_n ),
    .Q(\recv.sm.crc16.out ));
 sky130_fd_sc_hd__dfxtp_2 _1566_ (.CLK(clk_48),
    .D(_0128_),
    .Q(\recv.sm.shift_reg[0] ));
 sky130_fd_sc_hd__dfstp_2 _1574_ (.CLK(clk_48),
    .D(_0136_),
    .SET_B(\partition_recv.sm.crc16.rst_n ),
    .Q(\recv.sm.crc5.next[1] ));
 sky130_fd_sc_hd__dfstp_2 _1577_ (.CLK(clk_48),
    .D(_0139_),
    .SET_B(\partition_recv.sm.crc16.rst_n ),
    .Q(\recv.sm.crc5.next[4] ));
 sky130_fd_sc_hd__dfstp_2 _1578_ (.CLK(clk_48),
    .D(_0140_),
    .SET_B(\partition_recv.sm.crc16.rst_n ),
    .Q(\recv.sm.crc5.r[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1580_ (.CLK(clk_48),
    .D(_0142_),
    .RESET_B(rst_n),
    .Q(\recv.destuffer.data[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1581_ (.CLK(clk_48),
    .D(_0143_),
    .RESET_B(rst_n),
    .Q(\partition_recv.destuffer.data[1] ));
 sky130_fd_sc_hd__dfxtp_2 _1590_ (.CLK(clk_48),
    .D(rx_se0),
    .Q(\recv.se0_filter.r[0] ));
 sky130_fd_sc_hd__dfxtp_2 _1591_ (.CLK(clk_48),
    .D(\recv.se0_filter.r[0] ),
    .Q(\recv.se0_filter.r[1] ));
 sky130_fd_sc_hd__dfxtp_2 _1592_ (.CLK(clk_48),
    .D(\recv.se0_filter.r[1] ),
    .Q(\recv.se0_filter.r[2] ));
 sky130_fd_sc_hd__dfxtp_2 _1593_ (.CLK(clk_48),
    .D(\recv.se0_filter.r[2] ),
    .Q(\recv.se0_filter.r[3] ));
 sky130_fd_sc_hd__dfxtp_2 _1594_ (.CLK(clk_48),
    .D(\recv.se0_filter.r[3] ),
    .Q(\recv.se0_filter.r[4] ));
 sky130_fd_sc_hd__dfxtp_2 _1595_ (.CLK(clk_48),
    .D(rx_j),
    .Q(\recv.d_filter.r[0] ));
 sky130_fd_sc_hd__dfxtp_2 _1596_ (.CLK(clk_48),
    .D(\recv.d_filter.r[0] ),
    .Q(\recv.d_filter.r[1] ));
 sky130_fd_sc_hd__dfxtp_2 _1597_ (.CLK(clk_48),
    .D(\recv.d_filter.r[1] ),
    .Q(\recv.d_filter.r[2] ));
endmodule
module usb_partition6 (clk_48,
    rst_n,
    partition__0492_,
    partition__0490_,
    \partition_tx.tx_crc.next[13] ,
    \partition_recv.sm.xcrc5_ok ,
    partition__0663_,
    partition__0670_,
    \partition_recv.sm.xcrc16_ok ,
    partition__0680_,
    \partition_tx.tx_crc.rst_n ,
    partition__0111_,
    \partition_recv.sm.clear_shift );
 input clk_48;
 input rst_n;
 input partition__0492_;
 input partition__0490_;
 output \partition_tx.tx_crc.next[13] ;
 output \partition_recv.sm.xcrc5_ok ;
 input partition__0663_;
 input partition__0670_;
 output \partition_recv.sm.xcrc16_ok ;
 input partition__0680_;
 input \partition_tx.tx_crc.rst_n ;
 input partition__0111_;
 output \partition_recv.sm.clear_shift ;

 wire _0018_;
 wire _0019_;
 wire _0020_;
 wire _0021_;
 wire _0022_;
 wire _0023_;
 wire _0024_;
 wire _0025_;
 wire _0026_;
 wire _0027_;
 wire _0028_;
 wire _0029_;
 wire _0030_;
 wire _0109_;
 wire _0110_;
 wire _0493_;
 wire _0494_;
 wire _0495_;
 wire _0496_;
 wire _0497_;
 wire _0498_;
 wire _0499_;
 wire _0500_;
 wire _0501_;
 wire _0502_;
 wire _0503_;
 wire _0504_;
 wire _0505_;
 wire _0506_;
 wire _0507_;
 wire _0508_;
 wire _0661_;
 wire _0671_;
 wire \tx.tx_crc.next[10] ;
 wire \tx.tx_crc.next[11] ;
 wire \tx.tx_crc.next[12] ;
 wire \tx.tx_crc.next[1] ;
 wire \tx.tx_crc.next[3] ;
 wire \tx.tx_crc.next[4] ;
 wire \tx.tx_crc.next[5] ;
 wire \tx.tx_crc.next[6] ;
 wire \tx.tx_crc.next[7] ;
 wire \tx.tx_crc.next[8] ;
 wire \tx.tx_crc.next[9] ;
 wire \tx.tx_crc.r[1] ;

 sky130_fd_sc_hd__buf_1 _0987_ (.A(partition__0492_),
    .X(_0493_));
 sky130_fd_sc_hd__mux2_2 _0988_ (.A0(\tx.tx_crc.next[1] ),
    .A1(partition__0490_),
    .S(_0493_),
    .X(_0494_));
 sky130_fd_sc_hd__buf_1 _0989_ (.A(_0494_),
    .X(_0018_));
 sky130_fd_sc_hd__mux2_2 _0990_ (.A0(\tx.tx_crc.r[1] ),
    .A1(\tx.tx_crc.next[1] ),
    .S(_0493_),
    .X(_0495_));
 sky130_fd_sc_hd__buf_1 _0991_ (.A(_0495_),
    .X(_0019_));
 sky130_fd_sc_hd__xor2_2 _0992_ (.A(\tx.tx_crc.r[1] ),
    .B(partition__0490_),
    .X(_0496_));
 sky130_fd_sc_hd__mux2_2 _0993_ (.A0(\tx.tx_crc.next[3] ),
    .A1(_0496_),
    .S(_0493_),
    .X(_0497_));
 sky130_fd_sc_hd__buf_1 _0994_ (.A(_0497_),
    .X(_0020_));
 sky130_fd_sc_hd__mux2_2 _0995_ (.A0(\tx.tx_crc.next[4] ),
    .A1(\tx.tx_crc.next[3] ),
    .S(_0493_),
    .X(_0498_));
 sky130_fd_sc_hd__buf_1 _0996_ (.A(_0498_),
    .X(_0021_));
 sky130_fd_sc_hd__mux2_2 _0997_ (.A0(\tx.tx_crc.next[5] ),
    .A1(\tx.tx_crc.next[4] ),
    .S(_0493_),
    .X(_0499_));
 sky130_fd_sc_hd__buf_1 _0998_ (.A(_0499_),
    .X(_0022_));
 sky130_fd_sc_hd__mux2_2 _0999_ (.A0(\tx.tx_crc.next[6] ),
    .A1(\tx.tx_crc.next[5] ),
    .S(_0493_),
    .X(_0500_));
 sky130_fd_sc_hd__buf_1 _1000_ (.A(_0500_),
    .X(_0023_));
 sky130_fd_sc_hd__buf_1 _1001_ (.A(partition__0492_),
    .X(_0501_));
 sky130_fd_sc_hd__mux2_2 _1002_ (.A0(\tx.tx_crc.next[7] ),
    .A1(\tx.tx_crc.next[6] ),
    .S(_0501_),
    .X(_0502_));
 sky130_fd_sc_hd__buf_1 _1003_ (.A(_0502_),
    .X(_0024_));
 sky130_fd_sc_hd__mux2_2 _1004_ (.A0(\tx.tx_crc.next[8] ),
    .A1(\tx.tx_crc.next[7] ),
    .S(_0501_),
    .X(_0503_));
 sky130_fd_sc_hd__buf_1 _1005_ (.A(_0503_),
    .X(_0025_));
 sky130_fd_sc_hd__mux2_2 _1006_ (.A0(\tx.tx_crc.next[9] ),
    .A1(\tx.tx_crc.next[8] ),
    .S(_0501_),
    .X(_0504_));
 sky130_fd_sc_hd__buf_1 _1007_ (.A(_0504_),
    .X(_0026_));
 sky130_fd_sc_hd__mux2_2 _1008_ (.A0(\tx.tx_crc.next[10] ),
    .A1(\tx.tx_crc.next[9] ),
    .S(_0501_),
    .X(_0505_));
 sky130_fd_sc_hd__buf_1 _1009_ (.A(_0505_),
    .X(_0027_));
 sky130_fd_sc_hd__mux2_2 _1010_ (.A0(\tx.tx_crc.next[11] ),
    .A1(\tx.tx_crc.next[10] ),
    .S(_0501_),
    .X(_0506_));
 sky130_fd_sc_hd__buf_1 _1011_ (.A(_0506_),
    .X(_0028_));
 sky130_fd_sc_hd__mux2_2 _1012_ (.A0(\tx.tx_crc.next[12] ),
    .A1(\tx.tx_crc.next[11] ),
    .S(_0501_),
    .X(_0507_));
 sky130_fd_sc_hd__buf_1 _1013_ (.A(_0507_),
    .X(_0029_));
 sky130_fd_sc_hd__mux2_2 _1014_ (.A0(\partition_tx.tx_crc.next[13] ),
    .A1(\tx.tx_crc.next[12] ),
    .S(partition__0492_),
    .X(_0508_));
 sky130_fd_sc_hd__buf_1 _1015_ (.A(_0508_),
    .X(_0030_));
 sky130_fd_sc_hd__inv_2 _1246_ (.A(\partition_recv.sm.xcrc5_ok ),
    .Y(_0661_));
 sky130_fd_sc_hd__o21ai_2 _1256_ (.A1(_0661_),
    .A2(partition__0663_),
    .B1(partition__0670_),
    .Y(_0109_));
 sky130_fd_sc_hd__inv_2 _1257_ (.A(\partition_recv.sm.xcrc16_ok ),
    .Y(_0671_));
 sky130_fd_sc_hd__o21ai_2 _1267_ (.A1(_0671_),
    .A2(partition__0663_),
    .B1(partition__0680_),
    .Y(_0110_));
 sky130_fd_sc_hd__dfstp_2 _1443_ (.CLK(clk_48),
    .D(_0018_),
    .SET_B(\partition_tx.tx_crc.rst_n ),
    .Q(\tx.tx_crc.next[1] ));
 sky130_fd_sc_hd__dfstp_2 _1444_ (.CLK(clk_48),
    .D(_0019_),
    .SET_B(\partition_tx.tx_crc.rst_n ),
    .Q(\tx.tx_crc.r[1] ));
 sky130_fd_sc_hd__dfstp_2 _1445_ (.CLK(clk_48),
    .D(_0020_),
    .SET_B(\partition_tx.tx_crc.rst_n ),
    .Q(\tx.tx_crc.next[3] ));
 sky130_fd_sc_hd__dfstp_2 _1446_ (.CLK(clk_48),
    .D(_0021_),
    .SET_B(\partition_tx.tx_crc.rst_n ),
    .Q(\tx.tx_crc.next[4] ));
 sky130_fd_sc_hd__dfstp_2 _1447_ (.CLK(clk_48),
    .D(_0022_),
    .SET_B(\partition_tx.tx_crc.rst_n ),
    .Q(\tx.tx_crc.next[5] ));
 sky130_fd_sc_hd__dfstp_2 _1448_ (.CLK(clk_48),
    .D(_0023_),
    .SET_B(\partition_tx.tx_crc.rst_n ),
    .Q(\tx.tx_crc.next[6] ));
 sky130_fd_sc_hd__dfstp_2 _1449_ (.CLK(clk_48),
    .D(_0024_),
    .SET_B(\partition_tx.tx_crc.rst_n ),
    .Q(\tx.tx_crc.next[7] ));
 sky130_fd_sc_hd__dfstp_2 _1450_ (.CLK(clk_48),
    .D(_0025_),
    .SET_B(\partition_tx.tx_crc.rst_n ),
    .Q(\tx.tx_crc.next[8] ));
 sky130_fd_sc_hd__dfstp_2 _1451_ (.CLK(clk_48),
    .D(_0026_),
    .SET_B(\partition_tx.tx_crc.rst_n ),
    .Q(\tx.tx_crc.next[9] ));
 sky130_fd_sc_hd__dfstp_2 _1452_ (.CLK(clk_48),
    .D(_0027_),
    .SET_B(\partition_tx.tx_crc.rst_n ),
    .Q(\tx.tx_crc.next[10] ));
 sky130_fd_sc_hd__dfstp_2 _1453_ (.CLK(clk_48),
    .D(_0028_),
    .SET_B(\partition_tx.tx_crc.rst_n ),
    .Q(\tx.tx_crc.next[11] ));
 sky130_fd_sc_hd__dfstp_2 _1454_ (.CLK(clk_48),
    .D(_0029_),
    .SET_B(\partition_tx.tx_crc.rst_n ),
    .Q(\tx.tx_crc.next[12] ));
 sky130_fd_sc_hd__dfstp_2 _1455_ (.CLK(clk_48),
    .D(_0030_),
    .SET_B(\partition_tx.tx_crc.rst_n ),
    .Q(\partition_tx.tx_crc.next[13] ));
 sky130_fd_sc_hd__dfrtp_2 _1547_ (.CLK(clk_48),
    .D(_0109_),
    .RESET_B(rst_n),
    .Q(\partition_recv.sm.xcrc5_ok ));
 sky130_fd_sc_hd__dfrtp_2 _1548_ (.CLK(clk_48),
    .D(_0110_),
    .RESET_B(rst_n),
    .Q(\partition_recv.sm.xcrc16_ok ));
 sky130_fd_sc_hd__dfrtp_2 _1549_ (.CLK(clk_48),
    .D(partition__0111_),
    .RESET_B(rst_n),
    .Q(\partition_recv.sm.clear_shift ));
endmodule
module usb_partition7 (clk_48,
    data_strobe,
    rst_n,
    usb_rst,
    partition__0281_,
    partition__0339_,
    \partition_recv.sync_detect.data[4] ,
    \partition_recv.sync_detect.data[6] ,
    \partition_recv.sync_detect.data[5] ,
    \partition_recv.sync_detect.data[1] ,
    partition__0352_,
    partition__0356_,
    \partition_recv.reset_detect.cntr[8] ,
    partition__0433_,
    partition__0359_,
    partition__0457_,
    partition__0349_,
    partition__0604_,
    partition__0619_,
    partition__0622_,
    partition__0596_,
    \partition_recv.reset_detect.cntr[11] ,
    partition__0624_,
    \partition_recv.nrzi_decoder.prev_i ,
    partition__0195_,
    partition__0169_,
    partition__0172_,
    partition__0173_,
    partition__0174_,
    partition__0711_,
    partition__0002_,
    \partition_recv.sm.state[2] ,
    partition__0078_,
    \partition_recv.reset_detect.cntr[1] ,
    partition__0080_,
    \partition_recv.reset_detect.cntr[3] ,
    partition__0082_,
    \partition_recv.reset_detect.cntr[5] ,
    partition__0085_,
    partition__0089_,
    \partition_recv.reset_detect.cntr[12] );
 input clk_48;
 output data_strobe;
 input rst_n;
 input usb_rst;
 input partition__0281_;
 output partition__0339_;
 input \partition_recv.sync_detect.data[4] ;
 input \partition_recv.sync_detect.data[6] ;
 input \partition_recv.sync_detect.data[5] ;
 input \partition_recv.sync_detect.data[1] ;
 output partition__0352_;
 output partition__0356_;
 output \partition_recv.reset_detect.cntr[8] ;
 output partition__0433_;
 input partition__0359_;
 output partition__0457_;
 input partition__0349_;
 output partition__0604_;
 input partition__0619_;
 input partition__0622_;
 input partition__0596_;
 output \partition_recv.reset_detect.cntr[11] ;
 input partition__0624_;
 output \partition_recv.nrzi_decoder.prev_i ;
 input partition__0195_;
 output partition__0169_;
 output partition__0172_;
 output partition__0173_;
 output partition__0174_;
 input partition__0711_;
 input partition__0002_;
 output \partition_recv.sm.state[2] ;
 input partition__0078_;
 output \partition_recv.reset_detect.cntr[1] ;
 input partition__0080_;
 output \partition_recv.reset_detect.cntr[3] ;
 input partition__0082_;
 output \partition_recv.reset_detect.cntr[5] ;
 input partition__0085_;
 input partition__0089_;
 output \partition_recv.reset_detect.cntr[12] ;

 wire _0012_;
 wire _0013_;
 wire _0086_;
 wire _0087_;
 wire _0088_;
 wire _0141_;
 wire _0168_;
 wire _0170_;
 wire _0171_;
 wire _0190_;
 wire _0247_;
 wire _0248_;
 wire _0249_;
 wire _0250_;
 wire _0251_;
 wire _0350_;
 wire _0351_;
 wire _0456_;
 wire _0458_;
 wire _0620_;
 wire _0621_;
 wire _0623_;
 wire _0625_;
 wire \recv.clk_rcvr.cntr[0] ;
 wire \recv.clk_rcvr.cntr[1] ;
 wire \recv.clk_rcvr.i ;
 wire \recv.clk_rcvr.prev_i ;
 wire \recv.reset_detect.cntr[10] ;
 wire \recv.reset_detect.cntr[9] ;
 wire \recv.sync_detect.data[0] ;
 wire \recv.sync_detect.data[2] ;
 wire \recv.sync_detect.data[3] ;

 sky130_fd_sc_hd__inv_2 _0746_ (.A(partition__0281_),
    .Y(\recv.clk_rcvr.i ));
 sky130_fd_sc_hd__nor2_2 _0806_ (.A(\recv.clk_rcvr.cntr[0] ),
    .B(\recv.clk_rcvr.cntr[1] ),
    .Y(partition__0339_));
 sky130_fd_sc_hd__nor3_2 _0817_ (.A(\recv.clk_rcvr.cntr[0] ),
    .B(\recv.clk_rcvr.cntr[1] ),
    .C(\partition_recv.sync_detect.data[4] ),
    .Y(_0350_));
 sky130_fd_sc_hd__and4bb_2 _0818_ (.A_N(\recv.sync_detect.data[2] ),
    .B_N(\partition_recv.sync_detect.data[6] ),
    .C(\partition_recv.sync_detect.data[5] ),
    .D(\recv.sync_detect.data[3] ),
    .X(_0351_));
 sky130_fd_sc_hd__and4b_2 _0819_ (.A_N(\recv.sync_detect.data[0] ),
    .B(\partition_recv.sync_detect.data[1] ),
    .C(_0350_),
    .D(_0351_),
    .X(partition__0352_));
 sky130_fd_sc_hd__buf_1 _0823_ (.A(partition__0281_),
    .X(partition__0356_));
 sky130_fd_sc_hd__nor3_2 _0907_ (.A(\recv.reset_detect.cntr[9] ),
    .B(\partition_recv.reset_detect.cntr[8] ),
    .C(\recv.reset_detect.cntr[10] ),
    .Y(partition__0433_));
 sky130_fd_sc_hd__xor2_2 _0936_ (.A(\recv.clk_rcvr.prev_i ),
    .B(partition__0356_),
    .X(_0456_));
 sky130_fd_sc_hd__nand2_2 _0937_ (.A(_0456_),
    .B(\recv.clk_rcvr.cntr[0] ),
    .Y(_0012_));
 sky130_fd_sc_hd__buf_1 _0938_ (.A(partition__0359_),
    .X(partition__0457_));
 sky130_fd_sc_hd__and2_2 _0939_ (.A(\recv.clk_rcvr.cntr[0] ),
    .B(\recv.clk_rcvr.cntr[1] ),
    .X(_0458_));
 sky130_fd_sc_hd__o21a_2 _0940_ (.A1(partition__0457_),
    .A2(_0458_),
    .B1(_0456_),
    .X(_0013_));
 sky130_fd_sc_hd__buf_1 _1159_ (.A(partition__0349_),
    .X(partition__0604_));
 sky130_fd_sc_hd__nor2_2 _1182_ (.A(\partition_recv.reset_detect.cntr[8] ),
    .B(partition__0619_),
    .Y(_0620_));
 sky130_fd_sc_hd__xnor2_2 _1183_ (.A(\recv.reset_detect.cntr[9] ),
    .B(_0620_),
    .Y(_0621_));
 sky130_fd_sc_hd__o21ai_2 _1184_ (.A1(usb_rst),
    .A2(_0621_),
    .B1(partition__0604_),
    .Y(_0086_));
 sky130_fd_sc_hd__o31ai_2 _1186_ (.A1(\recv.reset_detect.cntr[9] ),
    .A2(\partition_recv.reset_detect.cntr[8] ),
    .A3(partition__0619_),
    .B1(\recv.reset_detect.cntr[10] ),
    .Y(_0623_));
 sky130_fd_sc_hd__a21oi_2 _1187_ (.A1(partition__0622_),
    .A2(_0623_),
    .B1(partition__0596_),
    .Y(_0087_));
 sky130_fd_sc_hd__nand2_2 _1189_ (.A(partition__0622_),
    .B(\partition_recv.reset_detect.cntr[11] ),
    .Y(_0625_));
 sky130_fd_sc_hd__a21oi_2 _1190_ (.A1(partition__0624_),
    .A2(_0625_),
    .B1(partition__0596_),
    .Y(_0088_));
 sky130_fd_sc_hd__or3_2 _1335_ (.A(\recv.clk_rcvr.cntr[0] ),
    .B(\recv.clk_rcvr.cntr[1] ),
    .C(\recv.clk_rcvr.i ),
    .X(_0190_));
 sky130_fd_sc_hd__o21a_2 _1336_ (.A1(\partition_recv.nrzi_decoder.prev_i ),
    .A2(partition__0457_),
    .B1(_0190_),
    .X(_0141_));
 sky130_fd_sc_hd__o22a_2 _1419_ (.A1(\recv.sync_detect.data[0] ),
    .A2(partition__0457_),
    .B1(partition__0349_),
    .B2(_0190_),
    .X(_0168_));
 sky130_fd_sc_hd__mux2_2 _1420_ (.A0(\partition_recv.sync_detect.data[1] ),
    .A1(\recv.sync_detect.data[0] ),
    .S(partition__0195_),
    .X(_0247_));
 sky130_fd_sc_hd__buf_1 _1421_ (.A(_0247_),
    .X(partition__0169_));
 sky130_fd_sc_hd__mux2_2 _1422_ (.A0(\recv.sync_detect.data[2] ),
    .A1(\partition_recv.sync_detect.data[1] ),
    .S(partition__0195_),
    .X(_0248_));
 sky130_fd_sc_hd__buf_1 _1423_ (.A(_0248_),
    .X(_0170_));
 sky130_fd_sc_hd__mux2_2 _1424_ (.A0(\recv.sync_detect.data[3] ),
    .A1(\recv.sync_detect.data[2] ),
    .S(partition__0195_),
    .X(_0249_));
 sky130_fd_sc_hd__buf_1 _1425_ (.A(_0249_),
    .X(_0171_));
 sky130_fd_sc_hd__mux2_2 _1426_ (.A0(\partition_recv.sync_detect.data[4] ),
    .A1(\recv.sync_detect.data[3] ),
    .S(partition__0359_),
    .X(_0250_));
 sky130_fd_sc_hd__buf_1 _1427_ (.A(_0250_),
    .X(partition__0172_));
 sky130_fd_sc_hd__o21ba_2 _1428_ (.A1(\partition_recv.sync_detect.data[5] ),
    .A2(partition__0457_),
    .B1_N(_0350_),
    .X(partition__0173_));
 sky130_fd_sc_hd__mux2_2 _1429_ (.A0(\partition_recv.sync_detect.data[6] ),
    .A1(\partition_recv.sync_detect.data[5] ),
    .S(partition__0359_),
    .X(_0251_));
 sky130_fd_sc_hd__buf_1 _1430_ (.A(_0251_),
    .X(partition__0174_));
 sky130_fd_sc_hd__dfrtp_2 _1464_ (.CLK(clk_48),
    .D(partition__0711_),
    .RESET_B(rst_n),
    .Q(data_strobe));
 sky130_fd_sc_hd__dfrtp_2 _1513_ (.CLK(clk_48),
    .D(partition__0002_),
    .RESET_B(rst_n),
    .Q(\partition_recv.sm.state[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1516_ (.CLK(clk_48),
    .D(partition__0078_),
    .RESET_B(rst_n),
    .Q(\partition_recv.reset_detect.cntr[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1518_ (.CLK(clk_48),
    .D(partition__0080_),
    .RESET_B(rst_n),
    .Q(\partition_recv.reset_detect.cntr[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1520_ (.CLK(clk_48),
    .D(partition__0082_),
    .RESET_B(rst_n),
    .Q(\partition_recv.reset_detect.cntr[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1523_ (.CLK(clk_48),
    .D(partition__0085_),
    .RESET_B(rst_n),
    .Q(\partition_recv.reset_detect.cntr[8] ));
 sky130_fd_sc_hd__dfrtp_2 _1524_ (.CLK(clk_48),
    .D(_0086_),
    .RESET_B(rst_n),
    .Q(\recv.reset_detect.cntr[9] ));
 sky130_fd_sc_hd__dfrtp_2 _1525_ (.CLK(clk_48),
    .D(_0087_),
    .RESET_B(rst_n),
    .Q(\recv.reset_detect.cntr[10] ));
 sky130_fd_sc_hd__dfrtp_2 _1526_ (.CLK(clk_48),
    .D(_0088_),
    .RESET_B(rst_n),
    .Q(\partition_recv.reset_detect.cntr[11] ));
 sky130_fd_sc_hd__dfrtp_2 _1527_ (.CLK(clk_48),
    .D(partition__0089_),
    .RESET_B(rst_n),
    .Q(\partition_recv.reset_detect.cntr[12] ));
 sky130_fd_sc_hd__dfxtp_2 _1579_ (.CLK(clk_48),
    .D(_0141_),
    .Q(\partition_recv.nrzi_decoder.prev_i ));
 sky130_fd_sc_hd__dfrtp_2 _1587_ (.CLK(clk_48),
    .D(_0012_),
    .RESET_B(rst_n),
    .Q(\recv.clk_rcvr.cntr[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1588_ (.CLK(clk_48),
    .D(_0013_),
    .RESET_B(rst_n),
    .Q(\recv.clk_rcvr.cntr[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1589_ (.CLK(clk_48),
    .D(\recv.clk_rcvr.i ),
    .RESET_B(rst_n),
    .Q(\recv.clk_rcvr.prev_i ));
 sky130_fd_sc_hd__dfrtp_2 _1619_ (.CLK(clk_48),
    .D(_0168_),
    .RESET_B(rst_n),
    .Q(\recv.sync_detect.data[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1621_ (.CLK(clk_48),
    .D(_0170_),
    .RESET_B(rst_n),
    .Q(\recv.sync_detect.data[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1622_ (.CLK(clk_48),
    .D(_0171_),
    .RESET_B(rst_n),
    .Q(\recv.sync_detect.data[3] ));
endmodule
