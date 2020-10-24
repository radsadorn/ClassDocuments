<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="A0" />
        <signal name="A1" />
        <signal name="A2" />
        <signal name="A3" />
        <signal name="B0" />
        <signal name="B1" />
        <signal name="B2" />
        <signal name="B3" />
        <signal name="C0" />
        <signal name="C1" />
        <signal name="C2" />
        <signal name="C3" />
        <signal name="D0" />
        <signal name="D1" />
        <signal name="D2" />
        <signal name="D3" />
        <signal name="CLR" />
        <signal name="CLK" />
        <port polarity="Output" name="A0" />
        <port polarity="Output" name="A1" />
        <port polarity="Output" name="A2" />
        <port polarity="Output" name="A3" />
        <port polarity="Output" name="B0" />
        <port polarity="Output" name="B1" />
        <port polarity="Output" name="B2" />
        <port polarity="Output" name="B3" />
        <port polarity="Output" name="C0" />
        <port polarity="Output" name="C1" />
        <port polarity="Output" name="C2" />
        <port polarity="Output" name="C3" />
        <port polarity="Output" name="D0" />
        <port polarity="Output" name="D1" />
        <port polarity="Output" name="D2" />
        <port polarity="Output" name="D3" />
        <port polarity="Input" name="CLR" />
        <port polarity="Input" name="CLK" />
        <blockdef name="SEC_COUNTER">
            <timestamp>2020-10-23T16:58:17</timestamp>
            <rect width="256" x="64" y="-576" height="576" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
        </blockdef>
        <blockdef name="MIN_COUNTER">
            <timestamp>2020-10-23T16:59:32</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="SEC_COUNTER" name="XLXI_1">
            <blockpin signalname="A0" name="A0" />
            <blockpin signalname="A1" name="A1" />
            <blockpin signalname="A2" name="A2" />
            <blockpin signalname="A3" name="A3" />
            <blockpin signalname="B0" name="B0" />
            <blockpin signalname="B1" name="B1" />
            <blockpin signalname="B2" name="B2" />
            <blockpin signalname="B3" name="B3" />
            <blockpin signalname="XLXN_1" name="CEO" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="CLR" name="CLR" />
        </block>
        <block symbolname="MIN_COUNTER" name="XLXI_2">
            <blockpin signalname="C0" name="C0" />
            <blockpin signalname="C1" name="C1" />
            <blockpin signalname="C2" name="C2" />
            <blockpin signalname="C3" name="C3" />
            <blockpin signalname="XLXN_1" name="CLK" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="D0" name="D0" />
            <blockpin signalname="D1" name="D1" />
            <blockpin signalname="D2" name="D2" />
            <blockpin signalname="D3" name="D3" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <iomarker fontsize="28" x="832" y="1344" name="CLR" orien="R180" />
        <branch name="A0">
            <wire x2="1888" y1="432" y2="432" x1="1520" />
        </branch>
        <branch name="A1">
            <wire x2="1888" y1="496" y2="496" x1="1520" />
        </branch>
        <branch name="A2">
            <wire x2="1888" y1="560" y2="560" x1="1520" />
        </branch>
        <branch name="A3">
            <wire x2="1904" y1="624" y2="624" x1="1520" />
        </branch>
        <branch name="B0">
            <wire x2="1888" y1="688" y2="688" x1="1520" />
        </branch>
        <branch name="B1">
            <wire x2="1888" y1="752" y2="752" x1="1520" />
        </branch>
        <branch name="B2">
            <wire x2="1888" y1="816" y2="816" x1="1520" />
        </branch>
        <branch name="B3">
            <wire x2="1888" y1="880" y2="880" x1="1520" />
        </branch>
        <branch name="C0">
            <wire x2="2528" y1="1280" y2="1280" x1="2096" />
        </branch>
        <branch name="C1">
            <wire x2="2528" y1="1344" y2="1344" x1="2096" />
        </branch>
        <branch name="C2">
            <wire x2="2528" y1="1408" y2="1408" x1="2096" />
        </branch>
        <branch name="C3">
            <wire x2="2528" y1="1472" y2="1472" x1="2096" />
        </branch>
        <branch name="D0">
            <wire x2="2528" y1="1536" y2="1536" x1="2096" />
        </branch>
        <branch name="D1">
            <wire x2="2528" y1="1600" y2="1600" x1="2096" />
        </branch>
        <branch name="D2">
            <wire x2="2528" y1="1664" y2="1664" x1="2096" />
        </branch>
        <branch name="D3">
            <wire x2="2528" y1="1728" y2="1728" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="1888" y="432" name="A0" orien="R0" />
        <iomarker fontsize="28" x="1888" y="496" name="A1" orien="R0" />
        <iomarker fontsize="28" x="1888" y="560" name="A2" orien="R0" />
        <iomarker fontsize="28" x="1904" y="624" name="A3" orien="R0" />
        <iomarker fontsize="28" x="1888" y="688" name="B0" orien="R0" />
        <iomarker fontsize="28" x="1888" y="752" name="B1" orien="R0" />
        <iomarker fontsize="28" x="1888" y="816" name="B2" orien="R0" />
        <iomarker fontsize="28" x="1888" y="880" name="B3" orien="R0" />
        <iomarker fontsize="28" x="2528" y="1280" name="C0" orien="R0" />
        <iomarker fontsize="28" x="2528" y="1344" name="C1" orien="R0" />
        <iomarker fontsize="28" x="2528" y="1408" name="C2" orien="R0" />
        <iomarker fontsize="28" x="2528" y="1472" name="C3" orien="R0" />
        <iomarker fontsize="28" x="2528" y="1600" name="D1" orien="R0" />
        <iomarker fontsize="28" x="2528" y="1536" name="D0" orien="R0" />
        <iomarker fontsize="28" x="2528" y="1664" name="D2" orien="R0" />
        <iomarker fontsize="28" x="2528" y="1728" name="D3" orien="R0" />
        <branch name="CLR">
            <wire x2="992" y1="1344" y2="1344" x1="832" />
            <wire x2="1712" y1="1344" y2="1344" x1="992" />
            <wire x2="1136" y1="496" y2="496" x1="992" />
            <wire x2="992" y1="496" y2="1344" x1="992" />
        </branch>
        <branch name="CLK">
            <wire x2="1136" y1="432" y2="432" x1="816" />
        </branch>
        <iomarker fontsize="28" x="816" y="432" name="CLK" orien="R180" />
        <instance x="1136" y="976" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1712" y1="944" y2="944" x1="1520" />
            <wire x2="1712" y1="944" y2="1280" x1="1712" />
        </branch>
        <instance x="1712" y="1760" name="XLXI_2" orien="R0">
        </instance>
    </sheet>
</drawing>