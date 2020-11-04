<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_81" />
        <signal name="CLK" />
        <signal name="S(0)" />
        <signal name="S(1)" />
        <signal name="S(1:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="S(1:0)" />
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
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
        <block symbolname="vcc" name="XLXI_29">
            <blockpin signalname="XLXN_81" name="P" />
        </block>
        <block symbolname="cb2ce" name="XLXI_14">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_81" name="CE" />
            <blockpin name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="S(0)" name="Q0" />
            <blockpin signalname="S(1)" name="Q1" />
            <blockpin name="TC" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_81">
            <wire x2="1264" y1="1120" y2="1200" x1="1264" />
            <wire x2="1392" y1="1200" y2="1200" x1="1264" />
        </branch>
        <instance x="1200" y="1120" name="XLXI_29" orien="R0" />
        <instance x="1392" y="1392" name="XLXI_14" orien="R0" />
        <branch name="CLK">
            <wire x2="1392" y1="1264" y2="1264" x1="1072" />
        </branch>
        <branch name="S(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="1072" type="branch" />
            <wire x2="1984" y1="1072" y2="1072" x1="1776" />
        </branch>
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="1136" type="branch" />
            <wire x2="1984" y1="1136" y2="1136" x1="1776" />
        </branch>
        <iomarker fontsize="28" x="1072" y="1264" name="CLK" orien="R180" />
        <branch name="S(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="1120" type="branch" />
            <wire x2="2704" y1="1120" y2="1120" x1="2320" />
        </branch>
        <iomarker fontsize="28" x="2704" y="1120" name="S(1:0)" orien="R0" />
    </sheet>
</drawing>