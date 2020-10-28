<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="C0" />
        <signal name="C1" />
        <signal name="C2" />
        <signal name="C3" />
        <signal name="D0" />
        <signal name="D1" />
        <signal name="D2" />
        <signal name="D3" />
        <signal name="CLR" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="CLK" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <port polarity="Output" name="C0" />
        <port polarity="Output" name="C1" />
        <port polarity="Output" name="C2" />
        <port polarity="Output" name="C3" />
        <port polarity="Output" name="D0" />
        <port polarity="Output" name="D1" />
        <port polarity="Output" name="D2" />
        <port polarity="Output" name="D3" />
        <port polarity="Input" name="CLR" />
        <port polarity="Input" name="CLK" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="cd4ce" name="XLXI_1">
            <blockpin signalname="XLXN_23" name="C" />
            <blockpin signalname="XLXN_16" name="CE" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="XLXN_17" name="CEO" />
            <blockpin signalname="C0" name="Q0" />
            <blockpin signalname="C1" name="Q1" />
            <blockpin signalname="C2" name="Q2" />
            <blockpin signalname="C3" name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="cd4ce" name="XLXI_2">
            <blockpin signalname="XLXN_23" name="C" />
            <blockpin signalname="XLXN_17" name="CE" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="D0" name="Q0" />
            <blockpin signalname="D1" name="Q1" />
            <blockpin signalname="D2" name="Q2" />
            <blockpin signalname="D3" name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="vcc" name="XLXI_3">
            <blockpin signalname="XLXN_16" name="P" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="CLK" name="I" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1056" y="992" name="XLXI_1" orien="R0" />
        <instance x="1536" y="1632" name="XLXI_2" orien="R0" />
        <instance x="656" y="704" name="XLXI_3" orien="R0" />
        <branch name="C0">
            <wire x2="1472" y1="544" y2="544" x1="1440" />
        </branch>
        <iomarker fontsize="28" x="1472" y="544" name="C0" orien="R0" />
        <branch name="C1">
            <wire x2="1472" y1="608" y2="608" x1="1440" />
        </branch>
        <iomarker fontsize="28" x="1472" y="608" name="C1" orien="R0" />
        <branch name="C2">
            <wire x2="1472" y1="672" y2="672" x1="1440" />
        </branch>
        <iomarker fontsize="28" x="1472" y="672" name="C2" orien="R0" />
        <branch name="C3">
            <wire x2="1472" y1="736" y2="736" x1="1440" />
        </branch>
        <iomarker fontsize="28" x="1472" y="736" name="C3" orien="R0" />
        <branch name="D0">
            <wire x2="1952" y1="1184" y2="1184" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="1952" y="1184" name="D0" orien="R0" />
        <branch name="D1">
            <wire x2="1952" y1="1248" y2="1248" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="1952" y="1248" name="D1" orien="R0" />
        <branch name="D2">
            <wire x2="1952" y1="1312" y2="1312" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="1952" y="1312" name="D2" orien="R0" />
        <branch name="D3">
            <wire x2="1952" y1="1376" y2="1376" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="1952" y="1376" name="D3" orien="R0" />
        <branch name="XLXN_16">
            <wire x2="720" y1="704" y2="800" x1="720" />
            <wire x2="1056" y1="800" y2="800" x1="720" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="1520" y1="800" y2="800" x1="1440" />
            <wire x2="1520" y1="800" y2="1440" x1="1520" />
            <wire x2="1536" y1="1440" y2="1440" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="496" y="1600" name="CLR" orien="R180" />
        <branch name="CLR">
            <wire x2="1056" y1="1600" y2="1600" x1="496" />
            <wire x2="1536" y1="1600" y2="1600" x1="1056" />
            <wire x2="1056" y1="960" y2="1600" x1="1056" />
        </branch>
        <iomarker fontsize="28" x="352" y="832" name="CLK" orien="R180" />
        <branch name="CLK">
            <wire x2="352" y1="832" y2="864" x1="352" />
            <wire x2="416" y1="864" y2="864" x1="352" />
        </branch>
        <instance x="416" y="896" name="XLXI_4" orien="R0" />
        <branch name="XLXN_23">
            <wire x2="704" y1="864" y2="864" x1="640" />
            <wire x2="1056" y1="864" y2="864" x1="704" />
            <wire x2="704" y1="864" y2="1504" x1="704" />
            <wire x2="1536" y1="1504" y2="1504" x1="704" />
        </branch>
    </sheet>
</drawing>