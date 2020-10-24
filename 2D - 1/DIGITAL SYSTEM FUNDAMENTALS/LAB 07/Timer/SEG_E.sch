<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="BIT_0" />
        <signal name="BIT_1" />
        <signal name="BIT_2" />
        <signal name="e" />
        <port polarity="Input" name="BIT_0" />
        <port polarity="Input" name="BIT_1" />
        <port polarity="Input" name="BIT_2" />
        <port polarity="Output" name="e" />
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
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="BIT_0" name="I" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="BIT_2" name="I" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="BIT_0" name="I" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_10">
            <blockpin signalname="XLXN_19" name="I0" />
            <blockpin signalname="XLXN_16" name="I1" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_11">
            <blockpin signalname="BIT_1" name="I0" />
            <blockpin signalname="XLXN_20" name="I1" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_12">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="e" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1024" y="720" name="XLXI_7" orien="R0" />
        <instance x="1024" y="896" name="XLXI_8" orien="R0" />
        <instance x="1024" y="1168" name="XLXI_9" orien="R0" />
        <instance x="1408" y="864" name="XLXI_10" orien="R0" />
        <instance x="1408" y="1344" name="XLXI_11" orien="R0" />
        <instance x="1872" y="1088" name="XLXI_12" orien="R0" />
        <branch name="XLXN_14">
            <wire x2="1760" y1="768" y2="768" x1="1664" />
            <wire x2="1760" y1="768" y2="960" x1="1760" />
            <wire x2="1872" y1="960" y2="960" x1="1760" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1760" y1="1248" y2="1248" x1="1664" />
            <wire x2="1760" y1="1024" y2="1248" x1="1760" />
            <wire x2="1872" y1="1024" y2="1024" x1="1760" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="1328" y1="688" y2="688" x1="1248" />
            <wire x2="1328" y1="688" y2="736" x1="1328" />
            <wire x2="1408" y1="736" y2="736" x1="1328" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1328" y1="864" y2="864" x1="1248" />
            <wire x2="1328" y1="800" y2="864" x1="1328" />
            <wire x2="1408" y1="800" y2="800" x1="1328" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="1328" y1="1136" y2="1136" x1="1248" />
            <wire x2="1328" y1="1136" y2="1216" x1="1328" />
            <wire x2="1408" y1="1216" y2="1216" x1="1328" />
        </branch>
        <branch name="BIT_0">
            <wire x2="896" y1="688" y2="688" x1="640" />
            <wire x2="1024" y1="688" y2="688" x1="896" />
            <wire x2="896" y1="688" y2="1136" x1="896" />
            <wire x2="1024" y1="1136" y2="1136" x1="896" />
        </branch>
        <branch name="BIT_1">
            <wire x2="656" y1="816" y2="816" x1="608" />
            <wire x2="656" y1="816" y2="1280" x1="656" />
            <wire x2="1408" y1="1280" y2="1280" x1="656" />
        </branch>
        <branch name="BIT_2">
            <wire x2="544" y1="1072" y2="1072" x1="480" />
            <wire x2="1024" y1="864" y2="864" x1="544" />
            <wire x2="544" y1="864" y2="1056" x1="544" />
            <wire x2="544" y1="1056" y2="1072" x1="544" />
        </branch>
        <iomarker fontsize="28" x="640" y="688" name="BIT_0" orien="R180" />
        <iomarker fontsize="28" x="480" y="1072" name="BIT_2" orien="R180" />
        <iomarker fontsize="28" x="608" y="816" name="BIT_1" orien="R180" />
        <branch name="e">
            <wire x2="2160" y1="992" y2="992" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="2160" y="992" name="e" orien="R0" />
    </sheet>
</drawing>