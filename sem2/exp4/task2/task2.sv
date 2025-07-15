class parent_class;
bit [31:0] b1;

function void display_1();
$display("The value of bit is = %0d", b1);
endfunction
endclass



class child_class extends parent_class;
bit [31:0] b2;

function void display_2();
$display("The value of b2 = %0d", b2);
endfunction
endclass

module inhertiance_example;
initial begin
    child_class c2;
    c2 =new();
    c2.b1=10;
    c2.b2=11;

    c2.display_1();
    c2.display_2();
end
endmodule
