class transcation;

bit [31:0] data;
local int id;

function void display();

$display("The value of data =%0d and ID is = %0d", data,id);

endfunction
endclass


module class_name;

transcation t1;

initial begin
t1 = new();
t1.data=29;
t1.id=6;
t1.display();

end
endmodule

// in this code i am assigning the value for class properties outside the class scope