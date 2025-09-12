class packet;
byte packet_id;
static byte no_of_pkts_created;

function new();
no_of_pkts_created++;
endfunction

static function void display_created();
$display("\tpacket id", packet_id);
$display("\tpacket created", no_of_pkts_created);
endfunction
endclass

module sv_prop;
packet pkt[3];
initial begin
    foreach(pkt[i]) begin
    pkt[i]=new();
    end
    pkt[0].display_created();
end
endmodule

