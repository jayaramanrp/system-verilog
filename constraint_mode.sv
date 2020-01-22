    //Application of constraint mode 
    //constraint_mode() -dedfault value 1
    //to disable constraint mode : constraint_mode(0)

 class rand_cons_class;
    rand bit [0:1] a;
  constraint no_zero{ a != 2'b00;} //0
endclass


module test;
    rand_cons_class myclass;

    initial begin
        myclass=new;
      myclass.constraint_mode(0); //disable constraint
      // myclass.constraint_mode(1); //enable constraint ot it is a default mode

      

      for(int i=0;i<4; i++)
        begin
         myclass.randomize();
         $display("output %d",myclass.a);
        end //for_loop
     end
endmodule //test


// # KERNEL: output 1
// # KERNEL: output 3
// # KERNEL: output 0
// # KERNEL: output 1
