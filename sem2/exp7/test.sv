class class_name;

rand bit [2:0] a;
randc bit [2:0] b;

function void display();

$display("The value of a is %0d and value of b is %0d",a,b);

endfunction

endclass


module module_name;
class_name c1;
initial begin
c1=new();
repeat(10) begin
if(!c1.randomize())
$display("Fail");
else
c1.display();   
end

end

endmodule

class