# $DESIGN change to your design name
# For system_verilog add -sverilog  (.v -> .sv)

#RTL simulation
vcs -R $DESIGN_TB.v $DESIGN.v +define+USECOLOR +access+r +vcs+fsdbon +fsdb+mda +fsdbfile+$DESIGN.fsdb -l run.log

#Gate-Level simuation
vcs -R $DESIGN_TB.v $DESIGN_syn.v +define+USECOLOR+SDF +access+r +vcs+fsdbon +fsdb+mda +fsdbfile+$DESIGN.fsdb -v /cad/CBDK/CBDK_IC_Contest_v2.5/Verilog/tsmc13_neg.v +maxdelays -l run_gate.log
