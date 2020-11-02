<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="BIT(8:0)" />
        <signal name="XLXN_4" />
        <signal name="BIT(0)" />
        <signal name="BIT(2)" />
        <signal name="BIT(3)" />
        <signal name="BIT(4)" />
        <signal name="BIT(5)" />
        <signal name="BIT(6)" />
        <signal name="BIT(7)" />
        <signal name="BIT(8)" />
        <signal name="BIT(1)" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="buzz" />
        <port polarity="Input" name="BIT(8:0)" />
        <port polarity="Output" name="buzz" />
        <blockdef name="and4b4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="40" y1="-192" y2="-192" x1="0" />
            <circle r="12" cx="52" cy="-192" />
            <line x2="40" y1="-256" y2="-256" x1="0" />
            <circle r="12" cx="52" cy="-256" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="64" y1="-112" y2="-112" x1="144" />
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
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <block symbolname="and4b4" name="XLXI_1">
            <blockpin signalname="BIT(3)" name="I0" />
            <blockpin signalname="BIT(2)" name="I1" />
            <blockpin signalname="BIT(1)" name="I2" />
            <blockpin signalname="BIT(0)" name="I3" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="and4b4" name="XLXI_2">
            <blockpin signalname="BIT(7)" name="I0" />
            <blockpin signalname="BIT(6)" name="I1" />
            <blockpin signalname="BIT(5)" name="I2" />
            <blockpin signalname="BIT(4)" name="I3" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="BIT(8)" name="I" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_4">
            <blockpin signalname="XLXN_17" name="I0" />
            <blockpin signalname="XLXN_16" name="I1" />
            <blockpin signalname="XLXN_15" name="I2" />
            <blockpin signalname="buzz" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1232" y="1904" name="XLXI_1" orien="R0" />
        <instance x="1232" y="2256" name="XLXI_2" orien="R0" />
        <instance x="1184" y="2400" name="XLXI_3" orien="R0" />
        <branch name="BIT(8:0)">
            <wire x2="880" y1="2032" y2="2032" x1="608" />
            <wire x2="896" y1="2032" y2="2032" x1="880" />
            <wire x2="896" y1="2032" y2="2064" x1="896" />
            <wire x2="896" y1="2064" y2="2128" x1="896" />
            <wire x2="896" y1="2128" y2="2192" x1="896" />
            <wire x2="896" y1="2192" y2="2368" x1="896" />
            <wire x2="896" y1="1648" y2="1712" x1="896" />
            <wire x2="896" y1="1712" y2="1776" x1="896" />
            <wire x2="896" y1="1776" y2="1840" x1="896" />
            <wire x2="896" y1="1840" y2="2000" x1="896" />
            <wire x2="896" y1="2000" y2="2032" x1="896" />
        </branch>
        <iomarker fontsize="28" x="608" y="2032" name="BIT(8:0)" orien="R180" />
        <bustap x2="992" y1="1648" y2="1648" x1="896" />
        <bustap x2="992" y1="1712" y2="1712" x1="896" />
        <bustap x2="992" y1="1776" y2="1776" x1="896" />
        <bustap x2="992" y1="1840" y2="1840" x1="896" />
        <bustap x2="992" y1="2000" y2="2000" x1="896" />
        <bustap x2="992" y1="2064" y2="2064" x1="896" />
        <bustap x2="992" y1="2128" y2="2128" x1="896" />
        <bustap x2="992" y1="2192" y2="2192" x1="896" />
        <bustap x2="992" y1="2368" y2="2368" x1="896" />
        <branch name="BIT(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="1648" type="branch" />
            <wire x2="1056" y1="1648" y2="1648" x1="992" />
            <wire x2="1232" y1="1648" y2="1648" x1="1056" />
        </branch>
        <branch name="BIT(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1712" type="branch" />
            <wire x2="1024" y1="1712" y2="1712" x1="992" />
            <wire x2="1056" y1="1712" y2="1712" x1="1024" />
            <wire x2="1120" y1="1712" y2="1712" x1="1056" />
            <wire x2="1232" y1="1712" y2="1712" x1="1120" />
        </branch>
        <branch name="BIT(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1776" type="branch" />
            <wire x2="1024" y1="1776" y2="1776" x1="992" />
            <wire x2="1232" y1="1776" y2="1776" x1="1024" />
        </branch>
        <branch name="BIT(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="1840" type="branch" />
            <wire x2="1040" y1="1840" y2="1840" x1="992" />
            <wire x2="1232" y1="1840" y2="1840" x1="1040" />
        </branch>
        <branch name="BIT(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="2000" type="branch" />
            <wire x2="1040" y1="2000" y2="2000" x1="992" />
            <wire x2="1232" y1="2000" y2="2000" x1="1040" />
        </branch>
        <branch name="BIT(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="2064" type="branch" />
            <wire x2="1040" y1="2064" y2="2064" x1="992" />
            <wire x2="1232" y1="2064" y2="2064" x1="1040" />
        </branch>
        <branch name="BIT(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="2128" type="branch" />
            <wire x2="1024" y1="2128" y2="2128" x1="992" />
            <wire x2="1232" y1="2128" y2="2128" x1="1024" />
        </branch>
        <branch name="BIT(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="2192" type="branch" />
            <wire x2="1024" y1="2192" y2="2192" x1="992" />
            <wire x2="1232" y1="2192" y2="2192" x1="1024" />
        </branch>
        <branch name="BIT(8)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="2368" type="branch" />
            <wire x2="1024" y1="2368" y2="2368" x1="992" />
            <wire x2="1184" y1="2368" y2="2368" x1="1024" />
        </branch>
        <instance x="1792" y="2224" name="XLXI_4" orien="R0" />
        <branch name="XLXN_15">
            <wire x2="1792" y1="1744" y2="1744" x1="1488" />
            <wire x2="1792" y1="1744" y2="2032" x1="1792" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="1792" y1="2096" y2="2096" x1="1488" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="1792" y1="2368" y2="2368" x1="1408" />
            <wire x2="1792" y1="2160" y2="2368" x1="1792" />
        </branch>
        <branch name="buzz">
            <wire x2="2080" y1="2096" y2="2096" x1="2048" />
        </branch>
        <iomarker fontsize="28" x="2080" y="2096" name="buzz" orien="R0" />
    </sheet>
</drawing>