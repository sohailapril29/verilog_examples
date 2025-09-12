class transcation;

bit [31:0] data;
local int id;

function new();

data=100;
id=6;
endfunction

function void display();
$display("the value of data = %0d, id = %0d", data,id);
endfunction

endclass


module class_name;

initial begin
transcation tr;
tr = new();
tr.display();
end

endmodule