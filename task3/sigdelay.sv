module sigdelay #(
    parameter A_WIDTH = 9,
              D_WIDTH = 8
) (
    input logic clk, 
    input logic rst,
    input logic en, 
    input logic wr,
    input logic rd,
    input logic [D_WIDTH-1:0] offset, // increment val for addr counter
    input logic [D_WIDTH-1:0] mic_signal,
    output logic [D_WIDTH-1:0] delayed_signal
);
    

    logic [A_WIDTH-1:0] addresswr;
    logic [A_WIDTH-1:0] addressrd;
    assign addressrd = addresswr + offset; // offsetting address 2 by a set increment

counter addrCounter (
    .clk (clk),
    .rst (rst),
    .en (en),
    // .incr (incr),
    .count (addresswr)
);

ram audioram (
    .clk (clk),
    .wr_en (wr),
    .rd_en (rd),
    .wr_addr (addresswr),
    .rd_addr (addressrd),
    .din (mic_signal),
    .dout (delayed_signal)
);

endmodule
