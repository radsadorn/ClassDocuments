<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A(7:0)" />
        <signal name="XLXN_3(7:0)" />
        <signal name="B(7:0)" />
        <signal name="XLXN_5" />
        <signal name="S(7:0)" />
        <port polarity="Input" name="A(7:0)" />
        <port polarity="Input" name="B(7:0)" />
        <port polarity="Output" name="S(7:0)" />
        <blockdef name="add8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="336" y1="-128" y2="-148" x1="336" />
            <line x2="336" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-288" y2="-432" x1="64" />
            <line x2="64" y1="-256" y2="-288" x1="128" />
            <line x2="128" y1="-224" y2="-256" x1="64" />
            <line x2="64" y1="-80" y2="-224" x1="64" />
            <line x2="64" y1="-160" y2="-80" x1="384" />
            <line x2="384" y1="-336" y2="-160" x1="384" />
            <line x2="384" y1="-352" y2="-336" x1="384" />
            <line x2="384" y1="-432" y2="-352" x1="64" />
            <line x2="64" y1="-448" y2="-448" x1="128" />
            <line x2="128" y1="-416" y2="-448" x1="128" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <rect width="64" x="384" y="-268" height="24" />
            <line x2="384" y1="-256" y2="-256" x1="448" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <rect width="64" x="0" y="-332" height="24" />
            <rect width="64" x="0" y="-204" height="24" />
            <line x2="384" y1="-64" y2="-64" x1="240" />
            <line x2="240" y1="-124" y2="-64" x1="240" />
            <line x2="384" y1="-64" y2="-64" x1="448" />
            <line x2="384" y1="-128" y2="-128" x1="448" />
        </blockdef>
        <blockdef name="inv8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <circle r="16" cx="144" cy="-32" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <rect width="64" x="160" y="-44" height="24" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="add8" name="XLXI_1">
            <blockpin signalname="A(7:0)" name="A(7:0)" />
            <blockpin signalname="XLXN_3(7:0)" name="B(7:0)" />
            <blockpin signalname="XLXN_5" name="CI" />
            <blockpin name="CO" />
            <blockpin name="OFL" />
            <blockpin signalname="S(7:0)" name="S(7:0)" />
        </block>
        <block symbolname="inv8" name="XLXI_2">
            <blockpin signalname="B(7:0)" name="I(7:0)" />
            <blockpin signalname="XLXN_3(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_3">
            <blockpin signalname="XLXN_5" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1472" y="1456" name="XLXI_1" orien="R0" />
        <branch name="A(7:0)">
            <wire x2="1312" y1="1136" y2="1136" x1="976" />
            <wire x2="1472" y1="1136" y2="1136" x1="1312" />
        </branch>
        <branch name="XLXN_3(7:0)">
            <wire x2="1472" y1="1264" y2="1264" x1="1328" />
        </branch>
        <instance x="1104" y="1296" name="XLXI_2" orien="R0" />
        <branch name="B(7:0)">
            <wire x2="1104" y1="1264" y2="1264" x1="976" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1472" y1="976" y2="1008" x1="1472" />
        </branch>
        <instance x="1408" y="976" name="XLXI_3" orien="R0" />
        <iomarker fontsize="28" x="976" y="1136" name="A(7:0)" orien="R180" />
        <iomarker fontsize="28" x="976" y="1264" name="B(7:0)" orien="R180" />
        <branch name="S(7:0)">
            <wire x2="2112" y1="1200" y2="1200" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="2112" y="1200" name="S(7:0)" orien="R0" />
    </sheet>
</drawing>