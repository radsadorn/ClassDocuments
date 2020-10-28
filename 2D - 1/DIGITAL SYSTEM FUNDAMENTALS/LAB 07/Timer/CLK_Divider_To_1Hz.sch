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
        <blockdef name="CLK_Divider_To_2Hz">
            <timestamp>2020-10-28T8:23:4</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <block symbolname="diviser_2" name="XLXI_25">
            <blockpin signalname="XLXN_11" name="CLK_IN" />
            <blockpin signalname="CLK_OUT" name="CLK_OUT" />
            <blockpin signalname="CLR" name="CLR" />
        </block>
        <block symbolname="CLK_Divider_To_2Hz" name="XLXI_26">
            <blockpin signalname="CLK_IN" name="CLK_IN" />
            <blockpin signalname="XLXN_11" name="CLK_OUT" />
            <blockpin signalname="CLR" name="CLR" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="CLK_IN">
            <wire x2="704" y1="992" y2="992" x1="672" />
        </branch>
        <iomarker fontsize="28" x="672" y="992" name="CLK_IN" orien="R180" />
        <branch name="CLK_OUT">
            <wire x2="2000" y1="992" y2="992" x1="1984" />
            <wire x2="2192" y1="992" y2="992" x1="2000" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1600" y1="992" y2="992" x1="1088" />
        </branch>
        <iomarker fontsize="28" x="2192" y="992" name="CLK_OUT" orien="R0" />
        <instance x="1600" y="1088" name="XLXI_25" orien="R0">
        </instance>
        <instance x="704" y="1088" name="XLXI_26" orien="R0">
        </instance>
        <branch name="CLR">
            <wire x2="688" y1="1280" y2="1280" x1="640" />
            <wire x2="704" y1="1280" y2="1280" x1="688" />
            <wire x2="1152" y1="1280" y2="1280" x1="704" />
            <wire x2="704" y1="1056" y2="1056" x1="688" />
            <wire x2="688" y1="1056" y2="1280" x1="688" />
            <wire x2="1152" y1="1056" y2="1280" x1="1152" />
            <wire x2="1600" y1="1056" y2="1056" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="640" y="1280" name="CLR" orien="R180" />
    </sheet>
</drawing>