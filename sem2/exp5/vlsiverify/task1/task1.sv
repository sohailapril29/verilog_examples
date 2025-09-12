//Value of data = 5
//Value of id = 1

class parent;
bit[31:0] address;
function void display();
$display("Value of data = %0d",address);
endfunction
endclass


class son extends parent;
bit[31:0] location;
function void display_2();
$display("Value of id = %0d",location);
endfunction
endclass


module inhertiance;

son s1 = new();
parent p1 = new();

initial begin
p1.address=5;
s1.location=1;



p1.display();
s1.display_2();
end

endmodule



