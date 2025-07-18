class class_name;

bit [31:0] data;
int id;


function new();
data=21;
id=1;
display();

endfunction

local function void display();
$display("The value of data is %0d and id is %0d",data,id);
endfunction

endclass


module module_name;

class_name t1;
initial begin
t1 = new();
end

endmodule
