module rom #(
    parameter ADDRESS_WIDTH = 8,
              DATA_WIDTH = 8
) (
    input logic clk,
    input logic [ADDRESS_WIDTH-1:0] addr1,
    input logic [ADDRESS_WIDTH-1:0] addr2, // introducing a second input read and address output channel for dual rom
    output logic [DATA_WIDTH-1:0] dout1,
    output logic [DATA_WIDTH-1:0] dout2
);

logic [DATA_WIDTH-1:0] rom_array [2**ADDRESS_WIDTH-1:0];

initial begin
    $display("loading rom.");
    $readmemh("sinerom.mem", rom_array);
end;

always_ff @(posedge clk) begin// synchronous output
    dout1<=rom_array [addr1];
    dout2<=rom_array [addr2]; // outputting a second rom value based on address provided
    end
    
endmodule
