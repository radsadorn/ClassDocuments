<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_4" />
        <signal name="C" />
        <signal name="A0" />
        <signal name="A1" />
        <signal name="A2" />
        <signal name="A3" />
        <signal name="B0" />
        <signal name="B1" />
        <signal name="B2" />
        <signal name="B3" />
        <signal name="XLXN_18" />
        <port polarity="Input" name="C" />
        <port polarity="Output" name="A0" />
        <port polarity="Output" name="A1" />
        <port polarity="Output" name="A2" />
        <port polarity="Output" name="A3" />
        <port polarity="Output" name="B0" />
        <port polarity="Output" name="B1" />
        <port polarity="Output" name="B2" />
        <port polarity="Output" name="B3" />
        <blockdef name="cd4ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <rect width="256" x="64" y="-512" height="448" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="cd4ce" name="XLXI_1">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="XLXN_4" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_18" name="CEO" />
            <blockpin signalname="A0" name="Q0" />
            <blockpin signalname="A1" name="Q1" />
            <blockpin signalname="A2" name="Q2" />
            <blockpin signalname="A3" name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="cd4ce" name="XLXI_2">
            <blockpin signalname="XLXN_18" name="C" />
            <blockpin signalname="XLXN_4" name="CE" />
            <blockpin name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="B0" name="Q0" />
            <blockpin signalname="B1" name="Q1" />
            <blockpin signalname="B2" name="Q2" />
            <blockpin signalname="B3" name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="vcc" name="XLXI_3">
            <blockpin signalname="XLXN_4" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="816" y="1056" name="XLXI_1" orien="R0" />
        <instance x="1328" y="1552" name="XLXI_2" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="816" y1="864" y2="864" x1="624" />
            <wire x2="624" y1="864" y2="1360" x1="624" />
            <wire x2="1328" y1="1360" y2="1360" x1="624" />
        </branch>
        <branch name="C">
            <wire x2="816" y1="928" y2="928" x1="560" />
        </branch>
        <instance x="560" y="864" name="XLXI_3" orien="R0" />
        <iomarker fontsize="28" x="560" y="928" name="C" orien="R180" />
        <branch name="A0">
            <wire x2="1232" y1="608" y2="608" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="1232" y="608" name="A0" orien="R0" />
        <branch name="A1">
            <wire x2="1232" y1="672" y2="672" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="1232" y="672" name="A1" orien="R0" />
        <branch name="A2">
            <wire x2="1232" y1="736" y2="736" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="1232" y="736" name="A2" orien="R0" />
        <branch name="A3">
            <wire x2="1232" y1="800" y2="800" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="1232" y="800" name="A3" orien="R0" />
        <branch name="B0">
            <wire x2="1744" y1="1104" y2="1104" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="1744" y="1104" name="B0" orien="R0" />
        <branch name="B1">
            <wire x2="1744" y1="1168" y2="1168" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="1744" y="1168" name="B1" orien="R0" />
        <branch name="B2">
            <wire x2="1744" y1="1232" y2="1232" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="1744" y="1232" name="B2" orien="R0" />
        <branch name="B3">
            <wire x2="1744" y1="1296" y2="1296" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="1744" y="1296" name="B3" orien="R0" />
        <branch name="XLXN_18">
            <wire x2="1232" y1="864" y2="864" x1="1200" />
            <wire x2="1232" y1="864" y2="1424" x1="1232" />
            <wire x2="1328" y1="1424" y2="1424" x1="1232" />
        </branch>
    </sheet>
</drawing>