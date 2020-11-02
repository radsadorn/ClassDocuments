<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="CLK" />
        <signal name="BIT(0)" />
        <signal name="BIT(1)" />
        <signal name="XLXN_2" />
        <signal name="BIT(1:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="BIT(1:0)" />
        <blockdef name="cb2ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="cb2ce" name="XLXI_1">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_1" name="CE" />
            <blockpin signalname="XLXN_2" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="BIT(0)" name="Q0" />
            <blockpin signalname="BIT(1)" name="Q1" />
            <blockpin name="TC" />
        </block>
        <block symbolname="vcc" name="XLXI_3">
            <blockpin signalname="XLXN_1" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1136" y="1392" name="XLXI_1" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="928" y1="1072" y2="1088" x1="928" />
            <wire x2="928" y1="1088" y2="1200" x1="928" />
            <wire x2="1136" y1="1200" y2="1200" x1="928" />
        </branch>
        <branch name="CLK">
            <wire x2="1136" y1="1264" y2="1264" x1="784" />
        </branch>
        <branch name="BIT(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="1072" type="branch" />
            <wire x2="1824" y1="1072" y2="1072" x1="1520" />
        </branch>
        <branch name="BIT(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="1136" type="branch" />
            <wire x2="1824" y1="1136" y2="1136" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="784" y="1264" name="CLK" orien="R180" />
        <instance x="864" y="1072" name="XLXI_3" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="1136" y1="1360" y2="1392" x1="1136" />
        </branch>
        <branch name="BIT(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2128" y="1584" type="branch" />
            <wire x2="2448" y1="1584" y2="1584" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="2448" y="1584" name="BIT(1:0)" orien="R0" />
    </sheet>
</drawing>