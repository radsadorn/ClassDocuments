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
        <signal name="BIT_2" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="b" />
        <port polarity="Input" name="BIT_0" />
        <port polarity="Input" name="BIT_1" />
        <port polarity="Input" name="BIT_2" />
        <port polarity="Output" name="b" />
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
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="BIT_0" name="I" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="BIT_1" name="I" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="BIT_2" name="I" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_9">
            <blockpin signalname="XLXN_21" name="I0" />
            <blockpin signalname="XLXN_20" name="I1" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_10">
            <blockpin signalname="BIT_1" name="I0" />
            <blockpin signalname="BIT_0" name="I1" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_11">
            <blockpin signalname="XLXN_24" name="I0" />
            <blockpin signalname="XLXN_23" name="I1" />
            <blockpin signalname="XLXN_22" name="I2" />
            <blockpin signalname="b" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="768" y="400" name="XLXI_6" orien="R0" />
        <instance x="768" y="560" name="XLXI_7" orien="R0" />
        <instance x="1248" y="1056" name="XLXI_8" orien="R0" />
        <instance x="1232" y="528" name="XLXI_9" orien="R0" />
        <instance x="1232" y="864" name="XLXI_10" orien="R0" />
        <instance x="1792" y="896" name="XLXI_11" orien="R0" />
        <branch name="BIT_0">
            <wire x2="560" y1="368" y2="368" x1="368" />
            <wire x2="768" y1="368" y2="368" x1="560" />
            <wire x2="560" y1="368" y2="736" x1="560" />
            <wire x2="1232" y1="736" y2="736" x1="560" />
        </branch>
        <branch name="BIT_1">
            <wire x2="656" y1="528" y2="528" x1="384" />
            <wire x2="768" y1="528" y2="528" x1="656" />
            <wire x2="656" y1="528" y2="800" x1="656" />
            <wire x2="1232" y1="800" y2="800" x1="656" />
        </branch>
        <branch name="BIT_2">
            <wire x2="384" y1="640" y2="640" x1="336" />
            <wire x2="384" y1="640" y2="656" x1="384" />
            <wire x2="384" y1="656" y2="1024" x1="384" />
            <wire x2="1248" y1="1024" y2="1024" x1="384" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="1104" y1="368" y2="368" x1="992" />
            <wire x2="1104" y1="368" y2="400" x1="1104" />
            <wire x2="1232" y1="400" y2="400" x1="1104" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="1104" y1="528" y2="528" x1="992" />
            <wire x2="1104" y1="464" y2="528" x1="1104" />
            <wire x2="1232" y1="464" y2="464" x1="1104" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="1792" y1="432" y2="432" x1="1488" />
            <wire x2="1792" y1="432" y2="704" x1="1792" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="1792" y1="768" y2="768" x1="1488" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="1792" y1="1024" y2="1024" x1="1472" />
            <wire x2="1792" y1="832" y2="1024" x1="1792" />
        </branch>
        <iomarker fontsize="28" x="336" y="640" name="BIT_2" orien="R180" />
        <iomarker fontsize="28" x="384" y="528" name="BIT_1" orien="R180" />
        <branch name="b">
            <wire x2="2080" y1="768" y2="768" x1="2048" />
        </branch>
        <iomarker fontsize="28" x="2080" y="768" name="b" orien="R0" />
        <iomarker fontsize="28" x="368" y="368" name="BIT_0" orien="R180" />
    </sheet>
</drawing>