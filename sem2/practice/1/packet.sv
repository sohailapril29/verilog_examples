class packet;
  string name;
  int number;

  function new(string n, int num);
    name=n;
    number=num;
  endfunction


  function void display();
    $display("name %s and number is %0d",name,number);
  endfunction

endclass

module tb;
packet pkt[2];

initial begin
$display("Student Details Are");
pkt[0]=new("sohail",22);
pkt[1]=new("siddique",73);
pkt[0].display();
pkt[1].display();
pkt[1].name="badrunisa";
$display("name updated");
pkt[1].display();
pkt[1].number=63;
$display("number upddated");
pkt[1].display();
end

endmodule

