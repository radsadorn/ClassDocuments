<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="BIT_0" />
        <signal name="BIT_1" />
        <signal name="BIT_2" />
        <signal name="BIT_3" />
        <signal name="f" />
        <port polarity="Input" name="BIT_0" />
        <port polarity="Input" name="BIT_1" />
        <port polarity="Input" name="BIT_2" />
        <port polarity="Input" name="BIT_3" />
        <port polarity="Output" name="f" />
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
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="BIT_0" name="I" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_11">
            <blockpin signalname="BIT_1" name="I" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_12">
            <blockpin signalname="BIT_1" name="I" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_13">
            <blockpin signalname="BIT_0" name="I" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_14">
            <blockpin signalname="XLXN_24" name="I0" />
            <blockpin signalname="XLXN_23" name="I1" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_15">
            <blockpin signalname="XLXN_25" name="I0" />
            <blockpin signalname="BIT_2" name="I1" />
            <blockpin signalname="XLXN_28" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_16">
            <blockpin signalname="XLXN_26" name="I0" />
            <blockpin signalname="BIT_2" name="I1" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_17">
            <blockpin signalname="BIT_3" name="I0" />
            <blockpin signalname="XLXN_27" name="I1" />
            <blockpin signalname="XLXN_28" name="I2" />
            <blockpin signalname="XLXN_29" name="I3" />
            <blockpin signalname="f" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1072" y="640" name="XLXI_10" orien="R0" />
        <instance x="1072" y="784" name="XLXI_11" orien="R0" />
        <instance x="1072" y="1168" name="XLXI_12" orien="R0" />
        <instance x="1072" y="1488" name="XLXI_13" orien="R0" />
        <instance x="1488" y="784" name="XLXI_14" orien="R0" />
        <instance x="1488" y="1120" name="XLXI_15" orien="R0" />
        <instance x="1504" y="1456" name="XLXI_16" orien="R0" />
        <instance x="2112" y="1312" name="XLXI_17" orien="R0" />
        <branch name="XLXN_23">
            <wire x2="1392" y1="608" y2="608" x1="1296" />
            <wire x2="1392" y1="608" y2="656" x1="1392" />
            <wire x2="1488" y1="656" y2="656" x1="1392" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="1392" y1="752" y2="752" x1="1296" />
            <wire x2="1392" y1="720" y2="752" x1="1392" />
            <wire x2="1488" y1="720" y2="720" x1="1392" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="1392" y1="1136" y2="1136" x1="1296" />
            <wire x2="1392" y1="1056" y2="1136" x1="1392" />
            <wire x2="1488" y1="1056" y2="1056" x1="1392" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="1392" y1="1456" y2="1456" x1="1296" />
            <wire x2="1392" y1="1392" y2="1456" x1="1392" />
            <wire x2="1504" y1="1392" y2="1392" x1="1392" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="1936" y1="1360" y2="1360" x1="1760" />
            <wire x2="1936" y1="1184" y2="1360" x1="1936" />
            <wire x2="2112" y1="1184" y2="1184" x1="1936" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="1920" y1="1024" y2="1024" x1="1744" />
            <wire x2="1920" y1="1024" y2="1120" x1="1920" />
            <wire x2="2112" y1="1120" y2="1120" x1="1920" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="2112" y1="688" y2="688" x1="1744" />
            <wire x2="2112" y1="688" y2="1056" x1="2112" />
        </branch>
        <branch name="BIT_0">
            <wire x2="992" y1="608" y2="608" x1="688" />
            <wire x2="1072" y1="608" y2="608" x1="992" />
            <wire x2="992" y1="608" y2="1456" x1="992" />
            <wire x2="1072" y1="1456" y2="1456" x1="992" />
        </branch>
        <branch name="BIT_1">
            <wire x2="944" y1="752" y2="752" x1="688" />
            <wire x2="1072" y1="752" y2="752" x1="944" />
            <wire x2="944" y1="752" y2="1136" x1="944" />
            <wire x2="1072" y1="1136" y2="1136" x1="944" />
        </branch>
        <branch name="BIT_2">
            <wire x2="864" y1="864" y2="864" x1="688" />
            <wire x2="864" y1="864" y2="992" x1="864" />
            <wire x2="1488" y1="992" y2="992" x1="864" />
            <wire x2="864" y1="992" y2="1328" x1="864" />
            <wire x2="1504" y1="1328" y2="1328" x1="864" />
        </branch>
        <branch name="BIT_3">
            <wire x2="832" y1="976" y2="976" x1="704" />
            <wire x2="832" y1="976" y2="1616" x1="832" />
            <wire x2="2112" y1="1616" y2="1616" x1="832" />
            <wire x2="2112" y1="1248" y2="1616" x1="2112" />
        </branch>
        <iomarker fontsize="28" x="688" y="608" name="BIT_0" orien="R180" />
        <iomarker fontsize="28" x="688" y="752" name="BIT_1" orien="R180" />
        <iomarker fontsize="28" x="688" y="864" name="BIT_2" orien="R180" />
        <iomarker fontsize="28" x="704" y="976" name="BIT_3" orien="R180" />
        <branch name="f">
            <wire x2="2400" y1="1152" y2="1152" x1="2368" />
        </branch>
        <iomarker fontsize="28" x="2400" y="1152" name="f" orien="R0" />
    </sheet>
</drawing>