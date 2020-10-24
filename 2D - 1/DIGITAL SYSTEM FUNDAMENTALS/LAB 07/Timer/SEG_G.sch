<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_31" />
        <signal name="BIT_0" />
        <signal name="XLXN_33" />
        <signal name="BIT_1" />
        <signal name="BIT_2" />
        <signal name="BIT_3" />
        <signal name="g" />
        <port polarity="Input" name="BIT_0" />
        <port polarity="Input" name="BIT_1" />
        <port polarity="Input" name="BIT_2" />
        <port polarity="Input" name="BIT_3" />
        <port polarity="Output" name="g" />
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
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="BIT_2" name="I" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_11">
            <blockpin signalname="BIT_1" name="I" />
            <blockpin signalname="XLXN_31" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_12">
            <blockpin signalname="BIT_2" name="I0" />
            <blockpin signalname="XLXN_26" name="I1" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_13">
            <blockpin signalname="XLXN_33" name="I0" />
            <blockpin signalname="BIT_1" name="I1" />
            <blockpin signalname="XLXN_28" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_14">
            <blockpin signalname="BIT_2" name="I0" />
            <blockpin signalname="XLXN_31" name="I1" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_15">
            <blockpin signalname="BIT_3" name="I0" />
            <blockpin signalname="XLXN_29" name="I1" />
            <blockpin signalname="XLXN_28" name="I2" />
            <blockpin signalname="XLXN_27" name="I3" />
            <blockpin signalname="g" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="928" y="592" name="XLXI_9" orien="R0" />
        <instance x="928" y="1328" name="XLXI_11" orien="R0" />
        <instance x="1360" y="752" name="XLXI_12" orien="R0" />
        <instance x="1360" y="1104" name="XLXI_13" orien="R0" />
        <instance x="1360" y="1488" name="XLXI_14" orien="R0" />
        <instance x="2048" y="1360" name="XLXI_15" orien="R0" />
        <branch name="XLXN_26">
            <wire x2="1248" y1="560" y2="560" x1="1152" />
            <wire x2="1248" y1="560" y2="624" x1="1248" />
            <wire x2="1360" y1="624" y2="624" x1="1248" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="2048" y1="656" y2="656" x1="1616" />
            <wire x2="2048" y1="656" y2="1104" x1="2048" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="1824" y1="1008" y2="1008" x1="1616" />
            <wire x2="1824" y1="1008" y2="1168" x1="1824" />
            <wire x2="2048" y1="1168" y2="1168" x1="1824" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="1824" y1="1392" y2="1392" x1="1616" />
            <wire x2="1824" y1="1232" y2="1392" x1="1824" />
            <wire x2="2048" y1="1232" y2="1232" x1="1824" />
        </branch>
        <branch name="XLXN_31">
            <wire x2="1248" y1="1296" y2="1296" x1="1152" />
            <wire x2="1248" y1="1296" y2="1360" x1="1248" />
            <wire x2="1360" y1="1360" y2="1360" x1="1248" />
        </branch>
        <branch name="BIT_0">
            <wire x2="928" y1="560" y2="560" x1="528" />
        </branch>
        <instance x="928" y="1088" name="XLXI_10" orien="R0" />
        <branch name="XLXN_33">
            <wire x2="1248" y1="1056" y2="1056" x1="1152" />
            <wire x2="1248" y1="1040" y2="1056" x1="1248" />
            <wire x2="1360" y1="1040" y2="1040" x1="1248" />
        </branch>
        <branch name="BIT_1">
            <wire x2="784" y1="688" y2="688" x1="528" />
            <wire x2="784" y1="688" y2="976" x1="784" />
            <wire x2="1360" y1="976" y2="976" x1="784" />
            <wire x2="784" y1="976" y2="1296" x1="784" />
            <wire x2="928" y1="1296" y2="1296" x1="784" />
        </branch>
        <branch name="BIT_2">
            <wire x2="720" y1="800" y2="800" x1="528" />
            <wire x2="720" y1="800" y2="1056" x1="720" />
            <wire x2="928" y1="1056" y2="1056" x1="720" />
            <wire x2="720" y1="1056" y2="1424" x1="720" />
            <wire x2="1360" y1="1424" y2="1424" x1="720" />
            <wire x2="1040" y1="800" y2="800" x1="720" />
            <wire x2="1040" y1="688" y2="800" x1="1040" />
            <wire x2="1360" y1="688" y2="688" x1="1040" />
        </branch>
        <branch name="BIT_3">
            <wire x2="544" y1="912" y2="912" x1="512" />
            <wire x2="544" y1="912" y2="1552" x1="544" />
            <wire x2="1440" y1="1552" y2="1552" x1="544" />
            <wire x2="2048" y1="1552" y2="1552" x1="1440" />
            <wire x2="2048" y1="1296" y2="1552" x1="2048" />
        </branch>
        <iomarker fontsize="28" x="528" y="560" name="BIT_0" orien="R180" />
        <iomarker fontsize="28" x="528" y="688" name="BIT_1" orien="R180" />
        <iomarker fontsize="28" x="528" y="800" name="BIT_2" orien="R180" />
        <iomarker fontsize="28" x="512" y="912" name="BIT_3" orien="R180" />
        <branch name="g">
            <wire x2="2336" y1="1200" y2="1200" x1="2304" />
        </branch>
        <iomarker fontsize="28" x="2336" y="1200" name="g" orien="R0" />
    </sheet>
</drawing>