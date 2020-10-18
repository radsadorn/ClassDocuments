<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK_OUT" />
        <signal name="XLXN_2" />
        <signal name="CLK_IN" />
        <port polarity="Output" name="CLK_OUT" />
        <port polarity="Input" name="CLK_IN" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="CLK_OUT" name="I" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_4">
            <blockpin signalname="CLK_IN" name="C" />
            <blockpin signalname="XLXN_2" name="D" />
            <blockpin signalname="CLK_OUT" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="CLK_OUT">
            <wire x2="1408" y1="688" y2="688" x1="1216" />
            <wire x2="1408" y1="688" y2="944" x1="1408" />
            <wire x2="1552" y1="944" y2="944" x1="1408" />
            <wire x2="1408" y1="944" y2="944" x1="1280" />
        </branch>
        <instance x="1216" y="720" name="XLXI_2" orien="M0" />
        <branch name="XLXN_2">
            <wire x2="880" y1="688" y2="944" x1="880" />
            <wire x2="896" y1="944" y2="944" x1="880" />
            <wire x2="992" y1="688" y2="688" x1="880" />
        </branch>
        <branch name="CLK_IN">
            <wire x2="896" y1="1072" y2="1072" x1="656" />
        </branch>
        <iomarker fontsize="28" x="656" y="1072" name="CLK_IN" orien="R180" />
        <iomarker fontsize="28" x="1552" y="944" name="CLK_OUT" orien="R0" />
        <instance x="896" y="1200" name="XLXI_4" orien="R0" />
    </sheet>
</drawing>