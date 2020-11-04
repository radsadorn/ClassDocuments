<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="INPUT(7:0)" />
        <signal name="N(7:0)" />
        <signal name="N(6:0)" />
        <signal name="OUTPUT(7:1)" />
        <signal name="OUTPUT(0)" />
        <signal name="OUTPUT(7:0)" />
        <signal name="N(7)" />
        <port polarity="Input" name="INPUT(7:0)" />
        <port polarity="Output" name="OUTPUT(7:0)" />
        <blockdef name="inv8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <circle r="16" cx="144" cy="-32" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <rect width="64" x="160" y="-44" height="24" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
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
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="inv8" name="XLXI_2">
            <blockpin signalname="INPUT(7:0)" name="I(7:0)" />
            <blockpin signalname="N(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="inv" name="XLXI_5(6:0)">
            <blockpin signalname="N(6:0)" name="I" />
            <blockpin signalname="OUTPUT(7:1)" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_6">
            <blockpin signalname="OUTPUT(0)" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_7">
            <blockpin signalname="N(7)" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="INPUT(7:0)">
            <wire x2="1280" y1="816" y2="816" x1="816" />
        </branch>
        <iomarker fontsize="28" x="816" y="816" name="INPUT(7:0)" orien="R180" />
        <instance x="1280" y="848" name="XLXI_2" orien="R0" />
        <branch name="N(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="816" type="branch" />
            <wire x2="1536" y1="816" y2="816" x1="1504" />
            <wire x2="1760" y1="816" y2="816" x1="1536" />
            <wire x2="2000" y1="816" y2="816" x1="1760" />
        </branch>
        <instance x="1568" y="1168" name="XLXI_5(6:0)" orien="R0" />
        <branch name="N(6:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="1136" type="branch" />
            <wire x2="1568" y1="1136" y2="1136" x1="1408" />
        </branch>
        <branch name="OUTPUT(7:1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="1136" type="branch" />
            <wire x2="1824" y1="1136" y2="1136" x1="1792" />
        </branch>
        <branch name="OUTPUT(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="1328" type="branch" />
            <wire x2="1664" y1="1328" y2="1408" x1="1664" />
            <wire x2="1824" y1="1328" y2="1328" x1="1664" />
        </branch>
        <instance x="1600" y="1536" name="XLXI_6" orien="R0" />
        <branch name="OUTPUT(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1184" type="branch" />
            <wire x2="2512" y1="1184" y2="1184" x1="2256" />
        </branch>
        <iomarker fontsize="28" x="2512" y="1184" name="OUTPUT(7:0)" orien="R0" />
        <branch name="N(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="640" type="branch" />
            <wire x2="2400" y1="640" y2="640" x1="2176" />
        </branch>
        <instance x="2336" y="768" name="XLXI_7" orien="R0" />
    </sheet>
</drawing>