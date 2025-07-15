class packet;
bit [31:0] addr;
bit [31:0] data;
bit write;
string pkt_type;

function new(bit [31:0] a, bit [31:0] b,bit c,string d);
addr=a;
data=b;
write=c;
pkt_type=d;
endfunction




function void display();
$display("\taddr=%0d", addr);
$display("\tdata=%0h", data);
$display ("\twrite=%0d", write);
$display ("\tpktype=%0s", pkt_type);
endfunction

endclass

module sv_constructor;
packet pkt; 
initial begin
pkt = new(32'h10,32'hff,1,"task2");
pkt.display();     
end
endmodule


