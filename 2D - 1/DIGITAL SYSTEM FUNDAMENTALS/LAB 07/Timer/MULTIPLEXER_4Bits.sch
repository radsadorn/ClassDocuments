<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="S_0" />
        <signal name="S_1" />
        <signal name="XLXN_10" />
        <signal name="A0" />
        <signal name="B0" />
        <signal name="C0" />
        <signal name="D0" />
        <signal name="A1" />
        <signal name="B1" />
        <signal name="C1" />
        <signal name="D1" />
        <signal name="A2" />
        <signal name="B2" />
        <signal name="C2" />
        <signal name="D2" />
        <signal name="A3" />
        <signal name="B3" />
        <signal name="C3" />
        <signal name="D3" />
        <signal name="OUT_0" />
        <signal name="OUT_1" />
        <signal name="OUT_2" />
        <signal name="OUT_3" />
        <port polarity="Input" name="S_0" />
        <port polarity="Input" name="S_1" />
        <port polarity="Input" name="A0" />
        <port polarity="Input" name="B0" />
        <port polarity="Input" name="C0" />
        <port polarity="Input" name="D0" />
        <port polarity="Input" name="A1" />
        <port polarity="Input" name="B1" />
        <port polarity="Input" name="C1" />
        <port polarity="Input" name="D1" />
        <port polarity="Input" name="A2" />
        <port polarity="Input" name="B2" />
        <port polarity="Input" name="C2" />
        <port polarity="Input" name="D2" />
        <port polarity="Input" name="A3" />
        <port polarity="Input" name="B3" />
        <port polarity="Input" name="C3" />
        <port polarity="Input" name="D3" />
        <port polarity="Output" name="OUT_0" />
        <port polarity="Output" name="OUT_1" />
        <port polarity="Output" name="OUT_2" />
        <port polarity="Output" name="OUT_3" />
        <blockdef name="m4_1e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-416" y2="-416" x1="0" />
            <line x2="96" y1="-352" y2="-352" x1="0" />
            <line x2="96" y1="-288" y2="-288" x1="0" />
            <line x2="96" y1="-224" y2="-224" x1="0" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-320" y2="-320" x1="320" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="176" />
            <line x2="176" y1="-208" y2="-96" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="224" />
            <line x2="224" y1="-216" y2="-32" x1="224" />
            <line x2="96" y1="-224" y2="-192" x1="256" />
            <line x2="256" y1="-416" y2="-224" x1="256" />
            <line x2="256" y1="-448" y2="-416" x1="96" />
            <line x2="96" y1="-192" y2="-448" x1="96" />
            <line x2="96" y1="-160" y2="-160" x1="128" />
            <line x2="128" y1="-200" y2="-160" x1="128" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="m4_1e" name="XLXI_1">
            <blockpin signalname="A0" name="D0" />
            <blockpin signalname="B0" name="D1" />
            <blockpin signalname="C0" name="D2" />
            <blockpin signalname="D0" name="D3" />
            <blockpin signalname="XLXN_10" name="E" />
            <blockpin signalname="S_0" name="S0" />
            <blockpin signalname="S_1" name="S1" />
            <blockpin signalname="OUT_0" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_2">
            <blockpin signalname="A1" name="D0" />
            <blockpin signalname="B1" name="D1" />
            <blockpin signalname="C1" name="D2" />
            <blockpin signalname="D1" name="D3" />
            <blockpin signalname="XLXN_10" name="E" />
            <blockpin signalname="S_0" name="S0" />
            <blockpin signalname="S_1" name="S1" />
            <blockpin signalname="OUT_1" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_3">
            <blockpin signalname="A2" name="D0" />
            <blockpin signalname="B2" name="D1" />
            <blockpin signalname="C2" name="D2" />
            <blockpin signalname="D2" name="D3" />
            <blockpin signalname="XLXN_10" name="E" />
            <blockpin signalname="S_0" name="S0" />
            <blockpin signalname="S_1" name="S1" />
            <blockpin signalname="OUT_2" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_4">
            <blockpin signalname="A3" name="D0" />
            <blockpin signalname="B3" name="D1" />
            <blockpin signalname="C3" name="D2" />
            <blockpin signalname="D3" name="D3" />
            <blockpin signalname="XLXN_10" name="E" />
            <blockpin signalname="S_0" name="S0" />
            <blockpin signalname="S_1" name="S1" />
            <blockpin signalname="OUT_3" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_11">
            <blockpin signalname="XLXN_10" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1568" y="576" name="XLXI_1" orien="R0" />
        <instance x="1568" y="1088" name="XLXI_2" orien="R0" />
        <instance x="1568" y="1616" name="XLXI_3" orien="R0" />
        <instance x="1568" y="2096" name="XLXI_4" orien="R0" />
        <branch name="S_0">
            <wire x2="1232" y1="2192" y2="2192" x1="1024" />
            <wire x2="1568" y1="416" y2="416" x1="1232" />
            <wire x2="1232" y1="416" y2="928" x1="1232" />
            <wire x2="1568" y1="928" y2="928" x1="1232" />
            <wire x2="1232" y1="928" y2="1456" x1="1232" />
            <wire x2="1568" y1="1456" y2="1456" x1="1232" />
            <wire x2="1232" y1="1456" y2="1936" x1="1232" />
            <wire x2="1568" y1="1936" y2="1936" x1="1232" />
            <wire x2="1232" y1="1936" y2="2192" x1="1232" />
        </branch>
        <branch name="S_1">
            <wire x2="1312" y1="2256" y2="2256" x1="1024" />
            <wire x2="1568" y1="480" y2="480" x1="1312" />
            <wire x2="1312" y1="480" y2="992" x1="1312" />
            <wire x2="1568" y1="992" y2="992" x1="1312" />
            <wire x2="1312" y1="992" y2="1520" x1="1312" />
            <wire x2="1568" y1="1520" y2="1520" x1="1312" />
            <wire x2="1312" y1="1520" y2="2000" x1="1312" />
            <wire x2="1312" y1="2000" y2="2256" x1="1312" />
            <wire x2="1568" y1="2000" y2="2000" x1="1312" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1504" y1="544" y2="1056" x1="1504" />
            <wire x2="1504" y1="1056" y2="1584" x1="1504" />
            <wire x2="1568" y1="1584" y2="1584" x1="1504" />
            <wire x2="1504" y1="1584" y2="2064" x1="1504" />
            <wire x2="1568" y1="2064" y2="2064" x1="1504" />
            <wire x2="1504" y1="2064" y2="2448" x1="1504" />
            <wire x2="1568" y1="1056" y2="1056" x1="1504" />
            <wire x2="1568" y1="544" y2="544" x1="1504" />
        </branch>
        <instance x="1568" y="2448" name="XLXI_11" orien="R180" />
        <branch name="A0">
            <wire x2="1568" y1="160" y2="160" x1="1024" />
        </branch>
        <branch name="B0">
            <wire x2="1568" y1="224" y2="224" x1="1024" />
        </branch>
        <branch name="C0">
            <wire x2="1568" y1="288" y2="288" x1="1024" />
        </branch>
        <branch name="D0">
            <wire x2="1568" y1="352" y2="352" x1="1024" />
        </branch>
        <branch name="A1">
            <wire x2="1568" y1="672" y2="672" x1="1040" />
        </branch>
        <branch name="B1">
            <wire x2="1568" y1="736" y2="736" x1="1040" />
        </branch>
        <branch name="C1">
            <wire x2="1568" y1="800" y2="800" x1="1040" />
        </branch>
        <branch name="D1">
            <wire x2="1568" y1="864" y2="864" x1="1040" />
        </branch>
        <branch name="A2">
            <wire x2="1568" y1="1200" y2="1200" x1="1040" />
        </branch>
        <branch name="B2">
            <wire x2="1568" y1="1264" y2="1264" x1="1040" />
        </branch>
        <branch name="C2">
            <wire x2="1568" y1="1328" y2="1328" x1="1040" />
        </branch>
        <branch name="D2">
            <wire x2="1568" y1="1392" y2="1392" x1="1040" />
        </branch>
        <branch name="A3">
            <wire x2="1568" y1="1680" y2="1680" x1="1056" />
        </branch>
        <branch name="B3">
            <wire x2="1568" y1="1744" y2="1744" x1="1056" />
        </branch>
        <branch name="C3">
            <wire x2="1568" y1="1808" y2="1808" x1="1056" />
        </branch>
        <branch name="D3">
            <wire x2="1568" y1="1872" y2="1872" x1="1056" />
        </branch>
        <branch name="OUT_0">
            <wire x2="2864" y1="256" y2="256" x1="1888" />
        </branch>
        <branch name="OUT_1">
            <wire x2="2864" y1="768" y2="768" x1="1888" />
        </branch>
        <branch name="OUT_2">
            <wire x2="2848" y1="1296" y2="1296" x1="1888" />
        </branch>
        <branch name="OUT_3">
            <wire x2="2864" y1="1776" y2="1776" x1="1888" />
        </branch>
        <iomarker fontsize="28" x="2864" y="256" name="OUT_0" orien="R0" />
        <iomarker fontsize="28" x="2864" y="768" name="OUT_1" orien="R0" />
        <iomarker fontsize="28" x="2848" y="1296" name="OUT_2" orien="R0" />
        <iomarker fontsize="28" x="2864" y="1776" name="OUT_3" orien="R0" />
        <iomarker fontsize="28" x="1024" y="160" name="A0" orien="R180" />
        <iomarker fontsize="28" x="1024" y="224" name="B0" orien="R180" />
        <iomarker fontsize="28" x="1024" y="288" name="C0" orien="R180" />
        <iomarker fontsize="28" x="1024" y="352" name="D0" orien="R180" />
        <iomarker fontsize="28" x="1040" y="672" name="A1" orien="R180" />
        <iomarker fontsize="28" x="1040" y="736" name="B1" orien="R180" />
        <iomarker fontsize="28" x="1040" y="800" name="C1" orien="R180" />
        <iomarker fontsize="28" x="1040" y="864" name="D1" orien="R180" />
        <iomarker fontsize="28" x="1040" y="1200" name="A2" orien="R180" />
        <iomarker fontsize="28" x="1040" y="1264" name="B2" orien="R180" />
        <iomarker fontsize="28" x="1040" y="1328" name="C2" orien="R180" />
        <iomarker fontsize="28" x="1040" y="1392" name="D2" orien="R180" />
        <iomarker fontsize="28" x="1056" y="1680" name="A3" orien="R180" />
        <iomarker fontsize="28" x="1056" y="1744" name="B3" orien="R180" />
        <iomarker fontsize="28" x="1056" y="1808" name="C3" orien="R180" />
        <iomarker fontsize="28" x="1056" y="1872" name="D3" orien="R180" />
        <iomarker fontsize="28" x="1024" y="2192" name="S_0" orien="R180" />
        <iomarker fontsize="28" x="1024" y="2256" name="S_1" orien="R180" />
    </sheet>
</drawing>