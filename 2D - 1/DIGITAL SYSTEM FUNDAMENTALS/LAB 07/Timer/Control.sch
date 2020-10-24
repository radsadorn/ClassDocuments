<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLR" />
        <signal name="SW" />
        <signal name="CLR_OUT" />
        <signal name="XLXN_6" />
        <signal name="OSC" />
        <signal name="CLK_TIMER" />
        <signal name="CLK_DISPLAY" />
        <signal name="CLK_DOT" />
        <port polarity="Input" name="CLR" />
        <port polarity="Input" name="SW" />
        <port polarity="Output" name="CLR_OUT" />
        <port polarity="Input" name="OSC" />
        <port polarity="Output" name="CLK_TIMER" />
        <port polarity="Output" name="CLK_DISPLAY" />
        <port polarity="Output" name="CLK_DOT" />
        <blockdef name="State">
            <timestamp>2020-10-23T14:22:27</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Clear">
            <timestamp>2020-10-23T14:47:38</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="CLK_Divider_20MHz">
            <timestamp>2020-10-23T18:36:7</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
        </blockdef>
        <block symbolname="State" name="XLXI_1">
            <blockpin signalname="SW" name="CLK" />
            <blockpin signalname="XLXN_6" name="STATE" />
        </block>
        <block symbolname="Clear" name="XLXI_2">
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="CLR_OUT" name="CLR_OUT" />
            <blockpin signalname="XLXN_6" name="STATE" />
        </block>
        <block symbolname="CLK_Divider_20MHz" name="XLXI_6">
            <blockpin signalname="CLK_DISPLAY" name="CLK_DISPLAY" />
            <blockpin signalname="CLK_DOT" name="CLK_DOT" />
            <blockpin signalname="CLK_TIMER" name="CLK_TIMER" />
            <blockpin signalname="OSC" name="OSC" />
            <blockpin signalname="XLXN_6" name="STATE" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="992" y="736" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1808" y="576" name="XLXI_2" orien="R0">
        </instance>
        <branch name="CLR">
            <wire x2="1808" y1="544" y2="544" x1="816" />
        </branch>
        <branch name="SW">
            <wire x2="992" y1="704" y2="704" x1="816" />
        </branch>
        <iomarker fontsize="28" x="816" y="544" name="CLR" orien="R180" />
        <iomarker fontsize="28" x="816" y="704" name="SW" orien="R180" />
        <iomarker fontsize="28" x="816" y="1104" name="OSC" orien="R180" />
        <branch name="CLR_OUT">
            <wire x2="2224" y1="480" y2="480" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="2224" y="480" name="CLR_OUT" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="1584" y1="704" y2="704" x1="1376" />
            <wire x2="1584" y1="704" y2="1040" x1="1584" />
            <wire x2="1760" y1="1040" y2="1040" x1="1584" />
            <wire x2="1584" y1="480" y2="704" x1="1584" />
            <wire x2="1808" y1="480" y2="480" x1="1584" />
        </branch>
        <branch name="OSC">
            <wire x2="1760" y1="1104" y2="1104" x1="816" />
        </branch>
        <branch name="CLK_TIMER">
            <wire x2="2224" y1="1040" y2="1040" x1="2144" />
            <wire x2="2400" y1="1040" y2="1040" x1="2224" />
            <wire x2="2416" y1="1040" y2="1040" x1="2400" />
        </branch>
        <iomarker fontsize="28" x="2416" y="1040" name="CLK_TIMER" orien="R0" />
        <branch name="CLK_DISPLAY">
            <wire x2="2400" y1="1168" y2="1168" x1="2144" />
            <wire x2="2416" y1="1168" y2="1168" x1="2400" />
        </branch>
        <iomarker fontsize="28" x="2416" y="1168" name="CLK_DISPLAY" orien="R0" />
        <instance x="1760" y="1200" name="XLXI_6" orien="R0">
        </instance>
        <branch name="CLK_DOT">
            <wire x2="2416" y1="1104" y2="1104" x1="2144" />
        </branch>
        <iomarker fontsize="28" x="2416" y="1104" name="CLK_DOT" orien="R0" />
    </sheet>
</drawing>