<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK_IN" />
        <signal name="CLK_OUT" />
        <signal name="XLXN_3" />
        <signal name="CLR" />
        <port polarity="Input" name="CLK_IN" />
        <port polarity="Output" name="CLK_OUT" />
        <port polarity="Input" name="CLR" />
        <blockdef name="diviser_2">
            <timestamp>2020-10-28T8:2:58</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="diviser_5">
            <timestamp>2020-10-28T8:4:49</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <block symbolname="diviser_5" name="XLXI_5">
            <blockpin signalname="CLK_IN" name="CLK_IN" />
            <blockpin signalname="XLXN_3" name="CLK_OUT" />
            <blockpin signalname="CLR" name="CLR" />
        </block>
        <block symbolname="diviser_2" name="XLXI_4">
            <blockpin signalname="XLXN_3" name="CLK_IN" />
            <blockpin signalname="CLK_OUT" name="CLK_OUT" />
            <blockpin signalname="CLR" name="CLR" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="CLK_IN">
            <wire x2="880" y1="960" y2="960" x1="720" />
        </branch>
        <iomarker fontsize="28" x="720" y="960" name="CLK_IN" orien="R180" />
        <branch name="CLK_OUT">
            <wire x2="1760" y1="960" y2="960" x1="1728" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1344" y1="960" y2="960" x1="1264" />
        </branch>
        <instance x="1344" y="1056" name="XLXI_4" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1760" y="960" name="CLK_OUT" orien="R0" />
        <instance x="880" y="1056" name="XLXI_5" orien="R0">
        </instance>
        <branch name="CLR">
            <wire x2="752" y1="1136" y2="1136" x1="704" />
            <wire x2="1312" y1="1136" y2="1136" x1="752" />
            <wire x2="880" y1="1024" y2="1024" x1="752" />
            <wire x2="752" y1="1024" y2="1136" x1="752" />
            <wire x2="1344" y1="1024" y2="1024" x1="1312" />
            <wire x2="1312" y1="1024" y2="1136" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="704" y="1136" name="CLR" orien="R180" />
    </sheet>
</drawing>