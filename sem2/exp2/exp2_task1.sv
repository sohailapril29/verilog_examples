//test

class packet;
bit [31:0] addr;
bit [31:0] data;
bit write;
string pkt_type;

function new();
addr=32'h10;
data=32'hff;
write=1;
pkt_type="task1";
endfunction

function void display();
$display("\taddr=%0d", addr);
$display("\tdata=%0h", data);
$display ("\twrite=%0d", write);
$display ("\tpkt_type=%0s", pkt_type);
endfunction

endclass

module sv_constructor;
packet pkt; 

initial begin
pkt = new();
pkt.display();     
end
endmodule


