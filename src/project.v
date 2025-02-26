module tt_um_example (
    input  wire [7:0] ui_in,    
    output wire [7:0] uo_out,   
    input  wire [7:0] uio_in,   
    output wire [7:0] uio_out,  
    output wire [7:0] uio_oe,   
    input  wire       ena,      
    input  wire       clk,      
    input  wire       rst_n     
);

    wire [15:0] In;      
    assign In = {ui_in, uio_in};  

    assign uo_out = (In[15] ? 8'd15 :
                     In[14] ? 8'd14 :
                     In[13] ? 8'd13 :
                     In[12] ? 8'd12 :
                     In[11] ? 8'd11 :
                     In[10] ? 8'd10 :
                     In[9]  ? 8'd9  :
                     In[8]  ? 8'd8  :
                     In[7]  ? 8'd7  :
                     In[6]  ? 8'd6  :
                     In[5]  ? 8'd5  :
                     In[4]  ? 8'd4  :
                     In[3]  ? 8'd3  :
                     In[2]  ? 8'd2  :
                     In[1]  ? 8'd1  :
                     In[0]  ? 8'd0  : 8'b11110000); // Special case

endmodule
