//constraints 
class rand_cons_class;
  rand bit[0:2] a;
  
  //defining constraint 
  constraint c1 { a != 3'b0; } //rand can generate any value other than 0
  
  
endclass 

module testing_constraint;
	rand_cons_class myclass;
  
  initial begin
    myclass=new;
    for(int i=0;i<4; i++) //create 4 possible constraints
      begin    
        myclass.randomize();
        $display("output= %d",myclass.a);
      end
    
    
  end
endmodule
