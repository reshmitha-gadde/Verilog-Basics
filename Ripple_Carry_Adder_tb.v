module Ripple_Carry_Adder_tb;

reg [3:0] A, B;
reg Cin;
wire [3:0] Sum;
wire Cout;

integer i, j, k;

ripple_carry_adder uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin
    for (i = 0; i < 16; i = i + 1) begin
        for (j = 0; j < 16; j = j + 1) begin
            for (k = 0; k < 2; k = k + 1) begin
                A = i;
                B = j;
                Cin = k;
                #10;

                $display("A=%b B=%b Cin=%b Sum=%b Cout=%b",
                          A, B, Cin, Sum, Cout);
            end
        end
    end

    $finish;
end

endmodule
