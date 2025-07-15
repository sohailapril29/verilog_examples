class parent_class;
bit [31:0] addr;

function display();
$display("The value of addr is = %0d", addr);
endfunction
endclass


class child_class extends parent_class;
bit [31:0] data;

function display();
$display("The value of data is = %0d", data);
endfunction
endclass


module inhertiance;
child_class c = new();
parent_class p;
initial begin 
c.addr=10;
c.data=20;
p=c;
//c.display();
p.display();

end

endmodule