class transcation;

bit[31:0] data;
int id;

function new();
data=100;
id=1;
endfunction


local function void display();

$display("The value of DATA is =%0D and the value of ID is " , data,id);


endfunction

endclass


module class_name;

transcation tr;

initial begin
tr = new();
tr.display();
end

endmodule


// in this i have used local for class method and it gives me a error