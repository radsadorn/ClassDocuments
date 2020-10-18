<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="B3" />
        <signal name="A3" />
        <signal name="B2" />
        <signal name="A2" />
        <signal name="B1" />
        <signal name="A1" />
        <signal name="A0" />
        <signal name="B0" />
        <signal name="BIT_0" />
        <signal name="BIT_1" />
        <signal name="BIT_2" />
        <signal name="BIT_3" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="B3" />
        <port polarity="Input" name="A3" />
        <port polarity="Input" name="B2" />
        <port polarity="Input" name="A2" />
        <port polarity="Input" name="B1" />
        <port polarity="Input" name="A1" />
        <port polarity="Input" name="A0" />
        <port polarity="Input" name="B0" />
        <port polarity="Output" name="BIT_0" />
        <port polarity="Output" name="BIT_1" />
        <port polarity="Output" name="BIT_2" />
        <port polarity="Output" name="BIT_3" />
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <block symbolname="m2_1" name="XLXI_1">
            <blockpin signalname="A0" name="D0" />
            <blockpin signalname="B0" name="D1" />
            <blockpin signalname="CLK" name="S0" />
            <blockpin signalname="BIT_0" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_2">
            <blockpin signalname="A1" name="D0" />
            <blockpin signalname="B1" name="D1" />
            <blockpin signalname="CLK" name="S0" />
            <blockpin signalname="BIT_1" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_3">
            <blockpin signalname="A2" name="D0" />
            <blockpin signalname="B2" name="D1" />
            <blockpin signalname="CLK" name="S0" />
            <blockpin signalname="BIT_2" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_4">
            <blockpin signalname="A3" name="D0" />
            <blockpin signalname="B3" name="D1" />
            <blockpin signalname="CLK" name="S0" />
            <blockpin signalname="BIT_3" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1072" y="768" name="XLXI_1" orien="R0" />
        <instance x="1072" y="1056" name="XLXI_2" orien="R0" />
        <instance x="1072" y="1328" name="XLXI_3" orien="R0" />
        <instance x="1072" y="1600" name="XLXI_4" orien="R0" />
        <branch name="CLK">
            <wire x2="1072" y1="736" y2="736" x1="832" />
            <wire x2="832" y1="736" y2="1024" x1="832" />
            <wire x2="1072" y1="1024" y2="1024" x1="832" />
            <wire x2="832" y1="1024" y2="1296" x1="832" />
            <wire x2="1072" y1="1296" y2="1296" x1="832" />
            <wire x2="832" y1="1296" y2="1568" x1="832" />
            <wire x2="832" y1="1568" y2="1648" x1="832" />
            <wire x2="1072" y1="1568" y2="1568" x1="832" />
        </branch>
        <iomarker fontsize="28" x="832" y="1648" name="CLK" orien="R90" />
        <branch name="B3">
            <wire x2="1072" y1="1504" y2="1504" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1040" y="1504" name="B3" orien="R180" />
        <branch name="A3">
            <wire x2="1072" y1="1440" y2="1440" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1040" y="1440" name="A3" orien="R180" />
        <branch name="B2">
            <wire x2="1072" y1="1232" y2="1232" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1040" y="1232" name="B2" orien="R180" />
        <branch name="A2">
            <wire x2="1072" y1="1168" y2="1168" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1040" y="1168" name="A2" orien="R180" />
        <branch name="B1">
            <wire x2="1072" y1="960" y2="960" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1040" y="960" name="B1" orien="R180" />
        <branch name="A1">
            <wire x2="1072" y1="896" y2="896" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1040" y="896" name="A1" orien="R180" />
        <branch name="A0">
            <wire x2="1072" y1="608" y2="608" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1040" y="608" name="A0" orien="R180" />
        <branch name="B0">
            <wire x2="1072" y1="672" y2="672" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1040" y="672" name="B0" orien="R180" />
        <branch name="BIT_0">
            <wire x2="1424" y1="640" y2="640" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="1424" y="640" name="BIT_0" orien="R0" />
        <branch name="BIT_1">
            <wire x2="1424" y1="928" y2="928" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="1424" y="928" name="BIT_1" orien="R0" />
        <branch name="BIT_2">
            <wire x2="1424" y1="1200" y2="1200" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="1424" y="1200" name="BIT_2" orien="R0" />
        <branch name="BIT_3">
            <wire x2="1424" y1="1472" y2="1472" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="1424" y="1472" name="BIT_3" orien="R0" />
    </sheet>
</drawing>