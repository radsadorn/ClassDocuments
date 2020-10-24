<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="BIT_0" />
        <signal name="BIT_1" />
        <signal name="BIT_2" />
        <signal name="BIT_3" />
        <signal name="a" />
        <signal name="c" />
        <signal name="d" />
        <signal name="e" />
        <signal name="f" />
        <signal name="g" />
        <signal name="b" />
        <port polarity="Input" name="BIT_0" />
        <port polarity="Input" name="BIT_1" />
        <port polarity="Input" name="BIT_2" />
        <port polarity="Input" name="BIT_3" />
        <port polarity="Output" name="a" />
        <port polarity="Output" name="c" />
        <port polarity="Output" name="d" />
        <port polarity="Output" name="e" />
        <port polarity="Output" name="f" />
        <port polarity="Output" name="g" />
        <port polarity="Output" name="b" />
        <blockdef name="SEG_A">
            <timestamp>2020-10-17T15:24:23</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="SEG_B">
            <timestamp>2020-10-17T15:27:56</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="SEG_C">
            <timestamp>2020-10-17T15:34:26</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="SEG_D">
            <timestamp>2020-10-17T15:48:0</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="SEG_E">
            <timestamp>2020-10-17T15:49:45</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="SEG_F">
            <timestamp>2020-10-17T15:51:16</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="SEG_G">
            <timestamp>2020-10-17T15:53:17</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <block symbolname="SEG_A" name="XLXI_1">
            <blockpin signalname="BIT_0" name="BIT_0" />
            <blockpin signalname="BIT_1" name="BIT_1" />
            <blockpin signalname="BIT_2" name="BIT_2" />
            <blockpin signalname="BIT_3" name="BIT_3" />
            <blockpin signalname="a" name="a" />
        </block>
        <block symbolname="SEG_B" name="XLXI_2">
            <blockpin signalname="BIT_0" name="BIT_0" />
            <blockpin signalname="BIT_1" name="BIT_1" />
            <blockpin signalname="BIT_2" name="BIT_2" />
            <blockpin signalname="b" name="b" />
        </block>
        <block symbolname="SEG_E" name="XLXI_5">
            <blockpin signalname="BIT_0" name="BIT_0" />
            <blockpin signalname="BIT_1" name="BIT_1" />
            <blockpin signalname="BIT_2" name="BIT_2" />
            <blockpin signalname="e" name="e" />
        </block>
        <block symbolname="SEG_F" name="XLXI_6">
            <blockpin signalname="BIT_0" name="BIT_0" />
            <blockpin signalname="BIT_1" name="BIT_1" />
            <blockpin signalname="BIT_2" name="BIT_2" />
            <blockpin signalname="BIT_3" name="BIT_3" />
            <blockpin signalname="f" name="f" />
        </block>
        <block symbolname="SEG_G" name="XLXI_7">
            <blockpin signalname="BIT_0" name="BIT_0" />
            <blockpin signalname="BIT_1" name="BIT_1" />
            <blockpin signalname="BIT_2" name="BIT_2" />
            <blockpin signalname="BIT_3" name="BIT_3" />
            <blockpin signalname="g" name="g" />
        </block>
        <block symbolname="SEG_C" name="XLXI_10">
            <blockpin signalname="BIT_0" name="BIT_0" />
            <blockpin signalname="BIT_2" name="BIT_2" />
            <blockpin signalname="BIT_1" name="BIT_1" />
            <blockpin signalname="c" name="c" />
        </block>
        <block symbolname="SEG_D" name="XLXI_11">
            <blockpin signalname="BIT_3" name="BIT_3" />
            <blockpin signalname="BIT_0" name="BIT_0" />
            <blockpin signalname="BIT_1" name="BIT_1" />
            <blockpin signalname="BIT_2" name="BIT_2" />
            <blockpin signalname="d" name="d" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1312" y="496" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1312" y="800" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1312" y="2112" name="XLXI_6" orien="R0">
        </instance>
        <instance x="1312" y="2480" name="XLXI_7" orien="R0">
        </instance>
        <branch name="BIT_0">
            <wire x2="1248" y1="272" y2="272" x1="960" />
            <wire x2="1312" y1="272" y2="272" x1="1248" />
            <wire x2="1248" y1="272" y2="640" x1="1248" />
            <wire x2="1312" y1="640" y2="640" x1="1248" />
            <wire x2="1248" y1="640" y2="928" x1="1248" />
            <wire x2="1312" y1="928" y2="928" x1="1248" />
            <wire x2="1248" y1="928" y2="1232" x1="1248" />
            <wire x2="1312" y1="1232" y2="1232" x1="1248" />
            <wire x2="1248" y1="1232" y2="1600" x1="1248" />
            <wire x2="1312" y1="1600" y2="1600" x1="1248" />
            <wire x2="1248" y1="1600" y2="1888" x1="1248" />
            <wire x2="1312" y1="1888" y2="1888" x1="1248" />
            <wire x2="1248" y1="1888" y2="2256" x1="1248" />
            <wire x2="1312" y1="2256" y2="2256" x1="1248" />
        </branch>
        <branch name="BIT_1">
            <wire x2="1184" y1="336" y2="336" x1="960" />
            <wire x2="1312" y1="336" y2="336" x1="1184" />
            <wire x2="1184" y1="336" y2="704" x1="1184" />
            <wire x2="1312" y1="704" y2="704" x1="1184" />
            <wire x2="1184" y1="704" y2="992" x1="1184" />
            <wire x2="1312" y1="992" y2="992" x1="1184" />
            <wire x2="1184" y1="992" y2="1296" x1="1184" />
            <wire x2="1184" y1="1296" y2="1664" x1="1184" />
            <wire x2="1312" y1="1664" y2="1664" x1="1184" />
            <wire x2="1184" y1="1664" y2="1952" x1="1184" />
            <wire x2="1312" y1="1952" y2="1952" x1="1184" />
            <wire x2="1184" y1="1952" y2="2320" x1="1184" />
            <wire x2="1312" y1="2320" y2="2320" x1="1184" />
            <wire x2="1312" y1="1296" y2="1296" x1="1184" />
        </branch>
        <branch name="BIT_2">
            <wire x2="1104" y1="400" y2="400" x1="960" />
            <wire x2="1312" y1="400" y2="400" x1="1104" />
            <wire x2="1104" y1="400" y2="768" x1="1104" />
            <wire x2="1312" y1="768" y2="768" x1="1104" />
            <wire x2="1104" y1="768" y2="1056" x1="1104" />
            <wire x2="1312" y1="1056" y2="1056" x1="1104" />
            <wire x2="1104" y1="1056" y2="1360" x1="1104" />
            <wire x2="1104" y1="1360" y2="1728" x1="1104" />
            <wire x2="1312" y1="1728" y2="1728" x1="1104" />
            <wire x2="1104" y1="1728" y2="2016" x1="1104" />
            <wire x2="1312" y1="2016" y2="2016" x1="1104" />
            <wire x2="1104" y1="2016" y2="2384" x1="1104" />
            <wire x2="1312" y1="2384" y2="2384" x1="1104" />
            <wire x2="1312" y1="1360" y2="1360" x1="1104" />
        </branch>
        <branch name="BIT_3">
            <wire x2="1040" y1="464" y2="464" x1="960" />
            <wire x2="1312" y1="464" y2="464" x1="1040" />
            <wire x2="1040" y1="464" y2="1424" x1="1040" />
            <wire x2="1040" y1="1424" y2="2080" x1="1040" />
            <wire x2="1312" y1="2080" y2="2080" x1="1040" />
            <wire x2="1040" y1="2080" y2="2448" x1="1040" />
            <wire x2="1312" y1="2448" y2="2448" x1="1040" />
            <wire x2="1312" y1="1424" y2="1424" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="960" y="272" name="BIT_0" orien="R180" />
        <iomarker fontsize="28" x="960" y="336" name="BIT_1" orien="R180" />
        <iomarker fontsize="28" x="960" y="400" name="BIT_2" orien="R180" />
        <iomarker fontsize="28" x="960" y="464" name="BIT_3" orien="R180" />
        <branch name="a">
            <wire x2="1728" y1="272" y2="272" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="1728" y="272" name="a" orien="R0" />
        <branch name="c">
            <wire x2="1728" y1="928" y2="928" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="1728" y="928" name="c" orien="R0" />
        <branch name="d">
            <wire x2="1728" y1="1232" y2="1232" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="1728" y="1232" name="d" orien="R0" />
        <branch name="e">
            <wire x2="1712" y1="1600" y2="1600" x1="1696" />
            <wire x2="1728" y1="1600" y2="1600" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="1728" y="1600" name="e" orien="R0" />
        <branch name="f">
            <wire x2="1728" y1="1888" y2="1888" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="1728" y="1888" name="f" orien="R0" />
        <branch name="g">
            <wire x2="1728" y1="2256" y2="2256" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="1728" y="2256" name="g" orien="R0" />
        <branch name="b">
            <wire x2="1728" y1="640" y2="640" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="1728" y="640" name="b" orien="R0" />
        <instance x="1312" y="1760" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1312" y="1088" name="XLXI_10" orien="R0">
        </instance>
        <instance x="1312" y="1456" name="XLXI_11" orien="R0">
        </instance>
    </sheet>
</drawing>