module tb_jk_flipflop;

reg clk;
reg J;
reg K;
wire Q;

jk_flipflop uut(
    .clk(clk),
    .J(J),
    .K(K),
    .Q(Q)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb_jk_flipflop);

    clk = 0;

    J=0; K=0;
    #10;

    J=0; K=1;
    #10;

    J=1; K=0;
    #10;

    J=1; K=1;
    #10;

    $finish;
end

endmodule