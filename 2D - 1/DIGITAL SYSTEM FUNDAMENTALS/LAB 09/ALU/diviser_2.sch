<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK_OUT" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="CLK_IN" />
        <port polarity="Output" name="CLK_OUT" />
        <port polarity="Input" name="CLK_IN" />
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
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
        <block symbolname="fd" name="XLXI_1">
            <blockpin signalname="XLXN_6" name="C" />
            <blockpin signalname="XLXN_5" name="D" />
            <blockpin signalname="CLK_OUT" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="CLK_OUT" name="I" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="CLK_IN" name="I" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1280" y="1216" name="XLXI_1" orien="R0" />
        <branch name="CLK_OUT">
            <wire x2="1024" y1="800" y2="960" x1="1024" />
            <wire x2="1760" y1="800" y2="800" x1="1024" />
            <wire x2="1760" y1="800" y2="960" x1="1760" />
            <wire x2="1840" y1="960" y2="960" x1="1760" />
            <wire x2="1760" y1="960" y2="960" x1="1664" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1264" y1="960" y2="960" x1="1248" />
            <wire x2="1280" y1="960" y2="960" x1="1264" />
        </branch>
        <instance x="1024" y="992" name="XLXI_2" orien="R0" />
        <iomarker fontsize="28" x="1840" y="960" name="CLK_OUT" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="1280" y1="1088" y2="1088" x1="1248" />
        </branch>
        <instance x="1024" y="1120" name="XLXI_3" orien="R0" />
        <branch name="CLK_IN">
            <wire x2="1024" y1="1088" y2="1088" x1="784" />
        </branch>
        <iomarker fontsize="28" x="784" y="1088" name="CLK_IN" orien="R180" />
    </sheet>
</drawing>