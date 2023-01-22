class vsequence1 extends vsequence_base;
    `uvm_object_utils(vsequence1)

    mySequence seq1;
    mySequence seq2;

    function new(string name);
        super.new(name);
    endfunction

endclass