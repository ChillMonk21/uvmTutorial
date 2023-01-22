class myMonitor extends uvm_monitor;
    `uvm_component_utils(myMonitor)

    virtual myInterface vif;
    uvm_analysis_port #(myItem) mon_port;

    myItem          = item;

    function new(string name, uvm_component parent);
        super.new(name, parent);

        mon_port    = new();
    endfunction

    task run_phase(uvm_phase phase);
        forever begin
            
        end
    endtask

endclass