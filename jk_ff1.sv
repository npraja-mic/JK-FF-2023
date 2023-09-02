module jk_ff(
    input clk,
    input rst,
    input j,
    input k,
    output reg q_out
);
always@(posedge clk) begin
    if(rst) begin
        q_out <= 1'b0;
    end else begin
        case({j,k})
        2'b00: q_out <= q_out;
        2'b01: q_out <= 1'b0;
        2'b10: q_out <= 1'b1;
        2'b11: q_out <= !q_out;
        default:q_out <= q_out;
        endcase
    end
end
endmodule