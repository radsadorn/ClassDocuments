<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="B(7:0)" />
        <signal name="A(7:0)" />
        <signal name="XLXN_3(7:0)" />
        <signal name="XLXN_4(7:0)" />
        <signal name="Q(7:0)" />
        <signal name="W(7:0)" />
        <signal name="E(7:0)" />
        <signal name="R(7:0)" />
        <port polarity="Input" name="B(7:0)" />
        <port polarity="Input" name="A(7:0)" />
        <port polarity="Output" name="Q(7:0)" />
        <port polarity="Output" name="W(7:0)" />
        <port polarity="Output" name="E(7:0)" />
        <port polarity="Output" name="R(7:0)" />
        <blockdef name="SUB">
            <timestamp>2020-11-4T7:59:26</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="ADD">
            <timestamp>2020-11-4T9:10:10</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
        </blockdef>
        <blockdef name="ExOr">
            <timestamp>2020-11-4T6:42:17</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="SHIFTBIT">
            <timestamp>2020-11-4T15:54:27</timestamp>
            <rect width="320" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
        </blockdef>
        <block symbolname="SUB" name="XLXI_7">
            <blockpin signalname="A(7:0)" name="A(7:0)" />
            <blockpin signalname="B(7:0)" name="B(7:0)" />
            <blockpin signalname="W(7:0)" name="S(7:0)" />
        </block>
        <block symbolname="ADD" name="XLXI_5">
            <blockpin signalname="A(7:0)" name="A(7:0)" />
            <blockpin signalname="B(7:0)" name="B(7:0)" />
            <blockpin signalname="Q(7:0)" name="S(7:0)" />
        </block>
        <block symbolname="ExOr" name="XLXI_9">
            <blockpin signalname="A(7:0)" name="A(7:0)" />
            <blockpin signalname="B(7:0)" name="B(7:0)" />
            <blockpin signalname="E(7:0)" name="S(7:0)" />
        </block>
        <block symbolname="SHIFTBIT" name="XLXI_10">
            <blockpin signalname="A(7:0)" name="INPUT(7:0)" />
            <blockpin signalname="R(7:0)" name="OUTPUT(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="B(7:0)">
            <wire x2="1280" y1="928" y2="928" x1="1040" />
            <wire x2="1520" y1="928" y2="928" x1="1280" />
            <wire x2="1280" y1="928" y2="1152" x1="1280" />
            <wire x2="1520" y1="1152" y2="1152" x1="1280" />
            <wire x2="1280" y1="1152" y2="1392" x1="1280" />
            <wire x2="1520" y1="1392" y2="1392" x1="1280" />
        </branch>
        <branch name="A(7:0)">
            <wire x2="1200" y1="864" y2="864" x1="1040" />
            <wire x2="1520" y1="864" y2="864" x1="1200" />
            <wire x2="1200" y1="864" y2="1088" x1="1200" />
            <wire x2="1200" y1="1088" y2="1328" x1="1200" />
            <wire x2="1200" y1="1328" y2="1584" x1="1200" />
            <wire x2="1520" y1="1584" y2="1584" x1="1200" />
            <wire x2="1520" y1="1328" y2="1328" x1="1200" />
            <wire x2="1520" y1="1088" y2="1088" x1="1200" />
        </branch>
        <instance x="1520" y="1184" name="XLXI_7" orien="R0">
        </instance>
        <instance x="1520" y="960" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1520" y="1424" name="XLXI_9" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1040" y="864" name="A(7:0)" orien="R180" />
        <iomarker fontsize="28" x="1040" y="928" name="B(7:0)" orien="R180" />
        <branch name="Q(7:0)">
            <wire x2="2144" y1="864" y2="864" x1="1904" />
        </branch>
        <branch name="W(7:0)">
            <wire x2="2144" y1="1088" y2="1088" x1="1904" />
        </branch>
        <branch name="E(7:0)">
            <wire x2="2144" y1="1328" y2="1328" x1="1904" />
        </branch>
        <instance x="1520" y="1616" name="XLXI_10" orien="R0">
        </instance>
        <branch name="R(7:0)">
            <wire x2="2144" y1="1584" y2="1584" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="2144" y="1584" name="R(7:0)" orien="R0" />
        <iomarker fontsize="28" x="2144" y="1328" name="E(7:0)" orien="R0" />
        <iomarker fontsize="28" x="2144" y="1088" name="W(7:0)" orien="R0" />
        <iomarker fontsize="28" x="2144" y="864" name="Q(7:0)" orien="R0" />
    </sheet>
</drawing>