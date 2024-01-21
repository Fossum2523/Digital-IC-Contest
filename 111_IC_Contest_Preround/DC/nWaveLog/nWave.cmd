verdiSetActWin -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvResizeWindow -win $_nWave1 -2 52 2880 1672
wvOpenFile -win $_nWave1 \
           {/home/merg112/m11202141/IC_Contest/111_IC_Contest_Preround/ncv/dc/LASER.vcd.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/C1X\[3:0\]} \
{/testfixture/C1Y\[3:0\]} \
{/testfixture/C2X\[3:0\]} \
{/testfixture/C2Y\[3:0\]} \
{/testfixture/CLK} \
{/testfixture/DONE} \
{/testfixture/RST} \
{/testfixture/X\[3:0\]} \
{/testfixture/Y\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 401633.153149 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 353611.797881 -snap {("G1" 9)}
wvZoomAll -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoom -win $_nWave1 134356.998390 413819.555040
wvSetCursor -win $_nWave1 140604.929743 -snap {("G1" 8)}
wvExit
