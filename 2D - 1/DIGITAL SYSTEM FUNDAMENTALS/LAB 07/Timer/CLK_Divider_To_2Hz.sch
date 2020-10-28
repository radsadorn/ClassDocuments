<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2" />
        <signal name="XLXN_1" />
        <signal name="CLK_IN" />
        <signal name="CLK_OUT" />
        <signal name="XLXN_6" />
        <signal name="CLR" />
        <port polarity="Input" name="CLK_IN" />
        <port polarity="Output" name="CLK_OUT" />
        <port polarity="Input" name="CLR" />
        <blockdef name="diviser_10">
            <timestamp>2020-10-28T8:6:20</timestamp>
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
        <block symbolname="diviser_10" name="XLXI_14">
            <blockpin signalname="CLK_IN" name="CLK_IN" />
            <blockpin signalname="XLXN_2" name="CLK_OUT" />
            <blockpin signalname="CLR" name="CLR" />
        </block>
        <block symbolname="diviser_10" name="XLXI_15">
            <blockpin signalname="XLXN_2" name="CLK_IN" />
            <blockpin signalname="XLXN_1" name="CLK_OUT" />
            <blockpin signalname="CLR" name="CLR" />
        </block>
        <block symbolname="diviser_100K" name="XLXI_16">
            <blockpin signalname="XLXN_1" name="CLK_IN" />
            <blockpin signalname="CLK_OUT" name="CLK_OUT" />
            <blockpin signalname="CLR" name="CLR" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_2">
            <wire x2="1136" y1="960" y2="960" x1="896" />
        </branch>
        <branch name="XLXN_1">
            <wire x2="1952" y1="960" y2="960" x1="1520" />
        </branch>
        <branch name="CLK_IN">
            <wire x2="512" y1="960" y2="960" x1="432" />
        </branch>
        <iomarker fontsize="28" x="432" y="960" name="CLK_IN" orien="R180" />
        <branch name="CLK_OUT">
            <wire x2="2496" y1="960" y2="960" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2496" y="960" name="CLK_OUT" orien="R0" />
        <instance x="512" y="1056" name="XLXI_14" orien="R0">
        </instance>
        <instance x="1136" y="1056" name="XLXI_15" orien="R0">
        </instance>
        <instance x="1952" y="1056" name="XLXI_16" orien="R0">
        </instance>
        <branch name="CLR">
            <wire x2="448" y1="1248" y2="1248" x1="416" />
            <wire x2="976" y1="1248" y2="1248" x1="448" />
            <wire x2="1536" y1="1248" y2="1248" x1="976" />
            <wire x2="512" y1="1024" y2="1024" x1="448" />
            <wire x2="448" y1="1024" y2="1248" x1="448" />
            <wire x2="976" y1="1024" y2="1248" x1="976" />
            <wire x2="1136" y1="1024" y2="1024" x1="976" />
            <wire x2="1536" y1="1024" y2="1248" x1="1536" />
            <wire x2="1952" y1="1024" y2="1024" x1="1536" />
        </branch>
        <iomarker fontsize="28" x="416" y="1248" name="CLR" orien="R180" />
    </sheet>
</drawing>