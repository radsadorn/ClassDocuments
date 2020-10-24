<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="BIT_0" />
        <signal name="BIT_2" />
        <signal name="XLXN_11" />
        <signal name="BIT_1" />
        <signal name="c" />
        <port polarity="Input" name="BIT_0" />
        <port polarity="Input" name="BIT_2" />
        <port polarity="Input" name="BIT_1" />
        <port polarity="Output" name="c" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="BIT_1" name="I" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_5">
            <blockpin signalname="BIT_2" name="I0" />
            <blockpin signalname="XLXN_11" name="I1" />
            <blockpin signalname="BIT_0" name="I2" />
            <blockpin signalname="c" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="800" y="848" name="XLXI_4" orien="R0" />
        <instance x="1232" y="928" name="XLXI_5" orien="R0" />
        <branch name="BIT_0">
            <wire x2="1232" y1="688" y2="688" x1="720" />
            <wire x2="1232" y1="688" y2="736" x1="1232" />
        </branch>
        <branch name="BIT_2">
            <wire x2="1216" y1="992" y2="992" x1="640" />
            <wire x2="1216" y1="864" y2="992" x1="1216" />
            <wire x2="1232" y1="864" y2="864" x1="1216" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1120" y1="816" y2="816" x1="1024" />
            <wire x2="1120" y1="800" y2="816" x1="1120" />
            <wire x2="1232" y1="800" y2="800" x1="1120" />
        </branch>
        <iomarker fontsize="28" x="720" y="688" name="BIT_0" orien="R180" />
        <branch name="BIT_1">
            <wire x2="800" y1="816" y2="816" x1="768" />
        </branch>
        <iomarker fontsize="28" x="768" y="816" name="BIT_1" orien="R180" />
        <iomarker fontsize="28" x="640" y="992" name="BIT_2" orien="R180" />
        <branch name="c">
            <wire x2="1520" y1="800" y2="800" x1="1488" />
        </branch>
        <iomarker fontsize="28" x="1520" y="800" name="c" orien="R0" />
    </sheet>
</drawing>