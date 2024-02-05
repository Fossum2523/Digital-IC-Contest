# JAM change to your design name
# For system_verilog add -sverilog  (.v -> .sv)

#RTL simulation
vcs -R -sverilog tb.sv JAM.v CalCost.v LX_Sort.v +define+USECOLOR+P1 +access+r +vcs+fsdbon +fsdb+mda +fsdbfile+JAM.fsdb -l run.log

#Gate-Level simuation
vcs -R -sverilog tb.sv JAM_syn.v +define+USECOLOR+SDF+P1 +access+r +sdfverbose +vcs+fsdbon +fsdb+mda +fsdbfile+JAM.fsdb -v /cad/CBDK/CBDK_IC_Contest_v2.5/Verilog/tsmc13_neg.v +maxdelays -l run_gate.log 
