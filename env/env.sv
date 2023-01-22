class env extends uvm_env;
    `uvm_component_utils(env);

    myAgent agent1;
    myAgent agent2;
    vsequencer vseqr;
    scoreboard sb;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        agent1      = myAgent::type_id::create("agent1", this);
        agent2      = myAgent::type_id::create("agent2", this);
        vseqr       = vsequencer::type_id::create("vseqr", this);
    endfunction

    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        vseqr.seqr1 = agent1.sequencer;
        vseqr.seqr2 = agent2.sequencer;

        //Connect Sb and Agent -> Monitor ports
    endfunction

endclass