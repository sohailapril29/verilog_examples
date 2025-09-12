module module_name;

initial begin
$display("[%0t] Main Thread",$time);

fork

fork
print(20,"Thread1_0");
print(30,"Thread1_1");
join

print(10,"Thread2");
join

$display("[%0t] Main Thread finished", $time);

end


task automatic print(int _time,string _t_name);
#(_time)$display("[0%t] %s",$time,_t_name);
endtask

endmodule
