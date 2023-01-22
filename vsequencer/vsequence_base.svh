class vsequence_base extends uvm_sequence;
    `uvm_object_utils(vsequence_base)
    `uvm_p_sequencer_handle(vsequencer)

    mySequencer seqr1;
    mySequencer seqr2;

    function new(string name);
        super.new(name);
    endfunction
endclass