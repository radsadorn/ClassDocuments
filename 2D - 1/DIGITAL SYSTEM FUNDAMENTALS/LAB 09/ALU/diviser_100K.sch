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
        <port polarity="Output" name="CLK_OUT" />
        <port polarity="Input" name="CLK_IN" />
        <blockdef name="diviser_10">
            <timestamp>2020-10-28T16:6:46</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="diviser_10" name="XLXI_1">
            <blockpin signalname="CLK_IN" name="CLK_IN" />
            <blockpin signalname="XLXN_1" name="CLK_OUT" />
        </block>
        <block symbolname="diviser_10" name="XLXI_2">
            <blockpin signalname="XLXN_1" name="CLK_IN" />
            <blockpin signalname="XLXN_3" name="CLK_OUT" />
        </block>
        <block symbolname="diviser_10" name="XLXI_5">
            <blockpin signalname="XLXN_4" name="CLK_IN" />
            <blockpin signalname="CLK_OUT" name="CLK_OUT" />
        </block>
        <block symbolname="diviser_10" name="XLXI_6">
            <blockpin signalname="XLXN_3" name="CLK_IN" />
            <blockpin signalname="XLXN_2" name="CLK_OUT" />
        </block>
        <block symbolname="diviser_10" name="XLXI_7">
            <blockpin signalname="XLXN_2" name="CLK_IN" />
            <blockpin signalname="XLXN_4" name="CLK_OUT" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1056" y="912" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1472" y1="880" y2="880" x1="1440" />
        </branch>
        <instance x="1472" y="912" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_2">
            <wire x2="1472" y1="1168" y2="1168" x1="1440" />
        </branch>
        <instance x="1056" y="1456" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_3">
            <wire x2="1872" y1="880" y2="880" x1="1856" />
            <wire x2="1872" y1="880" y2="1168" x1="1872" />
            <wire x2="1872" y1="1168" y2="1168" x1="1856" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1056" y1="1168" y2="1168" x1="1040" />
            <wire x2="1040" y1="1168" y2="1424" x1="1040" />
            <wire x2="1056" y1="1424" y2="1424" x1="1040" />
        </branch>
        <branch name="CLK_OUT">
            <wire x2="2080" y1="1424" y2="1424" x1="1440" />
        </branch>
        <branch name="CLK_IN">
            <wire x2="1056" y1="880" y2="880" x1="672" />
        </branch>
        <iomarker fontsize="28" x="672" y="880" name="CLK_IN" orien="R180" />
        <iomarker fontsize="28" x="2080" y="1424" name="CLK_OUT" orien="R0" />
        <instance x="1856" y="1200" name="XLXI_6" orien="M0">
        </instance>
        <instance x="1440" y="1200" name="XLXI_7" orien="M0">
        </instance>
    </sheet>
</drawing>