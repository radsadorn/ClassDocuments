<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="B2" />
        <signal name="B3" />
        <signal name="B1" />
        <signal name="B0" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="CEO" />
        <signal name="CLR" />
        <signal name="A0" />
        <signal name="A1" />
        <signal name="A2" />
        <signal name="A3" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_35" />
        <signal name="CLK" />
        <signal name="XLXN_40" />
        <port polarity="Output" name="B2" />
        <port polarity="Output" name="B3" />
        <port polarity="Output" name="B1" />
        <port polarity="Output" name="B0" />
        <port polarity="Output" name="CEO" />
        <port polarity="Input" name="CLR" />
        <port polarity="Output" name="A0" />
        <port polarity="Output" name="A1" />
        <port polarity="Output" name="A2" />
        <port polarity="Output" name="A3" />
        <port polarity="Input" name="CLK" />
        <blockdef name="cd4ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <rect width="256" x="64" y="-512" height="448" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
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
        <blockdef name="and2b2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
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
        <block symbolname="cd4ce" name="XLXI_2">
            <blockpin signalname="XLXN_40" name="C" />
            <blockpin signalname="XLXN_31" name="CE" />
            <blockpin signalname="XLXN_35" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="B0" name="Q0" />
            <blockpin signalname="B1" name="Q1" />
            <blockpin signalname="B2" name="Q2" />
            <blockpin signalname="B3" name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="or2" name="XLXI_3">
            <blockpin signalname="CEO" name="I0" />
            <blockpin signalname="CLR" name="I1" />
            <blockpin signalname="XLXN_35" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="B1" name="I0" />
            <blockpin signalname="B2" name="I1" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="and2b2" name="XLXI_5">
            <blockpin signalname="B0" name="I0" />
            <blockpin signalname="B3" name="I1" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="XLXN_10" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="CEO" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_7">
            <blockpin signalname="XLXN_30" name="P" />
        </block>
        <block symbolname="cd4ce" name="XLXI_12">
            <blockpin signalname="XLXN_40" name="C" />
            <blockpin signalname="XLXN_30" name="CE" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="XLXN_31" name="CEO" />
            <blockpin signalname="A0" name="Q0" />
            <blockpin signalname="A1" name="Q1" />
            <blockpin signalname="A2" name="Q2" />
            <blockpin signalname="A3" name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="inv" name="XLXI_13">
            <blockpin signalname="CLK" name="I" />
            <blockpin signalname="XLXN_40" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1328" y="1968" name="XLXI_2" orien="R0" />
        <branch name="B3">
            <wire x2="2160" y1="1712" y2="1712" x1="1712" />
            <wire x2="2160" y1="1712" y2="1952" x1="2160" />
            <wire x2="2176" y1="1952" y2="1952" x1="2160" />
            <wire x2="2416" y1="1712" y2="1712" x1="2160" />
        </branch>
        <instance x="2128" y="2240" name="XLXI_4" orien="R0" />
        <branch name="B2">
            <wire x2="2016" y1="1648" y2="1648" x1="1712" />
            <wire x2="2416" y1="1648" y2="1648" x1="2016" />
            <wire x2="2016" y1="1648" y2="2112" x1="2016" />
            <wire x2="2128" y1="2112" y2="2112" x1="2016" />
        </branch>
        <branch name="B1">
            <wire x2="1952" y1="1584" y2="1584" x1="1712" />
            <wire x2="2416" y1="1584" y2="1584" x1="1952" />
            <wire x2="1952" y1="1584" y2="2176" x1="1952" />
            <wire x2="2128" y1="2176" y2="2176" x1="1952" />
        </branch>
        <instance x="2176" y="2080" name="XLXI_5" orien="R0" />
        <branch name="B0">
            <wire x2="2080" y1="1520" y2="1520" x1="1712" />
            <wire x2="2416" y1="1520" y2="1520" x1="2080" />
            <wire x2="2080" y1="1520" y2="2016" x1="2080" />
            <wire x2="2176" y1="2016" y2="2016" x1="2080" />
        </branch>
        <instance x="2528" y="2160" name="XLXI_6" orien="R0" />
        <branch name="XLXN_9">
            <wire x2="2480" y1="1984" y2="1984" x1="2432" />
            <wire x2="2480" y1="1984" y2="2032" x1="2480" />
            <wire x2="2528" y1="2032" y2="2032" x1="2480" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="2448" y1="2144" y2="2144" x1="2384" />
            <wire x2="2448" y1="2096" y2="2144" x1="2448" />
            <wire x2="2528" y1="2096" y2="2096" x1="2448" />
        </branch>
        <instance x="656" y="2224" name="XLXI_3" orien="R0" />
        <branch name="CLR">
            <wire x2="400" y1="2096" y2="2096" x1="288" />
            <wire x2="656" y1="2096" y2="2096" x1="400" />
            <wire x2="1312" y1="1024" y2="1024" x1="400" />
            <wire x2="400" y1="1024" y2="2096" x1="400" />
        </branch>
        <branch name="CEO">
            <wire x2="656" y1="2160" y2="2160" x1="640" />
            <wire x2="640" y1="2160" y2="2416" x1="640" />
            <wire x2="2816" y1="2416" y2="2416" x1="640" />
            <wire x2="2816" y1="2064" y2="2064" x1="2784" />
            <wire x2="2976" y1="2064" y2="2064" x1="2816" />
            <wire x2="2816" y1="2064" y2="2416" x1="2816" />
        </branch>
        <branch name="A0">
            <wire x2="1840" y1="608" y2="608" x1="1696" />
        </branch>
        <branch name="A1">
            <wire x2="1840" y1="672" y2="672" x1="1696" />
        </branch>
        <branch name="A2">
            <wire x2="1840" y1="736" y2="736" x1="1696" />
        </branch>
        <branch name="A3">
            <wire x2="1840" y1="800" y2="800" x1="1696" />
        </branch>
        <instance x="928" y="656" name="XLXI_7" orien="R0" />
        <iomarker fontsize="28" x="1840" y="608" name="A0" orien="R0" />
        <iomarker fontsize="28" x="1840" y="672" name="A1" orien="R0" />
        <iomarker fontsize="28" x="1840" y="736" name="A2" orien="R0" />
        <iomarker fontsize="28" x="1840" y="800" name="A3" orien="R0" />
        <iomarker fontsize="28" x="2416" y="1520" name="B0" orien="R0" />
        <iomarker fontsize="28" x="2416" y="1584" name="B1" orien="R0" />
        <iomarker fontsize="28" x="2416" y="1648" name="B2" orien="R0" />
        <iomarker fontsize="28" x="2416" y="1712" name="B3" orien="R0" />
        <iomarker fontsize="28" x="2976" y="2064" name="CEO" orien="R0" />
        <branch name="XLXN_30">
            <wire x2="992" y1="656" y2="864" x1="992" />
            <wire x2="1312" y1="864" y2="864" x1="992" />
        </branch>
        <branch name="XLXN_31">
            <wire x2="1776" y1="1280" y2="1280" x1="1264" />
            <wire x2="1264" y1="1280" y2="1776" x1="1264" />
            <wire x2="1328" y1="1776" y2="1776" x1="1264" />
            <wire x2="1776" y1="864" y2="864" x1="1696" />
            <wire x2="1776" y1="864" y2="1280" x1="1776" />
        </branch>
        <instance x="1312" y="1056" name="XLXI_12" orien="R0" />
        <iomarker fontsize="28" x="288" y="2096" name="CLR" orien="R180" />
        <branch name="XLXN_35">
            <wire x2="1328" y1="2128" y2="2128" x1="912" />
            <wire x2="1328" y1="1936" y2="2128" x1="1328" />
        </branch>
        <iomarker fontsize="28" x="272" y="864" name="CLK" orien="R180" />
        <branch name="CLK">
            <wire x2="272" y1="864" y2="928" x1="272" />
            <wire x2="416" y1="928" y2="928" x1="272" />
        </branch>
        <instance x="416" y="960" name="XLXI_13" orien="R0" />
        <branch name="XLXN_40">
            <wire x2="752" y1="928" y2="928" x1="640" />
            <wire x2="1312" y1="928" y2="928" x1="752" />
            <wire x2="752" y1="928" y2="1840" x1="752" />
            <wire x2="1328" y1="1840" y2="1840" x1="752" />
        </branch>
    </sheet>
</drawing>