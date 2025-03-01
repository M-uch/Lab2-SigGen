module ram #(
    parameter ADDRESS_WIDTH = 9, // 2^9 addresses = 512 address ram
              DATA_WIDTH = 8
) (
    input logic clk,
    input logic wr_en,
    input logic rd_en,
    input logic [ADDRESS_WIDTH-1:0] wr_addr,
    input logic [ADDRESS_WIDTH-1:0] rd_addr,
    input logic [DATA_WIDTH-1:0] din,
    output logic [DATA_WIDTH-1:0] dout
);

logic [DATA_WIDTH-1:0] ram_array [2**ADDRESS_WIDTH-1:0];

always_ff @(posedge clk) begin
    if (wr_en == 1'b1)
        ram_array[wr_addr] <= din; // writing into an array address
    if (rd_en == 1'b1)
        dout <= ram_array [rd_addr]; // reading from an array address
end
endmodule
