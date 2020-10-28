<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK_DISPLAY" />
        <signal name="OSC" />
        <signal name="STATE" />
        <signal name="XLXN_1" />
        <signal name="CLK_TIMER" />
        <signal name="CLR" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <port polarity="Output" name="CLK_DISPLAY" />
        <port polarity="Input" name="OSC" />
        <port polarity="Input" name="STATE" />
        <port polarity="Output" name="CLK_TIMER" />
        <port polarity="Input" name="CLR" />
        <blockdef name="CLK_Divider_To_1Hz">
            <timestamp>2020-10-28T8:24:11</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="diviser_100K">
            <timestamp>2020-10-28T8:16:2</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
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
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
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
        <block symbolname="and2" name="XLXI_10">
            <blockpin signalname="OSC" name="I0" />
            <blockpin signalname="STATE" name="I1" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="diviser_100K" name="XLXI_12">
            <blockpin signalname="OSC" name="CLK_IN" />
            <blockpin signalname="CLK_DISPLAY" name="CLK_OUT" />
            <blockpin signalname="XLXN_3" name="CLR" />
        </block>
        <block symbolname="CLK_Divider_To_1Hz" name="XLXI_14">
            <blockpin signalname="XLXN_1" name="CLK_IN" />
            <blockpin signalname="CLK_TIMER" name="CLK_OUT" />
            <blockpin signalname="CLR" name="CLR" />
        </block>
        <block symbolname="vcc" name="XLXI_15">
            <blockpin signalname="XLXN_2" name="P" />
        </block>
        <block symbolname="inv" name="XLXI_16">
            <blockpin signalname="XLXN_2" name="I" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="CLK_DISPLAY">
            <wire x2="2528" y1="1200" y2="1200" x1="1728" />
        </branch>
        <iomarker fontsize="28" x="2528" y="864" name="CLK_TIMER" orien="R0" />
        <iomarker fontsize="28" x="2528" y="1200" name="CLK_DISPLAY" orien="R0" />
        <iomarker fontsize="28" x="832" y="1200" name="OSC" orien="R180" />
        <iomarker fontsize="28" x="832" y="704" name="STATE" orien="R180" />
        <branch name="OSC">
            <wire x2="992" y1="1200" y2="1200" x1="832" />
            <wire x2="1344" y1="1200" y2="1200" x1="992" />
            <wire x2="1040" y1="928" y2="928" x1="992" />
            <wire x2="992" y1="928" y2="1200" x1="992" />
        </branch>
        <branch name="XLXN_1">
            <wire x2="1328" y1="896" y2="896" x1="1296" />
        </branch>
        <instance x="1040" y="992" name="XLXI_10" orien="R0" />
        <branch name="CLK_TIMER">
            <wire x2="2400" y1="896" y2="896" x1="1712" />
            <wire x2="2528" y1="864" y2="864" x1="2400" />
            <wire x2="2400" y1="864" y2="896" x1="2400" />
        </branch>
        <branch name="STATE">
            <wire x2="976" y1="704" y2="704" x1="832" />
            <wire x2="976" y1="704" y2="864" x1="976" />
            <wire x2="1040" y1="864" y2="864" x1="976" />
        </branch>
        <instance x="1344" y="1296" name="XLXI_12" orien="R0">
        </instance>
        <instance x="1328" y="992" name="XLXI_14" orien="R0">
        </instance>
        <iomarker fontsize="28" x="720" y="960" name="CLR" orien="R180" />
        <branch name="CLR">
            <wire x2="768" y1="960" y2="960" x1="720" />
            <wire x2="1328" y1="960" y2="960" x1="768" />
        </branch>
        <instance x="800" y="1456" name="XLXI_15" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="896" y1="1456" y2="1456" x1="864" />
        </branch>
        <instance x="896" y="1488" name="XLXI_16" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="1232" y1="1456" y2="1456" x1="1120" />
            <wire x2="1232" y1="1264" y2="1456" x1="1232" />
            <wire x2="1344" y1="1264" y2="1264" x1="1232" />
        </branch>
    </sheet>
</drawing>