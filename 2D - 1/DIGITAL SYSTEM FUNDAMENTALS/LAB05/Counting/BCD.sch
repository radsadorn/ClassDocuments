<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_5" />
        <signal name="BIT_A" />
        <signal name="XLXN_15" />
        <signal name="XLXN_18" />
        <signal name="Input">
            <attr value="TRUE" name="CLOCK_DEDICATED_ROUTE">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
                <trait valuetype="Boolean" />
            </attr>
        </signal>
        <signal name="BIT_B" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="BIT_C" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="XLXN_42" />
        <signal name="XLXN_44" />
        <signal name="XLXN_47" />
        <signal name="XLXN_48" />
        <signal name="XLXN_52" />
        <signal name="a" />
        <signal name="b" />
        <signal name="c" />
        <signal name="d" />
        <signal name="e" />
        <signal name="f" />
        <signal name="g" />
        <signal name="common1" />
        <signal name="common2" />
        <signal name="common3" />
        <port polarity="Output" name="BIT_A" />
        <port polarity="Input" name="Input" />
        <port polarity="Output" name="BIT_B" />
        <port polarity="Output" name="BIT_C" />
        <port polarity="Output" name="a" />
        <port polarity="Output" name="b" />
        <port polarity="Output" name="c" />
        <port polarity="Output" name="d" />
        <port polarity="Output" name="e" />
        <port polarity="Output" name="f" />
        <port polarity="Output" name="g" />
        <port polarity="Output" name="common1" />
        <port polarity="Output" name="common2" />
        <port polarity="Output" name="common3" />
        <blockdef name="fjkc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <rect width="256" x="64" y="-384" height="320" />
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
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
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
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
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
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <block symbolname="fjkc" name="XLXI_1">
            <blockpin signalname="Input" name="C" />
            <blockpin signalname="XLXN_3" name="CLR" />
            <blockpin signalname="XLXN_5" name="J" />
            <blockpin signalname="XLXN_5" name="K" />
            <blockpin signalname="BIT_A" name="Q" />
        </block>
        <block symbolname="fjkc" name="XLXI_2">
            <blockpin signalname="Input" name="C" />
            <blockpin signalname="XLXN_2" name="CLR" />
            <blockpin signalname="BIT_A" name="J" />
            <blockpin signalname="XLXN_15" name="K" />
            <blockpin signalname="BIT_B" name="Q" />
        </block>
        <block symbolname="fjkc" name="XLXI_3">
            <blockpin signalname="Input" name="C" />
            <blockpin signalname="XLXN_1" name="CLR" />
            <blockpin signalname="XLXN_18" name="J" />
            <blockpin signalname="BIT_B" name="K" />
            <blockpin signalname="BIT_C" name="Q" />
        </block>
        <block symbolname="gnd" name="XLXI_4">
            <blockpin signalname="XLXN_1" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_5">
            <blockpin signalname="XLXN_2" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_6">
            <blockpin signalname="XLXN_3" name="G" />
        </block>
        <block symbolname="or2" name="XLXI_7">
            <blockpin signalname="BIT_C" name="I0" />
            <blockpin signalname="BIT_A" name="I1" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="BIT_A" name="I0" />
            <blockpin signalname="BIT_B" name="I1" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_11">
            <blockpin signalname="XLXN_5" name="P" />
        </block>
        <block symbolname="and2" name="XLXI_12">
            <blockpin signalname="BIT_A" name="I0" />
            <blockpin signalname="BIT_C" name="I1" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_14">
            <blockpin signalname="BIT_B" name="I0" />
            <blockpin signalname="XLXN_39" name="I1" />
            <blockpin signalname="XLXN_28" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_15">
            <blockpin signalname="XLXN_28" name="I0" />
            <blockpin signalname="XLXN_29" name="I1" />
            <blockpin signalname="a" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_16">
            <blockpin signalname="BIT_B" name="I" />
            <blockpin signalname="XLXN_42" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_17">
            <blockpin signalname="BIT_C" name="I" />
            <blockpin signalname="XLXN_39" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_19">
            <blockpin signalname="XLXN_52" name="I0" />
            <blockpin signalname="XLXN_42" name="I1" />
            <blockpin signalname="XLXN_38" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_20">
            <blockpin signalname="XLXN_39" name="I0" />
            <blockpin signalname="XLXN_38" name="I1" />
            <blockpin signalname="b" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_21">
            <blockpin signalname="BIT_C" name="I0" />
            <blockpin signalname="XLXN_42" name="I1" />
            <blockpin signalname="XLXN_44" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_22">
            <blockpin signalname="BIT_A" name="I0" />
            <blockpin signalname="XLXN_44" name="I1" />
            <blockpin signalname="c" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_25">
            <blockpin signalname="XLXN_39" name="I0" />
            <blockpin signalname="XLXN_52" name="I1" />
            <blockpin signalname="XLXN_47" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_26">
            <blockpin signalname="BIT_C" name="I0" />
            <blockpin signalname="BIT_A" name="I1" />
            <blockpin signalname="XLXN_48" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_27">
            <blockpin signalname="XLXN_48" name="I0" />
            <blockpin signalname="BIT_B" name="I1" />
            <blockpin signalname="XLXN_47" name="I2" />
            <blockpin signalname="d" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_28">
            <blockpin signalname="BIT_A" name="I" />
            <blockpin signalname="XLXN_52" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_29">
            <blockpin signalname="XLXN_52" name="I0" />
            <blockpin signalname="BIT_B" name="I1" />
            <blockpin signalname="e" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_30">
            <blockpin signalname="BIT_C" name="I0" />
            <blockpin signalname="BIT_B" name="I1" />
            <blockpin signalname="g" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_32">
            <blockpin signalname="BIT_C" name="I0" />
            <blockpin signalname="BIT_C" name="I1" />
            <blockpin signalname="f" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_33">
            <blockpin signalname="common1" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_34">
            <blockpin signalname="common2" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_35">
            <blockpin signalname="common3" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2544" y="2416" name="XLXI_1" orien="M0" />
        <instance x="1680" y="2416" name="XLXI_2" orien="M0" />
        <instance x="800" y="2416" name="XLXI_3" orien="M0" />
        <branch name="XLXN_1">
            <wire x2="800" y1="2384" y2="2416" x1="800" />
        </branch>
        <instance x="864" y="2544" name="XLXI_4" orien="M0" />
        <branch name="XLXN_2">
            <wire x2="1680" y1="2384" y2="2416" x1="1680" />
        </branch>
        <instance x="1744" y="2544" name="XLXI_5" orien="M0" />
        <branch name="XLXN_3">
            <wire x2="2544" y1="2384" y2="2416" x1="2544" />
        </branch>
        <instance x="2608" y="2544" name="XLXI_6" orien="M0" />
        <branch name="XLXN_5">
            <wire x2="2736" y1="2096" y2="2096" x1="2544" />
            <wire x2="2736" y1="2096" y2="2160" x1="2736" />
            <wire x2="2832" y1="2160" y2="2160" x1="2736" />
            <wire x2="2736" y1="2160" y2="2160" x1="2544" />
        </branch>
        <instance x="1776" y="1792" name="XLXI_7" orien="R90" />
        <instance x="1200" y="1728" name="XLXI_8" orien="R180" />
        <branch name="BIT_A">
            <wire x2="400" y1="880" y2="1168" x1="400" />
            <wire x2="400" y1="1168" y2="1392" x1="400" />
            <wire x2="1184" y1="1392" y2="1392" x1="400" />
            <wire x2="1552" y1="1392" y2="1392" x1="1184" />
            <wire x2="2080" y1="1392" y2="1392" x1="1552" />
            <wire x2="2080" y1="1392" y2="1520" x1="2080" />
            <wire x2="2080" y1="1520" y2="1680" x1="2080" />
            <wire x2="2080" y1="1680" y2="2096" x1="2080" />
            <wire x2="2080" y1="2096" y2="2160" x1="2080" />
            <wire x2="2160" y1="2160" y2="2160" x1="2080" />
            <wire x2="2112" y1="2096" y2="2096" x1="2080" />
            <wire x2="448" y1="1168" y2="1168" x1="400" />
            <wire x2="1152" y1="640" y2="1008" x1="1152" />
            <wire x2="1184" y1="1008" y2="1008" x1="1152" />
            <wire x2="1184" y1="1008" y2="1392" x1="1184" />
            <wire x2="1264" y1="1792" y2="1792" x1="1200" />
            <wire x2="1264" y1="1712" y2="1792" x1="1264" />
            <wire x2="2112" y1="1712" y2="1712" x1="1264" />
            <wire x2="2112" y1="1712" y2="2096" x1="2112" />
            <wire x2="1552" y1="976" y2="1392" x1="1552" />
            <wire x2="2080" y1="2096" y2="2096" x1="1680" />
            <wire x2="2080" y1="1680" y2="1680" x1="1904" />
            <wire x2="1904" y1="1680" y2="1792" x1="1904" />
            <wire x2="2080" y1="1520" y2="1520" x1="2048" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1872" y1="2160" y2="2160" x1="1680" />
            <wire x2="1872" y1="2048" y2="2160" x1="1872" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="864" y1="2096" y2="2096" x1="800" />
            <wire x2="864" y1="1824" y2="2096" x1="864" />
            <wire x2="944" y1="1824" y2="1824" x1="864" />
        </branch>
        <branch name="Input">
            <wire x2="880" y1="2288" y2="2288" x1="800" />
            <wire x2="880" y1="2288" y2="2576" x1="880" />
            <wire x2="1936" y1="2576" y2="2576" x1="880" />
            <wire x2="2688" y1="2576" y2="2576" x1="1936" />
            <wire x2="2784" y1="2576" y2="2576" x1="2688" />
            <wire x2="1936" y1="2288" y2="2288" x1="1680" />
            <wire x2="1936" y1="2288" y2="2576" x1="1936" />
            <wire x2="2688" y1="2288" y2="2288" x1="2544" />
            <wire x2="2688" y1="2288" y2="2576" x1="2688" />
            <wire x2="3072" y1="2544" y2="2544" x1="2784" />
            <wire x2="2784" y1="2544" y2="2576" x1="2784" />
        </branch>
        <iomarker fontsize="28" x="3072" y="2544" name="Input" orien="R0" />
        <branch name="BIT_B">
            <wire x2="560" y1="864" y2="1456" x1="560" />
            <wire x2="1216" y1="1456" y2="1456" x1="560" />
            <wire x2="1216" y1="1456" y2="1536" x1="1216" />
            <wire x2="1216" y1="1536" y2="1936" x1="1216" />
            <wire x2="1264" y1="1936" y2="1936" x1="1216" />
            <wire x2="1456" y1="1456" y2="1456" x1="1216" />
            <wire x2="1824" y1="1456" y2="1456" x1="1456" />
            <wire x2="2352" y1="1456" y2="1456" x1="1824" />
            <wire x2="3008" y1="1456" y2="1456" x1="2352" />
            <wire x2="1200" y1="2160" y2="2160" x1="800" />
            <wire x2="1296" y1="2160" y2="2160" x1="1200" />
            <wire x2="1216" y1="1536" y2="1536" x1="1200" />
            <wire x2="1264" y1="1856" y2="1856" x1="1200" />
            <wire x2="1264" y1="1856" y2="1936" x1="1264" />
            <wire x2="1200" y1="1936" y2="2160" x1="1200" />
            <wire x2="1216" y1="1936" y2="1936" x1="1200" />
            <wire x2="1456" y1="640" y2="1456" x1="1456" />
            <wire x2="1824" y1="960" y2="1456" x1="1824" />
            <wire x2="2352" y1="928" y2="1456" x1="2352" />
            <wire x2="3008" y1="1264" y2="1264" x1="2976" />
            <wire x2="3008" y1="1264" y2="1456" x1="3008" />
        </branch>
        <iomarker fontsize="28" x="1200" y="1536" name="BIT_B" orien="R180" />
        <instance x="2768" y="2160" name="XLXI_11" orien="R0" />
        <iomarker fontsize="28" x="272" y="1552" name="BIT_C" orien="R180" />
        <iomarker fontsize="28" x="2048" y="1520" name="BIT_A" orien="R180" />
        <branch name="XLXN_28">
            <wire x2="464" y1="544" y2="560" x1="464" />
            <wire x2="528" y1="560" y2="560" x1="464" />
            <wire x2="528" y1="560" y2="608" x1="528" />
        </branch>
        <instance x="624" y="864" name="XLXI_14" orien="R270" />
        <instance x="528" y="544" name="XLXI_15" orien="R270" />
        <branch name="XLXN_29">
            <wire x2="400" y1="560" y2="560" x1="368" />
            <wire x2="368" y1="560" y2="624" x1="368" />
            <wire x2="400" y1="544" y2="560" x1="400" />
        </branch>
        <instance x="464" y="880" name="XLXI_12" orien="R270" />
        <branch name="BIT_C">
            <wire x2="352" y1="1552" y2="1552" x1="272" />
            <wire x2="352" y1="1552" y2="1680" x1="352" />
            <wire x2="352" y1="1680" y2="2160" x1="352" />
            <wire x2="416" y1="2160" y2="2160" x1="352" />
            <wire x2="1840" y1="1680" y2="1680" x1="352" />
            <wire x2="1840" y1="1680" y2="1792" x1="1840" />
            <wire x2="336" y1="880" y2="1344" x1="336" />
            <wire x2="352" y1="1344" y2="1344" x1="336" />
            <wire x2="352" y1="1344" y2="1552" x1="352" />
            <wire x2="352" y1="1312" y2="1344" x1="352" />
            <wire x2="1120" y1="1312" y2="1312" x1="352" />
            <wire x2="1616" y1="1312" y2="1312" x1="1120" />
            <wire x2="2112" y1="1312" y2="1312" x1="1616" />
            <wire x2="2416" y1="1312" y2="1312" x1="2112" />
            <wire x2="3104" y1="1312" y2="1312" x1="2416" />
            <wire x2="1120" y1="928" y2="1312" x1="1120" />
            <wire x2="1616" y1="976" y2="1312" x1="1616" />
            <wire x2="2112" y1="592" y2="672" x1="2112" />
            <wire x2="2112" y1="672" y2="1312" x1="2112" />
            <wire x2="2176" y1="672" y2="672" x1="2112" />
            <wire x2="2176" y1="592" y2="672" x1="2176" />
            <wire x2="2416" y1="928" y2="1312" x1="2416" />
            <wire x2="3104" y1="1088" y2="1088" x1="2960" />
            <wire x2="3104" y1="1088" y2="1312" x1="3104" />
        </branch>
        <instance x="2976" y="1296" name="XLXI_16" orien="M0" />
        <instance x="2960" y="1120" name="XLXI_17" orien="M0" />
        <instance x="896" y="976" name="XLXI_19" orien="R270" />
        <branch name="XLXN_38">
            <wire x2="800" y1="688" y2="720" x1="800" />
        </branch>
        <instance x="928" y="688" name="XLXI_20" orien="R270" />
        <branch name="XLXN_39">
            <wire x2="496" y1="864" y2="1088" x1="496" />
            <wire x2="928" y1="1088" y2="1088" x1="496" />
            <wire x2="1376" y1="1088" y2="1088" x1="928" />
            <wire x2="2736" y1="1088" y2="1088" x1="1376" />
            <wire x2="864" y1="688" y2="880" x1="864" />
            <wire x2="928" y1="880" y2="880" x1="864" />
            <wire x2="928" y1="880" y2="1088" x1="928" />
            <wire x2="1376" y1="976" y2="1088" x1="1376" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="768" y1="1056" y2="1056" x1="608" />
            <wire x2="608" y1="1056" y2="1264" x1="608" />
            <wire x2="1056" y1="1264" y2="1264" x1="608" />
            <wire x2="2752" y1="1264" y2="1264" x1="1056" />
            <wire x2="768" y1="976" y2="1056" x1="768" />
            <wire x2="1056" y1="928" y2="1264" x1="1056" />
        </branch>
        <instance x="1184" y="928" name="XLXI_21" orien="R270" />
        <branch name="XLXN_44">
            <wire x2="1088" y1="640" y2="672" x1="1088" />
        </branch>
        <instance x="1216" y="640" name="XLXI_22" orien="R270" />
        <instance x="1440" y="976" name="XLXI_25" orien="R270" />
        <instance x="1680" y="976" name="XLXI_26" orien="R270" />
        <instance x="1584" y="640" name="XLXI_27" orien="R270" />
        <branch name="XLXN_47">
            <wire x2="1392" y1="640" y2="640" x1="1344" />
            <wire x2="1344" y1="640" y2="720" x1="1344" />
        </branch>
        <branch name="XLXN_48">
            <wire x2="1584" y1="640" y2="640" x1="1520" />
            <wire x2="1584" y1="640" y2="720" x1="1584" />
        </branch>
        <instance x="448" y="1200" name="XLXI_28" orien="R0" />
        <branch name="XLXN_52">
            <wire x2="832" y1="1168" y2="1168" x1="672" />
            <wire x2="1296" y1="1168" y2="1168" x1="832" />
            <wire x2="1888" y1="1168" y2="1168" x1="1296" />
            <wire x2="832" y1="976" y2="1168" x1="832" />
            <wire x2="1296" y1="992" y2="1168" x1="1296" />
            <wire x2="1312" y1="992" y2="992" x1="1296" />
            <wire x2="1312" y1="976" y2="992" x1="1312" />
            <wire x2="1888" y1="960" y2="1168" x1="1888" />
        </branch>
        <instance x="1952" y="960" name="XLXI_29" orien="R270" />
        <instance x="2480" y="928" name="XLXI_30" orien="R270" />
        <branch name="a">
            <wire x2="432" y1="256" y2="288" x1="432" />
        </branch>
        <iomarker fontsize="28" x="432" y="256" name="a" orien="R270" />
        <branch name="b">
            <wire x2="832" y1="400" y2="432" x1="832" />
        </branch>
        <iomarker fontsize="28" x="832" y="400" name="b" orien="R270" />
        <branch name="c">
            <wire x2="1120" y1="352" y2="384" x1="1120" />
        </branch>
        <iomarker fontsize="28" x="1120" y="352" name="c" orien="R270" />
        <branch name="d">
            <wire x2="1456" y1="352" y2="384" x1="1456" />
        </branch>
        <iomarker fontsize="28" x="1456" y="352" name="d" orien="R270" />
        <branch name="e">
            <wire x2="1856" y1="672" y2="704" x1="1856" />
        </branch>
        <iomarker fontsize="28" x="1856" y="672" name="e" orien="R270" />
        <instance x="2240" y="592" name="XLXI_32" orien="R270" />
        <branch name="f">
            <wire x2="2144" y1="304" y2="336" x1="2144" />
        </branch>
        <iomarker fontsize="28" x="2144" y="304" name="f" orien="R270" />
        <branch name="g">
            <wire x2="2384" y1="640" y2="672" x1="2384" />
        </branch>
        <iomarker fontsize="28" x="2384" y="640" name="g" orien="R270" />
        <instance x="2832" y="320" name="XLXI_33" orien="R0" />
        <instance x="2928" y="320" name="XLXI_34" orien="R0" />
        <instance x="3024" y="320" name="XLXI_35" orien="R0" />
        <branch name="common1">
            <wire x2="2896" y1="320" y2="352" x1="2896" />
        </branch>
        <iomarker fontsize="28" x="2896" y="352" name="common1" orien="R90" />
        <branch name="common2">
            <wire x2="2992" y1="320" y2="352" x1="2992" />
        </branch>
        <iomarker fontsize="28" x="2992" y="352" name="common2" orien="R90" />
        <branch name="common3">
            <wire x2="3088" y1="320" y2="352" x1="3088" />
        </branch>
        <iomarker fontsize="28" x="3088" y="352" name="common3" orien="R90" />
    </sheet>
</drawing>