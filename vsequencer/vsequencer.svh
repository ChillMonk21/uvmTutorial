class vsequencer extends uvm_sequencer;
    `uvm_component_utils(vsequencer)

    mySequencer seqr1;
    mySequencer seqr2;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction
endclass