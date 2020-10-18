<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_31" />
        <signal name="XLXN_8" />
        <signal name="XLXN_37" />
        <signal name="S" />
        <signal name="XLXN_7" />
        <signal name="XLXN_40" />
        <signal name="XLXN_42" />
        <signal name="D" />
        <signal name="XLXN_22" />
        <signal name="XLXN_45" />
        <signal name="B" />
        <signal name="XLXN_47" />
        <signal name="XLXN_27" />
        <signal name="XLXN_50" />
        <signal name="H" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="Buzzer" />
        <signal name="XLXN_62" />
        <signal name="E" />
        <signal name="XLXN_64" />
        <signal name="XLXN_65" />
        <signal name="XLXN_68" />
        <signal name="XLXN_69" />
        <signal name="XLXN_74" />
        <signal name="XLXN_75" />
        <signal name="XLXN_76" />
        <signal name="XLXN_77" />
        <port polarity="Input" name="S" />
        <port polarity="Input" name="D" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="H" />
        <port polarity="Output" name="Buzzer" />
        <port polarity="Input" name="E" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <block symbolname="inv" name="XLXI_11">
            <blockpin signalname="B" name="I" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="S" name="I1" />
            <blockpin signalname="XLXN_68" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="D" name="I" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="H" name="I0" />
            <blockpin signalname="XLXN_27" name="I1" />
            <blockpin signalname="XLXN_76" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="XLXN_30" name="I0" />
            <blockpin signalname="XLXN_29" name="I1" />
            <blockpin signalname="XLXN_32" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_21">
            <blockpin signalname="E" name="I" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_22">
            <blockpin signalname="S" name="I" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_39">
            <blockpin signalname="E" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_41">
            <blockpin signalname="E" name="I0" />
            <blockpin signalname="XLXN_68" name="I1" />
            <blockpin signalname="XLXN_75" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_42">
            <blockpin signalname="XLXN_32" name="I0" />
            <blockpin signalname="XLXN_76" name="I1" />
            <blockpin signalname="XLXN_75" name="I2" />
            <blockpin signalname="XLXN_22" name="I3" />
            <blockpin signalname="Buzzer" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_8">
            <wire x2="1136" y1="976" y2="976" x1="1120" />
        </branch>
        <instance x="896" y="1008" name="XLXI_11" orien="R0" />
        <instance x="1136" y="1040" name="XLXI_3" orien="R0" />
        <branch name="S">
            <wire x2="912" y1="912" y2="912" x1="752" />
            <wire x2="1136" y1="912" y2="912" x1="912" />
            <wire x2="912" y1="880" y2="880" x1="832" />
            <wire x2="912" y1="880" y2="912" x1="912" />
            <wire x2="832" y1="880" y2="1168" x1="832" />
            <wire x2="912" y1="1168" y2="1168" x1="832" />
            <wire x2="912" y1="1168" y2="1856" x1="912" />
            <wire x2="1280" y1="1856" y2="1856" x1="912" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1472" y1="720" y2="720" x1="1456" />
            <wire x2="1488" y1="720" y2="720" x1="1472" />
        </branch>
        <instance x="1232" y="752" name="XLXI_10" orien="R0" />
        <branch name="D">
            <wire x2="640" y1="832" y2="2016" x1="640" />
            <wire x2="1184" y1="2016" y2="2016" x1="640" />
            <wire x2="832" y1="832" y2="832" x1="640" />
            <wire x2="832" y1="640" y2="640" x1="672" />
            <wire x2="992" y1="640" y2="640" x1="832" />
            <wire x2="992" y1="640" y2="720" x1="992" />
            <wire x2="1232" y1="720" y2="720" x1="992" />
            <wire x2="832" y1="640" y2="832" x1="832" />
        </branch>
        <branch name="B">
            <wire x2="816" y1="1200" y2="1200" x1="752" />
            <wire x2="832" y1="1200" y2="1200" x1="816" />
            <wire x2="832" y1="1200" y2="2080" x1="832" />
            <wire x2="1184" y1="2080" y2="2080" x1="832" />
            <wire x2="896" y1="976" y2="976" x1="816" />
            <wire x2="816" y1="976" y2="1200" x1="816" />
        </branch>
        <instance x="1184" y="1728" name="XLXI_4" orien="R0" />
        <instance x="1184" y="2144" name="XLXI_5" orien="R0" />
        <instance x="1536" y="1984" name="XLXI_8" orien="R0" />
        <branch name="XLXN_27">
            <wire x2="1184" y1="1600" y2="1600" x1="1152" />
        </branch>
        <instance x="928" y="1632" name="XLXI_21" orien="R0" />
        <branch name="H">
            <wire x2="1072" y1="1776" y2="1776" x1="752" />
            <wire x2="1184" y1="1664" y2="1664" x1="1072" />
            <wire x2="1072" y1="1664" y2="1776" x1="1072" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="1536" y1="1856" y2="1856" x1="1504" />
        </branch>
        <instance x="1280" y="1888" name="XLXI_22" orien="R0" />
        <branch name="XLXN_30">
            <wire x2="1488" y1="2048" y2="2048" x1="1440" />
            <wire x2="1488" y1="1920" y2="2048" x1="1488" />
            <wire x2="1536" y1="1920" y2="1920" x1="1488" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="1840" y1="1888" y2="1888" x1="1792" />
            <wire x2="1840" y1="1744" y2="1888" x1="1840" />
            <wire x2="1904" y1="1744" y2="1744" x1="1840" />
            <wire x2="2272" y1="1744" y2="1744" x1="1904" />
            <wire x2="2272" y1="1408" y2="1744" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="752" y="912" name="S" orien="R180" />
        <iomarker fontsize="28" x="752" y="1200" name="B" orien="R180" />
        <iomarker fontsize="28" x="752" y="1776" name="H" orien="R180" />
        <branch name="Buzzer">
            <wire x2="2544" y1="1312" y2="1312" x1="2528" />
        </branch>
        <iomarker fontsize="28" x="2544" y="1312" name="Buzzer" orien="R0" />
        <branch name="E">
            <wire x2="864" y1="1520" y2="1520" x1="752" />
            <wire x2="864" y1="1520" y2="1600" x1="864" />
            <wire x2="928" y1="1600" y2="1600" x1="864" />
            <wire x2="1456" y1="1520" y2="1520" x1="864" />
            <wire x2="1472" y1="784" y2="784" x1="1456" />
            <wire x2="1488" y1="784" y2="784" x1="1472" />
            <wire x2="1456" y1="784" y2="1280" x1="1456" />
            <wire x2="1456" y1="1280" y2="1520" x1="1456" />
            <wire x2="1520" y1="1280" y2="1280" x1="1456" />
        </branch>
        <instance x="1488" y="848" name="XLXI_39" orien="R0" />
        <instance x="1520" y="1344" name="XLXI_41" orien="R0" />
        <branch name="XLXN_68">
            <wire x2="1504" y1="944" y2="944" x1="1392" />
            <wire x2="1504" y1="944" y2="1216" x1="1504" />
            <wire x2="1520" y1="1216" y2="1216" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="752" y="1520" name="E" orien="R180" />
        <branch name="XLXN_22">
            <wire x2="1760" y1="752" y2="752" x1="1744" />
            <wire x2="1760" y1="752" y2="1040" x1="1760" />
            <wire x2="1904" y1="1040" y2="1040" x1="1760" />
            <wire x2="2272" y1="1040" y2="1040" x1="1904" />
            <wire x2="2272" y1="1040" y2="1216" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="672" y="640" name="D" orien="R180" />
        <instance x="2272" y="1472" name="XLXI_42" orien="R0" />
        <branch name="XLXN_75">
            <wire x2="1792" y1="1248" y2="1248" x1="1776" />
            <wire x2="1904" y1="1104" y2="1104" x1="1792" />
            <wire x2="1904" y1="1104" y2="1280" x1="1904" />
            <wire x2="2272" y1="1280" y2="1280" x1="1904" />
            <wire x2="1792" y1="1104" y2="1248" x1="1792" />
        </branch>
        <branch name="XLXN_76">
            <wire x2="1664" y1="1632" y2="1632" x1="1440" />
            <wire x2="1664" y1="1632" y2="1680" x1="1664" />
            <wire x2="1904" y1="1680" y2="1680" x1="1664" />
            <wire x2="2272" y1="1344" y2="1344" x1="1904" />
            <wire x2="1904" y1="1344" y2="1680" x1="1904" />
        </branch>
    </sheet>
</drawing>