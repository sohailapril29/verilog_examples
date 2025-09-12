class class_name;

bit [31:0] data;
int id;

function new();
data=29;
id=1;
endfunction

local function void display();

$display("The value of data = %0d and Id is %0d",data,id);

endfunction

endclass

class child_class extends class_name;
bit [31:0] addr;

task task_name;
addr = data * id ;
display(); 
$display("The value of data and id is %0d ", addr);

endtask


endclass


module module_name;

child_class t1;


initial begin
t1 = new()
t1.task_name();

end
endmodule

