class myAgent extends uvm_agent;
    `uvm_component_utils(myAgent)

    virtual myInterface vif;

    myDriver driver;
    myMonitor monitor;
    mySequencer sequencer;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);

        if(get_is_active == UVM_ACTIVE) begin
            driver      = myDriver::type_id::create("driver", this);
            sequencer   = mySequencer::type_id::create("sequencer", this);
        end
        monitor     = myMonitor::type_id::create("monitor", this);
    endfunction

    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);

        if(!(uvm_config_db(virtual myInterface)::get(null, "", "myVIF", vif))) 
            `uvm_fatal(get_name(), "Unable to get VIF")
        
        if(get_is_active == UVM_ACTIVE) begin
            driver.vif      = vif;
            driver.seq_item_port.connect(monitor.seq_item_export);
        end
        monitor.vif     = vif;
    endfunction
endclass