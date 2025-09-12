class parent_class;
bit [31:0] addr;
endclass

class child_class extends parent_class;
bit [31:0] data;
endclass

module Inheritance;
initial begin
child_class c1=new();
c1.addr=29;
c1.data=26;
$display("the value of address is = %0d, \nand the value of data is = %0d", c1.addr,c1.data);

end
endmodule



