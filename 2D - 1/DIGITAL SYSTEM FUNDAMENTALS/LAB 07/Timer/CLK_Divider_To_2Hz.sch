<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2" />
        <signal name="CLK_IN" />
        <signal name="XLXN_1" />
        <signal name="CLK_OUT" />
        <port polarity="Input" name="CLK_IN" />
        <port polarity="Output" name="CLK_OUT" />
        <blockdef name="diviser_10">
            <timestamp>2020-10-23T18:33:45</timestamp>
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
        <block symbolname="diviser_100K" name="XLXI_6">
            <blockpin signalname="XLXN_1" name="CLK_IN" />
            <blockpin signalname="CLK_OUT" name="CLK_OUT" />
        </block>
        <block symbolname="diviser_10" name="XLXI_7">
            <blockpin signalname="XLXN_2" name="CLK_IN" />
            <blockpin signalname="XLXN_1" name="CLK_OUT" />
        </block>
        <block symbolname="diviser_10" name="XLXI_8">
            <blockpin signalname="CLK_IN" name="CLK_IN" />
            <blockpin signalname="XLXN_2" name="CLK_OUT" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_2">
            <wire x2="1136" y1="960" y2="960" x1="1104" />
        </branch>
        <branch name="CLK_IN">
            <wire x2="720" y1="960" y2="960" x1="640" />
        </branch>
        <iomarker fontsize="28" x="640" y="960" name="CLK_IN" orien="R180" />
        <branch name="XLXN_1">
            <wire x2="1536" y1="960" y2="960" x1="1520" />
        </branch>
        <branch name="CLK_OUT">
            <wire x2="2080" y1="960" y2="960" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="2080" y="960" name="CLK_OUT" orien="R0" />
        <instance x="1536" y="992" name="XLXI_6" orien="R0">
        </instance>
        <instance x="1136" y="992" name="XLXI_7" orien="R0">
        </instance>
        <instance x="720" y="992" name="XLXI_8" orien="R0">
        </instance>
    </sheet>
</drawing>