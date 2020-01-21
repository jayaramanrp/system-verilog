// constraint using inside operator- which can be used to define range of values

class cons;
rand bit[0:8] number;
constraint c1 {number inside {1,2,[3:9]};}
    //constraint c1 {!(number inside {1,2,[3:9]});} Invert the condition 

endclass

module test;

    cons myclass;

    initial begin
        myclass=new;

        for (int i =0;i<5 ;i++ ) begin
        myclass.randomize();
        $display("Output =%d",myclass.number);
            
        end
    end

endmodule

//output

// # KERNEL: Output =  1
// # KERNEL: Output =  5
// # KERNEL: Output =  5
// # KERNEL: Output =  7
// # KERNEL: Output =  2
