verdiSetActWin -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvResizeWindow -win $_nWave1 -2 52 2880 1672
wvOpenFile -win $_nWave1 \
           {/home/merg112/m11202141/IC_Contest/108_IC_Contest_Preround/verilog_version1/SME.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/_vcs_unit__575731748"
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/_vcs_unit__575731748"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_SME"
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_SME/curr_state\[3:0\]} \
{/testfixture/u_SME/\\string_curr_state\[1\] } \
{/testfixture/u_SME/pattern_curr_state\[1:0\]} \
{/testfixture/u_SME/pattern_next_state\[1:0\]} \
{/testfixture/u_SME/string_next_state\[1:0\]} \
{/testfixture/u_SME/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_SME/curr_state\[3:0\]} \
{/testfixture/u_SME/\\string_curr_state\[1\] } \
{/testfixture/u_SME/pattern_curr_state\[1:0\]} \
{/testfixture/u_SME/pattern_next_state\[1:0\]} \
{/testfixture/u_SME/string_next_state\[1:0\]} \
{/testfixture/u_SME/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 536151440.968723 -snap {("G2" 0)}
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvExit
