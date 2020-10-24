<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="CLR" />
        <signal name="STATE" />
        <signal name="CLR_OUT" />
        <port polarity="Input" name="CLR" />
        <port polarity="Input" name="STATE" />
        <port polarity="Output" name="CLR_OUT" />
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
            <blockpin signalname="CLR" name="I0" />
            <blockpin signalname="XLXN_1" name="I1" />
            <blockpin signalname="CLR_OUT" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="STATE" name="I" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1424" y="1504" name="XLXI_1" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1424" y1="1376" y2="1376" x1="1104" />
        </branch>
        <branch name="CLR">
            <wire x2="1424" y1="1440" y2="1440" x1="848" />
        </branch>
        <instance x="880" y="1408" name="XLXI_2" orien="R0" />
        <branch name="STATE">
            <wire x2="880" y1="1376" y2="1376" x1="832" />
        </branch>
        <iomarker fontsize="28" x="832" y="1376" name="STATE" orien="R180" />
        <iomarker fontsize="28" x="848" y="1440" name="CLR" orien="R180" />
        <branch name="CLR_OUT">
            <wire x2="1856" y1="1408" y2="1408" x1="1680" />
        </branch>
        <iomarker fontsize="28" x="1856" y="1408" name="CLR_OUT" orien="R0" />
    </sheet>
</drawing>