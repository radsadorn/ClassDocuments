<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="CLK_OUT" />
        <signal name="CLK_IN" />
        <signal name="CLR" />
        <port polarity="Output" name="CLK_OUT" />
        <port polarity="Input" name="CLK_IN" />
        <port polarity="Input" name="CLR" />
        <blockdef name="diviser_10">
            <timestamp>2020-10-28T8:6:20</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <block symbolname="diviser_10" name="XLXI_8">
            <blockpin signalname="CLK_IN" name="CLK_IN" />
            <blockpin signalname="XLXN_1" name="CLK_OUT" />
            <blockpin signalname="CLR" name="CLR" />
        </block>
        <block symbolname="diviser_10" name="XLXI_9">
            <blockpin signalname="XLXN_1" name="CLK_IN" />
            <blockpin signalname="XLXN_3" name="CLK_OUT" />
            <blockpin signalname="CLR" name="CLR" />
        </block>
        <block symbolname="diviser_10" name="XLXI_10">
            <blockpin signalname="XLXN_4" name="CLK_IN" />
            <blockpin signalname="CLK_OUT" name="CLK_OUT" />
            <blockpin signalname="CLR" name="CLR" />
        </block>
        <block symbolname="diviser_10" name="XLXI_11">
            <blockpin signalname="XLXN_3" name="CLK_IN" />
            <blockpin signalname="XLXN_2" name="CLK_OUT" />
            <blockpin signalname="CLR" name="CLR" />
        </block>
        <block symbolname="diviser_10" name="XLXI_12">
            <blockpin signalname="XLXN_2" name="CLK_IN" />
            <blockpin signalname="XLXN_4" name="CLK_OUT" />
            <blockpin signalname="CLR" name="CLR" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_1">
            <wire x2="1472" y1="880" y2="880" x1="1440" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1488" y1="1312" y2="1312" x1="1408" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1888" y1="880" y2="880" x1="1856" />
            <wire x2="1888" y1="880" y2="1312" x1="1888" />
            <wire x2="1888" y1="1312" y2="1312" x1="1872" />
        </branch>
        <branch name="CLK_IN">
            <wire x2="1056" y1="880" y2="880" x1="672" />
        </branch>
        <iomarker fontsize="28" x="672" y="880" name="CLK_IN" orien="R180" />
        <instance x="1056" y="976" name="XLXI_8" orien="R0">
        </instance>
        <instance x="1472" y="976" name="XLXI_9" orien="R0">
        </instance>
        <instance x="1040" y="1840" name="XLXI_10" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2160" y="1744" name="CLK_OUT" orien="R0" />
        <branch name="CLK_OUT">
            <wire x2="2160" y1="1744" y2="1744" x1="1424" />
        </branch>
        <instance x="1408" y="1408" name="XLXI_12" orien="M0">
        </instance>
        <branch name="XLXN_4">
            <wire x2="1024" y1="1312" y2="1312" x1="1008" />
            <wire x2="1008" y1="1312" y2="1744" x1="1008" />
            <wire x2="1040" y1="1744" y2="1744" x1="1008" />
        </branch>
        <instance x="1872" y="1408" name="XLXI_11" orien="M0">
        </instance>
        <branch name="CLR">
            <wire x2="1056" y1="1104" y2="1104" x1="672" />
            <wire x2="1456" y1="1104" y2="1104" x1="1056" />
            <wire x2="1968" y1="1104" y2="1104" x1="1456" />
            <wire x2="1968" y1="1104" y2="1376" x1="1968" />
            <wire x2="1968" y1="1376" y2="1584" x1="1968" />
            <wire x2="976" y1="1584" y2="1808" x1="976" />
            <wire x2="1040" y1="1808" y2="1808" x1="976" />
            <wire x2="1424" y1="1584" y2="1584" x1="976" />
            <wire x2="1968" y1="1584" y2="1584" x1="1424" />
            <wire x2="1056" y1="944" y2="1104" x1="1056" />
            <wire x2="1424" y1="1376" y2="1376" x1="1408" />
            <wire x2="1424" y1="1376" y2="1584" x1="1424" />
            <wire x2="1456" y1="944" y2="1104" x1="1456" />
            <wire x2="1472" y1="944" y2="944" x1="1456" />
            <wire x2="1968" y1="1376" y2="1376" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="672" y="1104" name="CLR" orien="R180" />
    </sheet>
</drawing>