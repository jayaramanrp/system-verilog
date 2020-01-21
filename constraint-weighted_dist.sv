// constraint using weighted distribution 

class cons;
rand bit[0:7] number;
constraint c1 {number dist {[1:2]:=3, [3:9]:=7 };}
// := assign weight to the item or every value in the range 


// :/ assign weight to the item or  to a range as whole
//constraint c2 {number dist {[1:2]:=3, [3:9]:=7 , [10:12] :/ 8};}


endclass

module test;

    cons myclass;

    initial begin
        myclass=new;

      for (int i =0;i<10 ;i++ ) begin
        myclass.randomize();
        $display("Output =%d",myclass.number);
            
        end
    end

endmodule

//output for := c1
// # KERNEL: Output =  2
// # KERNEL: Output =  4
// # KERNEL: Output =  6
// # KERNEL: Output =  1
// # KERNEL: Output =  3
// # KERNEL: Output =  5
// # KERNEL: Output =  1
// # KERNEL: Output =  4
// # KERNEL: Output =  4
// # KERNEL: Output =  4

output for c2 or :/
//# KERNEL: Output =  2
// # KERNEL: Output =  6
// # KERNEL: Output =  7
// # KERNEL: Output = 11
// # KERNEL: Output =  5
// # KERNEL: Output =  3
// # KERNEL: Output = 10
// # KERNEL: Output =  3
// # KERNEL: Output = 10
// # KERNEL: Output =  7
