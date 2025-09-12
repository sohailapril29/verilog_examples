class parent_trans;
bit[31:0] b1;
function void display_1();
    $$display("The value of b1 is = %0d",b1);;
endfunction
endclass


class child1_trans extends parent_trans;
string s1;
function void display_2();
    $display("Your name is =%0s", s1);
endfunction
endclass


class child2_trans extends parent_trans;
bit [31:0] b2;
function void display_3();
    $display("Your age is =%0d", b2);
endfunction
endclass

class child_A_trans extends child1_trans;
bit [31:0] b3;
function void display_4();
    $display("The value of b3 is =%0d", b3);
endfunction
endclass

class child_B_trans extends child_A_trans;

byte b4;
function void display_5();
    $display("The value of b4 is =%0d", b4);
endfunction
endclass


module multilevel;

initial begin
    child_B_trans c1;
    c1 =new();
    c1.b1=10;
    c1.s1="sohail";
    c1.b2=22;
    c1.b3=11;
    c1.b4=12;


c1.display_1();
c1.display_2();
c1.display_3();
c1.display_4();
c1.display_5();
end
endmodule