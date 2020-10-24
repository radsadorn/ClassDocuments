<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK_TIMER" />
        <signal name="CLK_DISPLAY" />
        <signal name="OSC" />
        <signal name="XLXN_19" />
        <signal name="STATE" />
        <signal name="XLXN_21" />
        <signal name="CLK_DOT" />
        <port polarity="Output" name="CLK_TIMER" />
        <port polarity="Output" name="CLK_DISPLAY" />
        <port polarity="Input" name="OSC" />
        <port polarity="Input" name="STATE" />
        <port polarity="Output" name="CLK_DOT" />
        <blockdef name="CLK_Divider_To_1Hz">
            <timestamp>2020-10-23T18:35:4</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="diviser_100K">
            <timestamp>2020-10-23T18:34:17</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
        <block symbolname="diviser_100K" name="XLXI_3">
            <blockpin signalname="OSC" name="CLK_IN" />
            <blockpin signalname="CLK_DISPLAY" name="CLK_OUT" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="CLK_DOT" name="I0" />
            <blockpin signalname="STATE" name="I1" />
            <blockpin signalname="CLK_TIMER" name="O" />
        </block>
        <block symbolname="CLK_Divider_To_1Hz" name="XLXI_9">
            <blockpin signalname="OSC" name="CLK_IN" />
            <blockpin signalname="CLK_DOT" name="CLK_OUT" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="CLK_TIMER">
            <wire x2="2528" y1="864" y2="864" x1="2320" />
        </branch>
        <branch name="CLK_DISPLAY">
            <wire x2="2528" y1="1200" y2="1200" x1="1728" />
        </branch>
        <branch name="OSC">
            <wire x2="992" y1="1200" y2="1200" x1="832" />
            <wire x2="1344" y1="1200" y2="1200" x1="992" />
            <wire x2="992" y1="896" y2="1200" x1="992" />
            <wire x2="1328" y1="896" y2="896" x1="992" />
        </branch>
        <iomarker fontsize="28" x="2528" y="864" name="CLK_TIMER" orien="R0" />
        <iomarker fontsize="28" x="2528" y="1200" name="CLK_DISPLAY" orien="R0" />
        <iomarker fontsize="28" x="832" y="1200" name="OSC" orien="R180" />
        <instance x="1344" y="1232" name="XLXI_3" orien="R0">
        </instance>
        <instance x="2064" y="960" name="XLXI_8" orien="R0" />
        <instance x="1328" y="928" name="XLXI_9" orien="R0">
        </instance>
        <branch name="STATE">
            <wire x2="1136" y1="704" y2="704" x1="832" />
            <wire x2="1152" y1="704" y2="704" x1="1136" />
            <wire x2="2048" y1="704" y2="704" x1="1152" />
            <wire x2="2048" y1="704" y2="832" x1="2048" />
            <wire x2="2064" y1="832" y2="832" x1="2048" />
        </branch>
        <iomarker fontsize="28" x="832" y="704" name="STATE" orien="R180" />
        <branch name="CLK_DOT">
            <wire x2="1888" y1="896" y2="896" x1="1712" />
            <wire x2="2064" y1="896" y2="896" x1="1888" />
            <wire x2="1888" y1="896" y2="1040" x1="1888" />
            <wire x2="2528" y1="1040" y2="1040" x1="1888" />
        </branch>
        <iomarker fontsize="28" x="2528" y="1040" name="CLK_DOT" orien="R0" />
    </sheet>
</drawing>