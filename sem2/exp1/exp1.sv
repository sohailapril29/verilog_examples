class Student;
// Properties (Data Members)
string name;
int roll_no;
real marks;
// Constructor
function new(string n, int r, real m);
name = n;
roll_no = r;
marks = m;
endfunction
// Method to display student info
function void display();
$display("Name : %s", name);
$display("Roll No : %0d", roll_no);
$display("Marks : %0.2f", marks);
endfunction
endclass


module tb;
  // Declare object
  Student s1, s2, s3;

  initial begin
    // Create objects and access class methods
    s1 = new("Zakir", 101, 89.5);
    s2 = new("Rahul", 102, 78.25);
    s3 = new("Raju", 103, 9.06);

    // Access method to display data
    $display("Student 1 Details:");
    s1.display();
    $display("\nStudent 2 Details:");
    s2.display();
    $display("\nStudent 3 Details:");
    s3.display();

    // Access and modify property directly
    s2.marks = 82.0;
    $display("\nStudent 2 Updated Marks:");
    s2.display();

    // Sohail

    s1.name = "Mohammed Sohail";
    $display("\nStudent 1 Updated Name:");
    s1.display();

    s1.roll_no = 8;
    $display("\nStudent 1 Updated roll no:");
    s1.display();

    s1.marks = 9.06;
    $display("\nStudent 1 Updated marks:");
    s1.display();

    // Student 2

    s2.name = "Mohammed Irfan";
    $display("\nStudent 2 Updated Name:");
    s2.display();

    s2.roll_no = 6;
    $display("\nStudent 2 Updated roll no:");
    s2.display();

    s2.marks = 9.00;
    $display("\nStudent 2 Updated marks:");
    s2.display();

    // Student 3

    s3.name = "Mohammed Aman";
    $display("\nStudent 3 Updated Name:");
    s3.display();

    s3.roll_no = 7;
    $display("\nStudent 3 Updated roll no:");
    s3.display();

    s3.marks = 8.06;
    $display("\nStudent 3 Updated marks:");
    s3.display();
  end
endmodule