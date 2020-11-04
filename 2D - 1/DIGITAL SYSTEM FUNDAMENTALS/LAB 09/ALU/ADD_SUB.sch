<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2" />
        <signal name="A(7:0)" />
        <signal name="B(7:0)" />
        <signal name="ADD" />
        <signal name="CLK" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="Q(7:0)" />
        <port polarity="Input" name="A(7:0)" />
        <port polarity="Input" name="B(7:0)" />
        <port polarity="Input" name="ADD" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="Q(7:0)" />
        <blockdef name="acc8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="384" x="64" y="-576" height="512" />
            <line x2="448" y1="-448" y2="-448" x1="512" />
            <rect width="64" x="0" y="-460" height="24" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="448" y1="-512" y2="-512" x1="512" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="256" />
            <line x2="256" y1="-64" y2="-32" x1="256" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <rect width="64" x="0" y="-396" height="24" />
            <rect width="64" x="448" y="-524" height="24" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <line x2="448" y1="-384" y2="-384" x1="512" />
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
        <block symbolname="acc8" name="XLXI_1">
            <blockpin signalname="ADD" name="ADD" />
            <blockpin signalname="A(7:0)" name="B(7:0)" />
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_9" name="CE" />
            <blockpin signalname="XLXN_2" name="CI" />
            <blockpin signalname="B(7:0)" name="D(7:0)" />
            <blockpin signalname="XLXN_8" name="L" />
            <blockpin name="R" />
            <blockpin name="CO" />
            <blockpin name="OFL" />
            <blockpin signalname="Q(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_3">
            <blockpin signalname="XLXN_2" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_4">
            <blockpin signalname="XLXN_8" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_5">
            <blockpin signalname="XLXN_9" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1280" y="1296" name="XLXI_1" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="1264" y1="784" y2="784" x1="1248" />
            <wire x2="1280" y1="784" y2="784" x1="1264" />
        </branch>
        <instance x="1120" y="720" name="XLXI_3" orien="R90" />
        <branch name="A(7:0)">
            <wire x2="1280" y1="848" y2="848" x1="1072" />
        </branch>
        <branch name="B(7:0)">
            <wire x2="1280" y1="912" y2="912" x1="1072" />
        </branch>
        <branch name="ADD">
            <wire x2="1280" y1="1040" y2="1040" x1="1072" />
        </branch>
        <branch name="CLK">
            <wire x2="1280" y1="1168" y2="1168" x1="1072" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1280" y1="976" y2="976" x1="1248" />
        </branch>
        <instance x="1120" y="912" name="XLXI_4" orien="R90" />
        <branch name="XLXN_9">
            <wire x2="1280" y1="1104" y2="1104" x1="1248" />
        </branch>
        <instance x="1248" y="1168" name="XLXI_5" orien="R270" />
        <iomarker fontsize="28" x="1072" y="848" name="A(7:0)" orien="R180" />
        <iomarker fontsize="28" x="1072" y="912" name="B(7:0)" orien="R180" />
        <iomarker fontsize="28" x="1072" y="1040" name="ADD" orien="R180" />
        <iomarker fontsize="28" x="1072" y="1168" name="CLK" orien="R180" />
        <branch name="Q(7:0)">
            <wire x2="1808" y1="784" y2="784" x1="1792" />
            <wire x2="1984" y1="784" y2="784" x1="1808" />
        </branch>
        <iomarker fontsize="28" x="1984" y="784" name="Q(7:0)" orien="R0" />
    </sheet>
</drawing>