class class_name;

bit [31:0] data;
int id;

function new();
data=10;
id=1;

endfunction

protected function void display();
$display("the value of data and id is %0d | %0d", data,id);
endfunction




endclass


module module_name;

class_name t1;

initial begin
t1 = new();

t1.display();

end
endmodule

