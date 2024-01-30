vcs_kdb:comp_kdb run
vcs_cov:comp_cov run_cov
vcs_unr:comp_unr run_unr
vcs_xprop:comp_xprop run_xprop

comp_kdb:
	vcs -full64 -debug_acc -fastcomp -j2 -Xkeyopt=rtopt -lca -f filelist.f +vcs+fsdbon -kdb -l comp.log

comp_cov:
	vcs -full64 -debug_acc -fastcomp -j2 -Xkeyopt=rtopt -lca -f filelist.f -cm line +vcs+fsdbon -kdb -l comp.log

comp_unr:
	vcs -full64 -f filelist.f -fastcomp -j2 -Xkeyopt=rtopt -lca -cm line -unr=config.txt -l comp.log

comp_xprop:
	vcs -full64 -debug_acc -fastcomp -j2 -Xkeyopt=rtopt -lca -f filelist.f +vcs+fsdbon -kdg -xprop -l comp.log

run:
	./simv -l run.log

run_cov:
	./simv -cm line -l run_cov.log

run_unr:
	./unrSimv -cm line -unr=config.txt -l run_unr.log

run_xprop:
	./simv -report=xprop -l run_xprop.log

verdi:
	verdi -f filelist.f -ssf novas.fsdb

verdi_kdb:
	verdi -simflow -simBin simv -ssf novas.fsdb

verdi_cov:
	verdi -cov -covdir simv.vdb

verdi_unr:
	verdi -cov -covdir simv.vdb -elfile unreachables.el

clean:
	rm -rf unrSimv* simv* csrc* *.log *key *fsdb *Log *bak *el *report no_trace* vhdl* partition* dprof* clk* *DB *dir work *lib
