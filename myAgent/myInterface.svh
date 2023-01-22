interface  myInterface;
    logic [31:0]    addr;  
    logic [31:0]    data;
    logic [7:0]     id;
    logic           valid;
    logic           ready;
    logic           write;
    logic           read;      
    
endinterface // myInterface