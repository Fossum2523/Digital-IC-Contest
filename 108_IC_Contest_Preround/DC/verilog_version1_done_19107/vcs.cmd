# SME change to your design name
# For system_verilog add -sverilog  (.v -> .sv)

#RTL simulation
vcs -R -sverilog tb_term.sv SME.v +define+USECOLOR +access+r +vcs+fsdbon +fsdb+mda +fsdbfile+SME.fsdb -l run.log

#Gate-Level simuation
vcs -R -sverilog tb_term.sv SME_syn.v +define+USECOLOR+SDF +access+r +vcs+fsdbon +fsdb+mda +fsdbfile+SME.fsdb -v /cad/CBDK/CBDK_IC_Contest_v2.5/Verilog/tsmc13_neg.v +maxdelays -l run_gate.log
