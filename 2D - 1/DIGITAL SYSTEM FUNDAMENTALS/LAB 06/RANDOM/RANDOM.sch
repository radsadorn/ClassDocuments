<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_20" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="common1" />
        <signal name="XLXN_37" />
        <signal name="Buzzer" />
        <signal name="XLXN_61" />
        <signal name="common0" />
        <signal name="PB1" />
        <signal name="OSC" />
        <signal name="common2" />
        <signal name="common3" />
        <signal name="XLXN_101" />
        <signal name="XLXN_6" />
        <signal name="XLXN_5" />
        <signal name="XLXN_4" />
        <signal name="XLXN_3" />
        <signal name="a" />
        <signal name="b" />
        <signal name="c" />
        <signal name="d" />
        <signal name="e" />
        <signal name="f" />
        <signal name="g" />
        <signal name="XLXN_116" />
        <signal name="XLXN_120" />
        <signal name="XLXN_121" />
        <signal name="XLXN_122" />
        <signal name="CLR" />
        <port polarity="Output" name="common1" />
        <port polarity="Output" name="Buzzer" />
        <port polarity="Output" name="common0" />
        <port polarity="Input" name="PB1" />
        <port polarity="Input" name="OSC" />
        <port polarity="Output" name="common2" />
        <port polarity="Output" name="common3" />
        <port polarity="Output" name="a" />
        <port polarity="Output" name="b" />
        <port polarity="Output" name="c" />
        <port polarity="Output" name="d" />
        <port polarity="Output" name="e" />
        <port polarity="Output" name="f" />
        <port polarity="Output" name="g" />
        <port polarity="Input" name="CLR" />
        <blockdef name="BCD2SEG">
            <timestamp>2020-10-17T16:36:24</timestamp>
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="comp4">
            <timestamp>2020-10-16T15:59:39</timestamp>
            <rect width="256" x="64" y="-640" height="576" />
            <line x2="320" y1="-352" y2="-352" x1="384" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-576" y2="-576" x1="0" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="Counter">
            <timestamp>2020-10-17T15:57:50</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
        </blockdef>
        <blockdef name="divide2_16">
            <timestamp>2020-10-17T16:30:5</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Multiplexer">
            <timestamp>2020-10-17T15:8:22</timestamp>
            <rect width="256" x="64" y="-576" height="576" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
        </blockdef>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="common0" name="I" />
            <blockpin signalname="common1" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_11">
            <blockpin signalname="XLXN_37" name="I0" />
            <blockpin signalname="XLXN_61" name="I1" />
            <blockpin signalname="Buzzer" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_12">
            <blockpin signalname="PB1" name="I" />
            <blockpin signalname="XLXN_37" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_20">
            <blockpin signalname="PB1" name="I0" />
            <blockpin signalname="common0" name="I1" />
            <blockpin signalname="XLXN_101" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_14">
            <blockpin signalname="common2" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_16">
            <blockpin signalname="common3" name="P" />
        </block>
        <block symbolname="Counter" name="XLXI_27">
            <blockpin signalname="XLXN_101" name="C" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="XLXN_20" name="A0" />
            <blockpin signalname="XLXN_24" name="A1" />
            <blockpin signalname="XLXN_25" name="A2" />
            <blockpin signalname="XLXN_26" name="A3" />
            <blockpin signalname="XLXN_27" name="B0" />
            <blockpin signalname="XLXN_28" name="B1" />
            <blockpin signalname="XLXN_29" name="B2" />
            <blockpin signalname="XLXN_30" name="B3" />
        </block>
        <block symbolname="comp4" name="XLXI_28">
            <blockpin signalname="XLXN_20" name="A0" />
            <blockpin signalname="XLXN_24" name="A1" />
            <blockpin signalname="XLXN_25" name="A2" />
            <blockpin signalname="XLXN_26" name="A3" />
            <blockpin signalname="XLXN_27" name="B0" />
            <blockpin signalname="XLXN_28" name="B1" />
            <blockpin signalname="XLXN_29" name="B2" />
            <blockpin signalname="XLXN_30" name="B3" />
            <blockpin signalname="XLXN_61" name="EQ" />
        </block>
        <block symbolname="Multiplexer" name="XLXI_32">
            <blockpin signalname="common0" name="CLK" />
            <blockpin signalname="XLXN_30" name="B3" />
            <blockpin signalname="XLXN_26" name="A3" />
            <blockpin signalname="XLXN_29" name="B2" />
            <blockpin signalname="XLXN_25" name="A2" />
            <blockpin signalname="XLXN_28" name="B1" />
            <blockpin signalname="XLXN_24" name="A1" />
            <blockpin signalname="XLXN_20" name="A0" />
            <blockpin signalname="XLXN_27" name="B0" />
            <blockpin signalname="XLXN_3" name="BIT_0" />
            <blockpin signalname="XLXN_120" name="BIT_1" />
            <blockpin signalname="XLXN_121" name="BIT_2" />
            <blockpin signalname="XLXN_122" name="BIT_3" />
        </block>
        <block symbolname="BCD2SEG" name="XLXI_7">
            <blockpin signalname="XLXN_3" name="BIT_0" />
            <blockpin signalname="XLXN_120" name="BIT_1" />
            <blockpin signalname="XLXN_121" name="BIT_2" />
            <blockpin signalname="XLXN_122" name="BIT_3" />
            <blockpin signalname="a" name="a" />
            <blockpin signalname="c" name="c" />
            <blockpin signalname="d" name="d" />
            <blockpin signalname="e" name="e" />
            <blockpin signalname="f" name="f" />
            <blockpin signalname="g" name="g" />
            <blockpin signalname="b" name="b" />
        </block>
        <block symbolname="divide2_16" name="XLXI_34">
            <blockpin signalname="OSC" name="CLK_IN" />
            <blockpin signalname="common0" name="CLK_OUT" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2768" y="1472" name="XLXI_10" orien="R0" />
        <branch name="common1">
            <wire x2="3024" y1="1440" y2="1440" x1="2992" />
        </branch>
        <iomarker fontsize="28" x="3024" y="1440" name="common1" orien="R0" />
        <instance x="2560" y="2496" name="XLXI_11" orien="R0" />
        <branch name="XLXN_37">
            <wire x2="2560" y1="2432" y2="2432" x1="2304" />
        </branch>
        <branch name="Buzzer">
            <wire x2="2944" y1="2400" y2="2400" x1="2816" />
        </branch>
        <iomarker fontsize="28" x="2944" y="2400" name="Buzzer" orien="R0" />
        <branch name="XLXN_61">
            <wire x2="2448" y1="1696" y2="1696" x1="2352" />
            <wire x2="2448" y1="1696" y2="2368" x1="2448" />
            <wire x2="2560" y1="2368" y2="2368" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="3008" y="1312" name="common0" orien="R0" />
        <branch name="XLXN_30">
            <wire x2="1648" y1="1088" y2="1088" x1="1408" />
            <wire x2="1648" y1="1088" y2="1920" x1="1648" />
            <wire x2="1968" y1="1920" y2="1920" x1="1648" />
            <wire x2="2144" y1="1088" y2="1088" x1="1648" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="1616" y1="1024" y2="1024" x1="1408" />
            <wire x2="1616" y1="1024" y2="1856" x1="1616" />
            <wire x2="1968" y1="1856" y2="1856" x1="1616" />
            <wire x2="2144" y1="1024" y2="1024" x1="1616" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="1584" y1="960" y2="960" x1="1408" />
            <wire x2="1584" y1="960" y2="1792" x1="1584" />
            <wire x2="1968" y1="1792" y2="1792" x1="1584" />
            <wire x2="2144" y1="960" y2="960" x1="1584" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="1552" y1="896" y2="896" x1="1408" />
            <wire x2="1552" y1="896" y2="1728" x1="1552" />
            <wire x2="1968" y1="1728" y2="1728" x1="1552" />
            <wire x2="2144" y1="896" y2="896" x1="1552" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="1520" y1="832" y2="832" x1="1408" />
            <wire x2="1520" y1="832" y2="1664" x1="1520" />
            <wire x2="1968" y1="1664" y2="1664" x1="1520" />
            <wire x2="2144" y1="832" y2="832" x1="1520" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="1488" y1="768" y2="768" x1="1408" />
            <wire x2="1488" y1="768" y2="1600" x1="1488" />
            <wire x2="1968" y1="1600" y2="1600" x1="1488" />
            <wire x2="2144" y1="768" y2="768" x1="1488" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="1456" y1="704" y2="704" x1="1408" />
            <wire x2="1456" y1="704" y2="1536" x1="1456" />
            <wire x2="1968" y1="1536" y2="1536" x1="1456" />
            <wire x2="2144" y1="704" y2="704" x1="1456" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="1424" y1="640" y2="640" x1="1408" />
            <wire x2="1424" y1="640" y2="1472" x1="1424" />
            <wire x2="1968" y1="1472" y2="1472" x1="1424" />
            <wire x2="2144" y1="640" y2="640" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="240" y="720" name="OSC" orien="R180" />
        <instance x="704" y="1104" name="XLXI_20" orien="R0" />
        <branch name="PB1">
            <wire x2="464" y1="1504" y2="1504" x1="240" />
            <wire x2="464" y1="1504" y2="2432" x1="464" />
            <wire x2="2080" y1="2432" y2="2432" x1="464" />
            <wire x2="464" y1="1040" y2="1504" x1="464" />
            <wire x2="704" y1="1040" y2="1040" x1="464" />
        </branch>
        <iomarker fontsize="28" x="240" y="1504" name="PB1" orien="R180" />
        <instance x="2080" y="2464" name="XLXI_12" orien="R0" />
        <branch name="OSC">
            <wire x2="256" y1="720" y2="720" x1="240" />
            <wire x2="256" y1="720" y2="976" x1="256" />
            <wire x2="288" y1="976" y2="976" x1="256" />
        </branch>
        <instance x="2944" y="1616" name="XLXI_14" orien="R0" />
        <instance x="3056" y="1616" name="XLXI_16" orien="R0" />
        <branch name="common2">
            <wire x2="3008" y1="1616" y2="1648" x1="3008" />
        </branch>
        <branch name="common3">
            <wire x2="3120" y1="1616" y2="1648" x1="3120" />
        </branch>
        <iomarker fontsize="28" x="3008" y="1648" name="common2" orien="R90" />
        <iomarker fontsize="28" x="3120" y="1648" name="common3" orien="R90" />
        <instance x="1024" y="1120" name="XLXI_27" orien="R0">
        </instance>
        <branch name="XLXN_101">
            <wire x2="992" y1="1008" y2="1008" x1="960" />
            <wire x2="992" y1="640" y2="1008" x1="992" />
            <wire x2="1024" y1="640" y2="640" x1="992" />
        </branch>
        <instance x="1968" y="2048" name="XLXI_28" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="2752" y1="640" y2="640" x1="2528" />
        </branch>
        <branch name="a">
            <wire x2="3152" y1="640" y2="640" x1="3136" />
            <wire x2="3168" y1="640" y2="640" x1="3152" />
        </branch>
        <branch name="b">
            <wire x2="3152" y1="704" y2="704" x1="3136" />
            <wire x2="3168" y1="704" y2="704" x1="3152" />
        </branch>
        <branch name="c">
            <wire x2="3152" y1="768" y2="768" x1="3136" />
            <wire x2="3168" y1="768" y2="768" x1="3152" />
        </branch>
        <branch name="d">
            <wire x2="3152" y1="832" y2="832" x1="3136" />
            <wire x2="3168" y1="832" y2="832" x1="3152" />
        </branch>
        <branch name="e">
            <wire x2="3152" y1="896" y2="896" x1="3136" />
            <wire x2="3168" y1="896" y2="896" x1="3152" />
        </branch>
        <branch name="f">
            <wire x2="3152" y1="960" y2="960" x1="3136" />
            <wire x2="3168" y1="960" y2="960" x1="3152" />
        </branch>
        <branch name="g">
            <wire x2="3152" y1="1024" y2="1024" x1="3136" />
            <wire x2="3168" y1="1024" y2="1024" x1="3152" />
        </branch>
        <instance x="2752" y="1056" name="XLXI_7" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3168" y="640" name="a" orien="R0" />
        <iomarker fontsize="28" x="3168" y="704" name="b" orien="R0" />
        <iomarker fontsize="28" x="3168" y="768" name="c" orien="R0" />
        <iomarker fontsize="28" x="3168" y="832" name="d" orien="R0" />
        <iomarker fontsize="28" x="3168" y="896" name="e" orien="R0" />
        <iomarker fontsize="28" x="3168" y="960" name="f" orien="R0" />
        <iomarker fontsize="28" x="3168" y="1024" name="g" orien="R0" />
        <branch name="common0">
            <wire x2="688" y1="976" y2="976" x1="672" />
            <wire x2="704" y1="976" y2="976" x1="688" />
            <wire x2="688" y1="976" y2="1312" x1="688" />
            <wire x2="1936" y1="1312" y2="1312" x1="688" />
            <wire x2="2704" y1="1312" y2="1312" x1="1936" />
            <wire x2="3008" y1="1312" y2="1312" x1="2704" />
            <wire x2="2704" y1="1312" y2="1440" x1="2704" />
            <wire x2="2768" y1="1440" y2="1440" x1="2704" />
            <wire x2="2144" y1="1152" y2="1152" x1="1936" />
            <wire x2="1936" y1="1152" y2="1312" x1="1936" />
        </branch>
        <instance x="2144" y="1184" name="XLXI_32" orien="R0">
        </instance>
        <branch name="XLXN_120">
            <wire x2="2752" y1="704" y2="704" x1="2528" />
        </branch>
        <branch name="XLXN_121">
            <wire x2="2752" y1="768" y2="768" x1="2528" />
        </branch>
        <branch name="XLXN_122">
            <wire x2="2752" y1="832" y2="832" x1="2528" />
        </branch>
        <branch name="CLR">
            <wire x2="1024" y1="704" y2="704" x1="656" />
        </branch>
        <iomarker fontsize="28" x="656" y="704" name="CLR" orien="R180" />
        <instance x="288" y="1008" name="XLXI_34" orien="R0">
        </instance>
    </sheet>
</drawing>