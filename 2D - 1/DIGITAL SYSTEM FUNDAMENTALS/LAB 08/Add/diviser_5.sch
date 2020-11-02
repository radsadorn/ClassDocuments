<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_4" />
        <signal name="XLXN_7" />
        <signal name="XLXN_10" />
        <signal name="CLK_OUT" />
        <signal name="XLXN_12" />
        <signal name="XLXN_14" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
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
        <blockdef name="fdc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
        </blockdef>
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
        <block symbolname="fdc" name="XLXI_8">
            <blockpin signalname="XLXN_17" name="C" />
            <blockpin signalname="XLXN_7" name="CLR" />
            <blockpin signalname="XLXN_4" name="D" />
            <blockpin signalname="XLXN_10" name="Q" />
        </block>
        <block symbolname="fdc" name="XLXI_9">
            <blockpin signalname="XLXN_4" name="C" />
            <blockpin signalname="XLXN_7" name="CLR" />
            <blockpin signalname="XLXN_16" name="D" />
            <blockpin signalname="XLXN_14" name="Q" />
        </block>
        <block symbolname="fdc" name="XLXI_10">
            <blockpin signalname="XLXN_16" name="C" />
            <blockpin signalname="XLXN_7" name="CLR" />
            <blockpin signalname="XLXN_12" name="D" />
            <blockpin signalname="CLK_OUT" name="Q" />
        </block>
        <block symbolname="and2" name="XLXI_11">
            <blockpin signalname="CLK_OUT" name="I0" />
            <blockpin signalname="XLXN_10" name="I1" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_12">
            <blockpin signalname="XLXN_10" name="I" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_13">
            <blockpin signalname="XLXN_14" name="I" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_14">
            <blockpin signalname="CLK_OUT" name="I" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_15">
            <blockpin signalname="CLK_IN" name="I" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_4">
            <wire x2="784" y1="896" y2="1072" x1="784" />
            <wire x2="800" y1="1072" y2="1072" x1="784" />
            <wire x2="1456" y1="896" y2="896" x1="784" />
            <wire x2="1456" y1="896" y2="1200" x1="1456" />
            <wire x2="1488" y1="1200" y2="1200" x1="1456" />
            <wire x2="1456" y1="1200" y2="1200" x1="1440" />
        </branch>
        <instance x="800" y="1328" name="XLXI_8" orien="R0" />
        <instance x="1488" y="1328" name="XLXI_9" orien="R0" />
        <instance x="2176" y="1328" name="XLXI_10" orien="R0" />
        <instance x="1920" y="1680" name="XLXI_11" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="800" y1="1296" y2="1360" x1="800" />
            <wire x2="1488" y1="1360" y2="1360" x1="800" />
            <wire x2="2176" y1="1360" y2="1360" x1="1488" />
            <wire x2="2240" y1="1360" y2="1360" x1="2176" />
            <wire x2="2240" y1="1360" y2="1584" x1="2240" />
            <wire x2="1488" y1="1296" y2="1360" x1="1488" />
            <wire x2="2176" y1="1296" y2="1360" x1="2176" />
            <wire x2="2240" y1="1584" y2="1584" x1="2176" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1200" y1="1072" y2="1072" x1="1184" />
            <wire x2="1200" y1="1072" y2="1200" x1="1200" />
            <wire x2="1200" y1="1200" y2="1552" x1="1200" />
            <wire x2="1920" y1="1552" y2="1552" x1="1200" />
            <wire x2="1216" y1="1200" y2="1200" x1="1200" />
        </branch>
        <branch name="CLK_OUT">
            <wire x2="1920" y1="1616" y2="1616" x1="1856" />
            <wire x2="1856" y1="1616" y2="1712" x1="1856" />
            <wire x2="2640" y1="1712" y2="1712" x1="1856" />
            <wire x2="2640" y1="880" y2="880" x1="2480" />
            <wire x2="2640" y1="880" y2="1072" x1="2640" />
            <wire x2="2640" y1="1072" y2="1280" x1="2640" />
            <wire x2="2640" y1="1280" y2="1712" x1="2640" />
            <wire x2="2688" y1="1280" y2="1280" x1="2640" />
            <wire x2="2640" y1="1072" y2="1072" x1="2560" />
        </branch>
        <instance x="2480" y="912" name="XLXI_14" orien="M0" />
        <branch name="XLXN_12">
            <wire x2="2160" y1="880" y2="1072" x1="2160" />
            <wire x2="2176" y1="1072" y2="1072" x1="2160" />
            <wire x2="2256" y1="880" y2="880" x1="2160" />
        </branch>
        <instance x="1904" y="1232" name="XLXI_13" orien="R0" />
        <branch name="XLXN_14">
            <wire x2="1888" y1="1072" y2="1072" x1="1872" />
            <wire x2="1888" y1="1072" y2="1200" x1="1888" />
            <wire x2="1904" y1="1200" y2="1200" x1="1888" />
        </branch>
        <instance x="1216" y="1232" name="XLXI_12" orien="R0" />
        <branch name="XLXN_16">
            <wire x2="2144" y1="928" y2="928" x1="1472" />
            <wire x2="2144" y1="928" y2="1200" x1="2144" />
            <wire x2="2176" y1="1200" y2="1200" x1="2144" />
            <wire x2="1472" y1="928" y2="1072" x1="1472" />
            <wire x2="1488" y1="1072" y2="1072" x1="1472" />
            <wire x2="2144" y1="1200" y2="1200" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="2688" y="1280" name="CLK_OUT" orien="R0" />
        <branch name="XLXN_17">
            <wire x2="800" y1="1200" y2="1200" x1="736" />
        </branch>
        <instance x="512" y="1232" name="XLXI_15" orien="R0" />
        <branch name="CLK_IN">
            <wire x2="512" y1="1200" y2="1200" x1="480" />
        </branch>
        <iomarker fontsize="28" x="480" y="1200" name="CLK_IN" orien="R180" />
    </sheet>
</drawing>