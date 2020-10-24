<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="STATE" />
        <signal name="DOT" />
        <signal name="XLXN_2" />
        <signal name="CLK" />
        <port polarity="Input" name="STATE" />
        <port polarity="Output" name="DOT" />
        <port polarity="Input" name="CLK" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
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
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="XLXN_2" name="I0" />
            <blockpin signalname="XLXN_1" name="I1" />
            <blockpin signalname="DOT" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="STATE" name="I" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="CLK" name="I" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1504" y="1216" name="XLXI_1" orien="R0" />
        <instance x="1184" y="1120" name="XLXI_2" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1504" y1="1088" y2="1088" x1="1408" />
        </branch>
        <branch name="STATE">
            <wire x2="1168" y1="1088" y2="1088" x1="992" />
            <wire x2="1184" y1="1088" y2="1088" x1="1168" />
        </branch>
        <branch name="DOT">
            <wire x2="1952" y1="1120" y2="1120" x1="1760" />
        </branch>
        <iomarker fontsize="28" x="992" y="1088" name="STATE" orien="R180" />
        <iomarker fontsize="28" x="992" y="1152" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="1952" y="1120" name="DOT" orien="R0" />
        <instance x="1184" y="1184" name="XLXI_3" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="1504" y1="1152" y2="1152" x1="1408" />
        </branch>
        <branch name="CLK">
            <wire x2="1184" y1="1152" y2="1152" x1="992" />
        </branch>
    </sheet>
</drawing>