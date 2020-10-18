<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="BIT_0" />
        <signal name="BIT_1" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="BIT_2" />
        <signal name="BIT_3" />
        <signal name="a" />
        <port polarity="Input" name="BIT_0" />
        <port polarity="Input" name="BIT_1" />
        <port polarity="Input" name="BIT_2" />
        <port polarity="Input" name="BIT_3" />
        <port polarity="Output" name="a" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
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
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="BIT_0" name="I" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="BIT_2" name="I" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_13">
            <blockpin signalname="XLXN_26" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_14">
            <blockpin signalname="BIT_2" name="I0" />
            <blockpin signalname="BIT_0" name="I1" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_15">
            <blockpin signalname="BIT_3" name="I0" />
            <blockpin signalname="XLXN_27" name="I1" />
            <blockpin signalname="BIT_1" name="I2" />
            <blockpin signalname="XLXN_24" name="I3" />
            <blockpin signalname="a" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1120" y="656" name="XLXI_9" orien="R0" />
        <instance x="1120" y="768" name="XLXI_10" orien="R0" />
        <instance x="1488" y="1072" name="XLXI_14" orien="R0" />
        <instance x="1488" y="784" name="XLXI_13" orien="R0" />
        <instance x="1984" y="1072" name="XLXI_15" orien="R0" />
        <branch name="BIT_0">
            <wire x2="928" y1="624" y2="624" x1="480" />
            <wire x2="1120" y1="624" y2="624" x1="928" />
            <wire x2="928" y1="624" y2="944" x1="928" />
            <wire x2="1488" y1="944" y2="944" x1="928" />
        </branch>
        <branch name="BIT_1">
            <wire x2="864" y1="784" y2="784" x1="464" />
            <wire x2="864" y1="784" y2="880" x1="864" />
            <wire x2="1984" y1="880" y2="880" x1="864" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="1984" y1="688" y2="688" x1="1744" />
            <wire x2="1984" y1="688" y2="816" x1="1984" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="1408" y1="624" y2="624" x1="1344" />
            <wire x2="1408" y1="624" y2="656" x1="1408" />
            <wire x2="1488" y1="656" y2="656" x1="1408" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="1408" y1="736" y2="736" x1="1344" />
            <wire x2="1408" y1="720" y2="736" x1="1408" />
            <wire x2="1488" y1="720" y2="720" x1="1408" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="1856" y1="976" y2="976" x1="1744" />
            <wire x2="1856" y1="944" y2="976" x1="1856" />
            <wire x2="1984" y1="944" y2="944" x1="1856" />
        </branch>
        <branch name="BIT_2">
            <wire x2="736" y1="928" y2="928" x1="480" />
            <wire x2="736" y1="928" y2="1008" x1="736" />
            <wire x2="1488" y1="1008" y2="1008" x1="736" />
            <wire x2="1120" y1="736" y2="736" x1="736" />
            <wire x2="736" y1="736" y2="928" x1="736" />
        </branch>
        <branch name="BIT_3">
            <wire x2="1984" y1="1136" y2="1136" x1="480" />
            <wire x2="1984" y1="1008" y2="1136" x1="1984" />
        </branch>
        <iomarker fontsize="28" x="480" y="624" name="BIT_0" orien="R180" />
        <iomarker fontsize="28" x="464" y="784" name="BIT_1" orien="R180" />
        <iomarker fontsize="28" x="480" y="928" name="BIT_2" orien="R180" />
        <iomarker fontsize="28" x="480" y="1136" name="BIT_3" orien="R180" />
        <branch name="a">
            <wire x2="2272" y1="912" y2="912" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="2272" y="912" name="a" orien="R0" />
    </sheet>
</drawing>