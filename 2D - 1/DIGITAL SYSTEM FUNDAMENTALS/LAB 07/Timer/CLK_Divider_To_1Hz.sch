<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_11" />
        <signal name="CLK_IN" />
        <signal name="CLK_OUT" />
        <port polarity="Input" name="CLK_IN" />
        <port polarity="Output" name="CLK_OUT" />
        <blockdef name="diviser_2">
            <timestamp>2020-10-23T18:32:48</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="CLK_Divider_To_2Hz">
            <timestamp>2020-10-23T18:34:49</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="CLK_Divider_To_2Hz" name="XLXI_12">
            <blockpin signalname="XLXN_11" name="CLK_IN" />
            <blockpin signalname="CLK_OUT" name="CLK_OUT" />
        </block>
        <block symbolname="diviser_2" name="XLXI_13">
            <blockpin signalname="CLK_IN" name="CLK_IN" />
            <blockpin signalname="XLXN_11" name="CLK_OUT" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1536" y="1040" name="XLXI_12" orien="R0">
        </instance>
        <instance x="1056" y="1040" name="XLXI_13" orien="R0">
        </instance>
        <branch name="XLXN_11">
            <wire x2="1536" y1="1008" y2="1008" x1="1440" />
        </branch>
        <branch name="CLK_IN">
            <wire x2="1056" y1="1008" y2="1008" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="1024" y="1008" name="CLK_IN" orien="R180" />
        <branch name="CLK_OUT">
            <wire x2="1952" y1="1008" y2="1008" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="1952" y="1008" name="CLK_OUT" orien="R0" />
    </sheet>
</drawing>