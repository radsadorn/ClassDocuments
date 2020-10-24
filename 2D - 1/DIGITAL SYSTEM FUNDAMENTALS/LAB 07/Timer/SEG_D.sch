<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="BIT_3" />
        <signal name="BIT_0" />
        <signal name="BIT_1" />
        <signal name="BIT_2" />
        <signal name="d" />
        <signal name="XLXN_34" />
        <port polarity="Input" name="BIT_3" />
        <port polarity="Input" name="BIT_0" />
        <port polarity="Input" name="BIT_1" />
        <port polarity="Input" name="BIT_2" />
        <port polarity="Output" name="d" />
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
        <blockdef name="or5">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="72" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="48" y1="-320" y2="-320" x1="0" />
            <line x2="192" y1="-192" y2="-192" x1="256" />
            <arc ex="192" ey="-192" sx="112" sy="-144" r="88" cx="116" cy="-232" />
            <line x2="48" y1="-240" y2="-240" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <line x2="48" y1="-64" y2="-144" x1="48" />
            <line x2="48" y1="-320" y2="-240" x1="48" />
            <arc ex="112" ey="-240" sx="192" sy="-192" r="88" cx="116" cy="-152" />
            <arc ex="48" ey="-240" sx="48" sy="-144" r="56" cx="16" cy="-192" />
        </blockdef>
        <block symbolname="inv" name="XLXI_13">
            <blockpin signalname="BIT_0" name="I" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_14">
            <blockpin signalname="BIT_2" name="I" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_15">
            <blockpin signalname="BIT_2" name="I" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_16">
            <blockpin signalname="BIT_0" name="I" />
            <blockpin signalname="XLXN_28" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_17">
            <blockpin signalname="BIT_1" name="I" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_18">
            <blockpin signalname="XLXN_26" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_19">
            <blockpin signalname="XLXN_27" name="I0" />
            <blockpin signalname="BIT_1" name="I1" />
            <blockpin signalname="XLXN_32" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_20">
            <blockpin signalname="XLXN_28" name="I0" />
            <blockpin signalname="BIT_1" name="I1" />
            <blockpin signalname="XLXN_31" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_21">
            <blockpin signalname="BIT_0" name="I0" />
            <blockpin signalname="XLXN_29" name="I1" />
            <blockpin signalname="BIT_2" name="I2" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
        <block symbolname="or5" name="XLXI_22">
            <blockpin signalname="BIT_3" name="I0" />
            <blockpin signalname="XLXN_30" name="I1" />
            <blockpin signalname="XLXN_31" name="I2" />
            <blockpin signalname="XLXN_32" name="I3" />
            <blockpin signalname="XLXN_33" name="I4" />
            <blockpin signalname="d" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="912" y="576" name="XLXI_13" orien="R0" />
        <instance x="912" y="736" name="XLXI_14" orien="R0" />
        <instance x="912" y="1008" name="XLXI_15" orien="R0" />
        <instance x="912" y="1312" name="XLXI_16" orien="R0" />
        <instance x="912" y="1648" name="XLXI_17" orien="R0" />
        <instance x="1344" y="720" name="XLXI_18" orien="R0" />
        <instance x="1344" y="1040" name="XLXI_19" orien="R0" />
        <instance x="1344" y="1312" name="XLXI_20" orien="R0" />
        <instance x="1344" y="1744" name="XLXI_21" orien="R0" />
        <instance x="1984" y="1408" name="XLXI_22" orien="R0" />
        <branch name="XLXN_25">
            <wire x2="1232" y1="544" y2="544" x1="1136" />
            <wire x2="1232" y1="544" y2="592" x1="1232" />
            <wire x2="1344" y1="592" y2="592" x1="1232" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="1232" y1="704" y2="704" x1="1136" />
            <wire x2="1232" y1="656" y2="704" x1="1232" />
            <wire x2="1344" y1="656" y2="656" x1="1232" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="1344" y1="976" y2="976" x1="1136" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="1232" y1="1280" y2="1280" x1="1136" />
            <wire x2="1232" y1="1248" y2="1280" x1="1232" />
            <wire x2="1344" y1="1248" y2="1248" x1="1232" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="1344" y1="1616" y2="1616" x1="1136" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="1792" y1="1616" y2="1616" x1="1600" />
            <wire x2="1792" y1="1280" y2="1616" x1="1792" />
            <wire x2="1984" y1="1280" y2="1280" x1="1792" />
        </branch>
        <branch name="XLXN_31">
            <wire x2="1984" y1="1216" y2="1216" x1="1600" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="1792" y1="944" y2="944" x1="1600" />
            <wire x2="1792" y1="944" y2="1152" x1="1792" />
            <wire x2="1984" y1="1152" y2="1152" x1="1792" />
        </branch>
        <branch name="XLXN_33">
            <wire x2="1984" y1="624" y2="624" x1="1600" />
            <wire x2="1984" y1="624" y2="1088" x1="1984" />
        </branch>
        <branch name="BIT_3">
            <wire x2="464" y1="1072" y2="1888" x1="464" />
            <wire x2="1984" y1="1888" y2="1888" x1="464" />
            <wire x2="1984" y1="1344" y2="1888" x1="1984" />
        </branch>
        <branch name="BIT_0">
            <wire x2="640" y1="480" y2="480" x1="464" />
            <wire x2="640" y1="480" y2="544" x1="640" />
            <wire x2="768" y1="544" y2="544" x1="640" />
            <wire x2="912" y1="544" y2="544" x1="768" />
            <wire x2="768" y1="544" y2="1280" x1="768" />
            <wire x2="912" y1="1280" y2="1280" x1="768" />
            <wire x2="768" y1="1280" y2="1680" x1="768" />
            <wire x2="1328" y1="1680" y2="1680" x1="768" />
            <wire x2="1344" y1="1680" y2="1680" x1="1328" />
        </branch>
        <branch name="BIT_1">
            <wire x2="672" y1="672" y2="672" x1="464" />
            <wire x2="672" y1="672" y2="912" x1="672" />
            <wire x2="1344" y1="912" y2="912" x1="672" />
            <wire x2="672" y1="912" y2="1184" x1="672" />
            <wire x2="1344" y1="1184" y2="1184" x1="672" />
            <wire x2="672" y1="1184" y2="1616" x1="672" />
            <wire x2="912" y1="1616" y2="1616" x1="672" />
        </branch>
        <branch name="BIT_2">
            <wire x2="608" y1="880" y2="880" x1="464" />
            <wire x2="608" y1="880" y2="976" x1="608" />
            <wire x2="912" y1="976" y2="976" x1="608" />
            <wire x2="608" y1="976" y2="1552" x1="608" />
            <wire x2="1344" y1="1552" y2="1552" x1="608" />
            <wire x2="912" y1="704" y2="704" x1="608" />
            <wire x2="608" y1="704" y2="864" x1="608" />
            <wire x2="608" y1="864" y2="880" x1="608" />
        </branch>
        <iomarker fontsize="28" x="464" y="480" name="BIT_0" orien="R180" />
        <iomarker fontsize="28" x="464" y="672" name="BIT_1" orien="R180" />
        <iomarker fontsize="28" x="464" y="880" name="BIT_2" orien="R180" />
        <branch name="d">
            <wire x2="2272" y1="1216" y2="1216" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="2272" y="1216" name="d" orien="R0" />
        <iomarker fontsize="28" x="464" y="1072" name="BIT_3" orien="R180" />
    </sheet>
</drawing>