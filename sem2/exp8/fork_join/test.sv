module module_name;

initial begin

$display("[%0t] Main Thread",$time);

fork
//thread1

#30 $display("[%0t] Thread 1 finished",$time);

//thread2

begin
#5 $display("[%0t] Thread2 started",$time);
#10 $display("[%0t] Thread2 Finished",$time);
end
//hello i am sohail
//thread3

#20 $display("[%0t] Thread3 finished",$time);

join

$display("[%0t] Main Thread",$time);

end

endmodule



/*
output

[0] Main Thread
[5] Thread2 started
[15] Thread2 finished
[20] Thread3 finished
[30] Thread1 finished
[30] Main Thread


*/
