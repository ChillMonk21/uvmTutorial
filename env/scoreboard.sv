class scoreboard extends uvm_scoreboard;
    `uvm_component_utils(scoreboard)

    function new (string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
    endfunction

    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
    endfunction

    task run_phase(uvm_phase phase);
        `uvm_raise_objection(phase);

        `uvm_drop_objection(phase);
    endtask
endclass
