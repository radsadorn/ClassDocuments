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
        <signal name="CLK_IN" />
        <signal name="CLK_OUT" />
        <port polarity="Input" name="CLK_IN" />
        <port polarity="Output" name="CLK_OUT" />
        <blockdef name="divide2">
            <timestamp>2020-10-24T7:44:45</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="divide2" name="XLXI_6">
            <blockpin signalname="CLK_IN" name="CLK_IN" />
            <blockpin signalname="XLXN_1" name="CLK_OUT" />
        </block>
        <block symbolname="divide2" name="XLXI_7">
            <blockpin signalname="XLXN_1" name="CLK_IN" />
            <blockpin signalname="XLXN_2" name="CLK_OUT" />
        </block>
        <block symbolname="divide2" name="XLXI_8">
            <blockpin signalname="XLXN_2" name="CLK_IN" />
            <blockpin signalname="XLXN_3" name="CLK_OUT" />
        </block>
        <block symbolname="divide2" name="XLXI_9">
            <blockpin signalname="XLXN_3" name="CLK_IN" />
            <blockpin signalname="CLK_OUT" name="CLK_OUT" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_1">
            <wire x2="896" y1="1232" y2="1232" x1="864" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1312" y1="1232" y2="1232" x1="1280" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1728" y1="1232" y2="1232" x1="1696" />
        </branch>
        <branch name="CLK_IN">
            <wire x2="480" y1="1232" y2="1232" x1="448" />
        </branch>
        <branch name="CLK_OUT">
            <wire x2="2144" y1="1232" y2="1232" x1="2112" />
        </branch>
        <instance x="480" y="1264" name="XLXI_6" orien="R0">
        </instance>
        <instance x="896" y="1264" name="XLXI_7" orien="R0">
        </instance>
        <instance x="1312" y="1264" name="XLXI_8" orien="R0">
        </instance>
        <instance x="1728" y="1264" name="XLXI_9" orien="R0">
        </instance>
        <iomarker fontsize="28" x="448" y="1232" name="CLK_IN" orien="R180" />
        <iomarker fontsize="28" x="2144" y="1232" name="CLK_OUT" orien="R0" />
    </sheet>
</drawing>