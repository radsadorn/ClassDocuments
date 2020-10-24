<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="STATE" />
        <signal name="XLXN_11" />
        <signal name="XLXN_13" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="STATE" />
        <blockdef name="ftc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="ftc" name="XLXI_6">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_11" name="CLR" />
            <blockpin signalname="XLXN_13" name="T" />
            <blockpin signalname="STATE" name="Q" />
        </block>
        <block symbolname="gnd" name="XLXI_7">
            <blockpin signalname="XLXN_11" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_8">
            <blockpin signalname="XLXN_13" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="CLK">
            <wire x2="1040" y1="944" y2="944" x1="768" />
        </branch>
        <iomarker fontsize="28" x="768" y="944" name="CLK" orien="R180" />
        <instance x="1040" y="1072" name="XLXI_6" orien="R0" />
        <branch name="STATE">
            <wire x2="1856" y1="816" y2="816" x1="1424" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1040" y1="1040" y2="1120" x1="1040" />
        </branch>
        <instance x="976" y="1248" name="XLXI_7" orien="R0" />
        <iomarker fontsize="28" x="1856" y="816" name="STATE" orien="R0" />
        <branch name="XLXN_13">
            <wire x2="880" y1="800" y2="816" x1="880" />
            <wire x2="1040" y1="816" y2="816" x1="880" />
        </branch>
        <instance x="816" y="800" name="XLXI_8" orien="R0" />
    </sheet>
</drawing>