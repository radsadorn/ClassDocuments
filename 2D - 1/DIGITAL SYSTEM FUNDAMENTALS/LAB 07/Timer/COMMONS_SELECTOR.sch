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
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="common_0" />
        <signal name="common_1" />
        <signal name="common_2" />
        <signal name="common_3" />
        <port polarity="Input" name="S_0" />
        <port polarity="Input" name="S_1" />
        <port polarity="Output" name="common_0" />
        <port polarity="Output" name="common_1" />
        <port polarity="Output" name="common_2" />
        <port polarity="Output" name="common_3" />
        <blockdef name="d2_4e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
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
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="d2_4e" name="XLXI_1">
            <blockpin signalname="S_0" name="A0" />
            <blockpin signalname="S_1" name="A1" />
            <blockpin signalname="XLXN_3" name="E" />
            <blockpin signalname="XLXN_4" name="D0" />
            <blockpin signalname="XLXN_5" name="D1" />
            <blockpin signalname="XLXN_6" name="D2" />
            <blockpin signalname="XLXN_7" name="D3" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="XLXN_4" name="I" />
            <blockpin signalname="common_0" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="XLXN_5" name="I" />
            <blockpin signalname="common_1" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="XLXN_6" name="I" />
            <blockpin signalname="common_2" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="XLXN_7" name="I" />
            <blockpin signalname="common_3" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_7">
            <blockpin signalname="XLXN_3" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1232" y="1440" name="XLXI_1" orien="R0" />
        <branch name="S_0">
            <wire x2="1232" y1="1120" y2="1120" x1="1024" />
        </branch>
        <branch name="S_1">
            <wire x2="1232" y1="1184" y2="1184" x1="1024" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1232" y1="1312" y2="1312" x1="1088" />
            <wire x2="1088" y1="1312" y2="1456" x1="1088" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1744" y1="1120" y2="1120" x1="1616" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1744" y1="1184" y2="1184" x1="1616" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1744" y1="1248" y2="1248" x1="1616" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1728" y1="1312" y2="1312" x1="1616" />
            <wire x2="1744" y1="1312" y2="1312" x1="1728" />
        </branch>
        <instance x="1744" y="1152" name="XLXI_2" orien="R0" />
        <instance x="1744" y="1216" name="XLXI_3" orien="R0" />
        <instance x="1744" y="1280" name="XLXI_4" orien="R0" />
        <instance x="1744" y="1344" name="XLXI_6" orien="R0" />
        <instance x="1152" y="1456" name="XLXI_7" orien="R180" />
        <iomarker fontsize="28" x="1024" y="1120" name="S_0" orien="R180" />
        <iomarker fontsize="28" x="1024" y="1184" name="S_1" orien="R180" />
        <branch name="common_0">
            <wire x2="2000" y1="1120" y2="1120" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="2000" y="1120" name="common_0" orien="R0" />
        <branch name="common_1">
            <wire x2="2000" y1="1184" y2="1184" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="2000" y="1184" name="common_1" orien="R0" />
        <branch name="common_2">
            <wire x2="2000" y1="1248" y2="1248" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="2000" y="1248" name="common_2" orien="R0" />
        <branch name="common_3">
            <wire x2="2000" y1="1312" y2="1312" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="2000" y="1312" name="common_3" orien="R0" />
    </sheet>
</drawing>