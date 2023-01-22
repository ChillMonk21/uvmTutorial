class myItem extends uvm_sequence_item;
    rand logic [31:0] tx_data [8];
    rand logic [7:0]  tx_id;
    rand logic [31:0] tx_addr;
    rand logic        tx_read;
    rand logic        tx_read;

    `uvm_object_utils_begin(myItem)
        `uvm_field_sarray_int(tx_data, UVM_DEFAULT);
        `uvm_field_int(tx_id, UVM_DEFAULT);
    `uvm_object_utils_end

    function new(string name);
        super.new(name);
    endfunction
    
endclass