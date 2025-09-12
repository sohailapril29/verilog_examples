class packet;
byte packet_id;
static byte no_of_pks_created;

function new();
    no_of_pks_created++;
    packet_id=no_of_pks_created;
endfunction

function  void display();
    $display("\tpacket_id=%0d", packet_id);
endfunction
endclass

module static_properties;
packet pkt[3];
initial begin
    foreach(pkt[i])begin
        pkt[i]=new();
        pkt[i].display();
    end
end
endmodule

