class myDriver extends uvm_driver #(myItem);
    `uvm_component_utils(myDriver)

    virtual myInterface vif;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    task run_phase(uvm_phase phase);
        //TODO
    endtask
endclass