# geofence change to your design name
# For system_verilog add -sverilog  (.v -> .sv)

#RTL simulation
vcs -R -sverilog tb.sv -f filelist.f +define+USECOLOR +access+r +vcs+fsdbon +fsdb+mda +fsdbfile+geofence.fsdb -l run.log

#Gate-Level simuation
vcs -R -sverilog tb.sv geofence_syn.v +define+USECOLOR+SDF +access+r +vcs+fsdbon +fsdb+mda +fsdbfile+geofence.fsdb -v /cad/CBDK/CBDK_IC_Contest_v2.5/Verilog/tsmc13_neg.v +maxdelays -l run_gate.log
