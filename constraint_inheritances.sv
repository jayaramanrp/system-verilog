//constraint in inheritance

class rand_cons_class;
    rand bit [0:1] a;
  constraint no_zero{ a != 2'b00;} //0
endclass

class r1 extends rand_cons_class;
  constraint no_one { a != 2'b01; } //1
endclass

class r2 extends rand_cons_class;
  constraint no_zero{} //remove constraint or override the condition 
  constraint no_three { a != 2'b11; } //3
endclass

module test;
    r2 myclass;

    initial begin
        myclass=new;
      for(int i=0;i<4; i++)
        begin
         myclass.randomize();
         $display("output %d",myclass.a);
        end //for_loop
     end
endmodule //test


//output
// KERNEL: output 1
// KERNEL: output 0
// KERNEL: output 2
// KERNEL: output 1
