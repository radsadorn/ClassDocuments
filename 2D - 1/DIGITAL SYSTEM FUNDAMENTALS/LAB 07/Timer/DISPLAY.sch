<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="a" />
        <signal name="b" />
        <signal name="c" />
        <signal name="d" />
        <signal name="e" />
        <signal name="f" />
        <signal name="g" />
        <signal name="DOT" />
        <signal name="common_3" />
        <signal name="common_1" />
        <signal name="common_0" />
        <signal name="common_2" />
        <signal name="XLXN_114" />
        <signal name="D3" />
        <signal name="D2" />
        <signal name="D1" />
        <signal name="D0" />
        <signal name="C3" />
        <signal name="C2" />
        <signal name="C1" />
        <signal name="C0" />
        <signal name="B3" />
        <signal name="B2" />
        <signal name="B1" />
        <signal name="B0" />
        <signal name="A3" />
        <signal name="A2" />
        <signal name="A1" />
        <signal name="A0" />
        <signal name="XLXN_142" />
        <signal name="XLXN_144" />
        <signal name="XLXN_151" />
        <signal name="XLXN_152" />
        <signal name="XLXN_153" />
        <signal name="CLK_DOT" />
        <signal name="CLK_DISPLAY" />
        <port polarity="Output" name="a" />
        <port polarity="Output" name="b" />
        <port polarity="Output" name="c" />
        <port polarity="Output" name="d" />
        <port polarity="Output" name="e" />
        <port polarity="Output" name="f" />
        <port polarity="Output" name="g" />
        <port polarity="Output" name="DOT" />
        <port polarity="Output" name="common_3" />
        <port polarity="Output" name="common_1" />
        <port polarity="Output" name="common_0" />
        <port polarity="Output" name="common_2" />
        <port polarity="Input" name="D3" />
        <port polarity="Input" name="D2" />
        <port polarity="Input" name="D1" />
        <port polarity="Input" name="D0" />
        <port polarity="Input" name="C3" />
        <port polarity="Input" name="C2" />
        <port polarity="Input" name="C1" />
        <port polarity="Input" name="C0" />
        <port polarity="Input" name="B3" />
        <port polarity="Input" name="B2" />
        <port polarity="Input" name="B1" />
        <port polarity="Input" name="B0" />
        <port polarity="Input" name="A3" />
        <port polarity="Input" name="A2" />
        <port polarity="Input" name="A1" />
        <port polarity="Input" name="A0" />
        <port polarity="Input" name="CLK_DOT" />
        <port polarity="Input" name="CLK_DISPLAY" />
        <blockdef name="MULTIPLEXER_4Bits">
            <timestamp>2020-10-23T13:30:25</timestamp>
            <rect width="256" x="64" y="-1152" height="1152" />
            <line x2="0" y1="-1120" y2="-1120" x1="64" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-1056" y2="-1056" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-992" y2="-992" x1="64" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-928" y2="-928" x1="64" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-1120" y2="-1120" x1="320" />
            <line x2="384" y1="-1056" y2="-1056" x1="320" />
            <line x2="384" y1="-992" y2="-992" x1="320" />
            <line x2="384" y1="-928" y2="-928" x1="320" />
        </blockdef>
        <blockdef name="DOT_DISPLAY">
            <timestamp>2020-10-23T18:37:5</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="BCD2SEG">
            <timestamp>2020-10-23T13:26:7</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="COUNTER_4">
            <timestamp>2020-10-23T13:25:47</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="COMMONS_SELECTOR">
            <timestamp>2020-10-23T13:25:25</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="BCD2SEG" name="XLXI_9">
            <blockpin signalname="a" name="a" />
            <blockpin signalname="b" name="b" />
            <blockpin signalname="XLXN_114" name="BIT_0" />
            <blockpin signalname="XLXN_151" name="BIT_1" />
            <blockpin signalname="XLXN_152" name="BIT_2" />
            <blockpin signalname="XLXN_153" name="BIT_3" />
            <blockpin signalname="c" name="c" />
            <blockpin signalname="d" name="d" />
            <blockpin signalname="e" name="e" />
            <blockpin signalname="f" name="f" />
            <blockpin signalname="g" name="g" />
        </block>
        <block symbolname="COUNTER_4" name="XLXI_13">
            <blockpin signalname="XLXN_142" name="BIT_0" />
            <blockpin signalname="XLXN_144" name="BIT_1" />
            <blockpin signalname="CLK_DISPLAY" name="CLK" />
        </block>
        <block symbolname="COMMONS_SELECTOR" name="XLXI_14">
            <blockpin signalname="XLXN_142" name="S_0" />
            <blockpin signalname="XLXN_144" name="S_1" />
            <blockpin signalname="common_0" name="common_0" />
            <blockpin signalname="common_1" name="common_1" />
            <blockpin signalname="common_2" name="common_2" />
            <blockpin signalname="common_3" name="common_3" />
        </block>
        <block symbolname="MULTIPLEXER_4Bits" name="XLXI_12">
            <blockpin signalname="A0" name="A0" />
            <blockpin signalname="B0" name="B0" />
            <blockpin signalname="C0" name="C0" />
            <blockpin signalname="D0" name="D0" />
            <blockpin signalname="A1" name="A1" />
            <blockpin signalname="B1" name="B1" />
            <blockpin signalname="C1" name="C1" />
            <blockpin signalname="D1" name="D1" />
            <blockpin signalname="A2" name="A2" />
            <blockpin signalname="B2" name="B2" />
            <blockpin signalname="C2" name="C2" />
            <blockpin signalname="D2" name="D2" />
            <blockpin signalname="A3" name="A3" />
            <blockpin signalname="B3" name="B3" />
            <blockpin signalname="C3" name="C3" />
            <blockpin signalname="D3" name="D3" />
            <blockpin signalname="XLXN_142" name="S_0" />
            <blockpin signalname="XLXN_144" name="S_1" />
            <blockpin signalname="XLXN_114" name="OUT_0" />
            <blockpin signalname="XLXN_151" name="OUT_1" />
            <blockpin signalname="XLXN_152" name="OUT_2" />
            <blockpin signalname="XLXN_153" name="OUT_3" />
        </block>
        <block symbolname="DOT_DISPLAY" name="XLXI_17">
            <blockpin signalname="CLK_DOT" name="CLK" />
            <blockpin signalname="DOT" name="DOT" />
            <blockpin signalname="common_2" name="STATE" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2128" y="672" name="XLXI_9" orien="R0">
        </instance>
        <branch name="a">
            <wire x2="2544" y1="256" y2="256" x1="2512" />
        </branch>
        <branch name="b">
            <wire x2="2544" y1="320" y2="320" x1="2512" />
        </branch>
        <branch name="c">
            <wire x2="2544" y1="384" y2="384" x1="2512" />
        </branch>
        <branch name="d">
            <wire x2="2544" y1="448" y2="448" x1="2512" />
        </branch>
        <branch name="e">
            <wire x2="2544" y1="512" y2="512" x1="2512" />
        </branch>
        <branch name="f">
            <wire x2="2544" y1="576" y2="576" x1="2512" />
        </branch>
        <branch name="g">
            <wire x2="2544" y1="640" y2="640" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2544" y="256" name="a" orien="R0" />
        <iomarker fontsize="28" x="2544" y="320" name="b" orien="R0" />
        <iomarker fontsize="28" x="2544" y="384" name="c" orien="R0" />
        <iomarker fontsize="28" x="2544" y="448" name="d" orien="R0" />
        <iomarker fontsize="28" x="2544" y="512" name="e" orien="R0" />
        <iomarker fontsize="28" x="2544" y="576" name="f" orien="R0" />
        <iomarker fontsize="28" x="2544" y="640" name="g" orien="R0" />
        <branch name="DOT">
            <wire x2="2528" y1="1200" y2="1200" x1="2512" />
            <wire x2="2976" y1="1200" y2="1200" x1="2528" />
        </branch>
        <branch name="common_3">
            <wire x2="2784" y1="1856" y2="1856" x1="1600" />
        </branch>
        <branch name="common_1">
            <wire x2="2784" y1="1728" y2="1728" x1="1600" />
        </branch>
        <branch name="common_0">
            <wire x2="2784" y1="1664" y2="1664" x1="1600" />
        </branch>
        <branch name="common_2">
            <wire x2="2064" y1="1792" y2="1792" x1="1600" />
            <wire x2="2784" y1="1792" y2="1792" x1="2064" />
            <wire x2="2128" y1="1200" y2="1200" x1="2064" />
            <wire x2="2064" y1="1200" y2="1792" x1="2064" />
        </branch>
        <branch name="XLXN_114">
            <wire x2="2128" y1="256" y2="256" x1="1600" />
        </branch>
        <branch name="D3">
            <wire x2="1216" y1="1216" y2="1216" x1="1008" />
        </branch>
        <branch name="D2">
            <wire x2="1216" y1="1152" y2="1152" x1="1008" />
        </branch>
        <branch name="D1">
            <wire x2="1216" y1="1088" y2="1088" x1="1008" />
        </branch>
        <branch name="D0">
            <wire x2="1216" y1="1024" y2="1024" x1="1008" />
        </branch>
        <branch name="C3">
            <wire x2="1216" y1="960" y2="960" x1="1008" />
        </branch>
        <branch name="C2">
            <wire x2="1216" y1="896" y2="896" x1="1008" />
        </branch>
        <branch name="C1">
            <wire x2="1216" y1="832" y2="832" x1="1008" />
        </branch>
        <branch name="C0">
            <wire x2="1216" y1="768" y2="768" x1="1008" />
        </branch>
        <branch name="B3">
            <wire x2="1216" y1="704" y2="704" x1="1008" />
        </branch>
        <branch name="B2">
            <wire x2="1216" y1="640" y2="640" x1="1008" />
        </branch>
        <branch name="B1">
            <wire x2="1216" y1="576" y2="576" x1="1008" />
        </branch>
        <branch name="B0">
            <wire x2="1216" y1="512" y2="512" x1="1008" />
        </branch>
        <branch name="A3">
            <wire x2="1216" y1="448" y2="448" x1="1008" />
        </branch>
        <branch name="A2">
            <wire x2="1216" y1="384" y2="384" x1="1008" />
        </branch>
        <branch name="A1">
            <wire x2="1216" y1="320" y2="320" x1="1008" />
        </branch>
        <branch name="A0">
            <wire x2="1216" y1="256" y2="256" x1="1008" />
        </branch>
        <instance x="1216" y="1376" name="XLXI_12" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1008" y="448" name="A3" orien="R180" />
        <iomarker fontsize="28" x="1008" y="832" name="C1" orien="R180" />
        <iomarker fontsize="28" x="1008" y="960" name="C3" orien="R180" />
        <iomarker fontsize="28" x="1008" y="1024" name="D0" orien="R180" />
        <iomarker fontsize="28" x="1008" y="1088" name="D1" orien="R180" />
        <iomarker fontsize="28" x="1008" y="1152" name="D2" orien="R180" />
        <iomarker fontsize="28" x="1008" y="1216" name="D3" orien="R180" />
        <iomarker fontsize="28" x="1008" y="256" name="A0" orien="R180" />
        <iomarker fontsize="28" x="1008" y="320" name="A1" orien="R180" />
        <iomarker fontsize="28" x="1008" y="384" name="A2" orien="R180" />
        <iomarker fontsize="28" x="1008" y="512" name="B0" orien="R180" />
        <iomarker fontsize="28" x="1008" y="576" name="B1" orien="R180" />
        <iomarker fontsize="28" x="1008" y="640" name="B2" orien="R180" />
        <iomarker fontsize="28" x="1008" y="704" name="B3" orien="R180" />
        <iomarker fontsize="28" x="1008" y="768" name="C0" orien="R180" />
        <iomarker fontsize="28" x="1008" y="896" name="C2" orien="R180" />
        <instance x="1216" y="1888" name="XLXI_14" orien="R0">
        </instance>
        <branch name="XLXN_142">
            <wire x2="1216" y1="1280" y2="1280" x1="736" />
            <wire x2="736" y1="1280" y2="1664" x1="736" />
            <wire x2="1216" y1="1664" y2="1664" x1="736" />
        </branch>
        <branch name="XLXN_144">
            <wire x2="944" y1="1728" y2="1728" x1="736" />
            <wire x2="1216" y1="1728" y2="1728" x1="944" />
            <wire x2="1216" y1="1344" y2="1344" x1="944" />
            <wire x2="944" y1="1344" y2="1728" x1="944" />
        </branch>
        <iomarker fontsize="28" x="2784" y="1856" name="common_3" orien="R0" />
        <iomarker fontsize="28" x="2784" y="1792" name="common_2" orien="R0" />
        <iomarker fontsize="28" x="2784" y="1728" name="common_1" orien="R0" />
        <iomarker fontsize="28" x="2784" y="1664" name="common_0" orien="R0" />
        <branch name="XLXN_151">
            <wire x2="2128" y1="320" y2="320" x1="1600" />
        </branch>
        <branch name="XLXN_152">
            <wire x2="2128" y1="384" y2="384" x1="1600" />
        </branch>
        <branch name="XLXN_153">
            <wire x2="2128" y1="448" y2="448" x1="1600" />
        </branch>
        <instance x="2128" y="1296" name="XLXI_17" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2976" y="1200" name="DOT" orien="R0" />
        <instance x="352" y="1760" name="XLXI_13" orien="R0">
        </instance>
        <branch name="CLK_DOT">
            <wire x2="2128" y1="1264" y2="1264" x1="1984" />
        </branch>
        <branch name="CLK_DISPLAY">
            <wire x2="352" y1="1664" y2="1664" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="1664" name="CLK_DISPLAY" orien="R180" />
        <iomarker fontsize="28" x="1984" y="1264" name="CLK_DOT" orien="R180" />
    </sheet>
</drawing>