<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="S(0)" />
        <signal name="S(1)" />
        <signal name="XLXN_10" />
        <signal name="DATA(5)" />
        <signal name="DATA(6)" />
        <signal name="DATA(7)" />
        <signal name="DATA(10)" />
        <signal name="DATA(11)" />
        <signal name="DATA(15)" />
        <signal name="BIT(0)" />
        <signal name="BIT(1)" />
        <signal name="BIT(2)" />
        <signal name="BIT(3)" />
        <signal name="DATA(15:0)" />
        <signal name="S(1:0)" />
        <signal name="BIT(3:0)" />
        <signal name="DATA(3)" />
        <signal name="DATA(2)" />
        <signal name="DATA(1)" />
        <signal name="DATA(0)" />
        <signal name="DATA(4)" />
        <signal name="DATA(8)" />
        <signal name="DATA(9)" />
        <signal name="DATA(12)" />
        <signal name="DATA(13)" />
        <signal name="DATA(14)" />
        <port polarity="Input" name="DATA(15:0)" />
        <port polarity="Input" name="S(1:0)" />
        <port polarity="Output" name="BIT(3:0)" />
        <blockdef name="m4_1e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-416" y2="-416" x1="0" />
            <line x2="96" y1="-352" y2="-352" x1="0" />
            <line x2="96" y1="-288" y2="-288" x1="0" />
            <line x2="96" y1="-224" y2="-224" x1="0" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-320" y2="-320" x1="320" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="176" />
            <line x2="176" y1="-208" y2="-96" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="224" />
            <line x2="224" y1="-216" y2="-32" x1="224" />
            <line x2="96" y1="-224" y2="-192" x1="256" />
            <line x2="256" y1="-416" y2="-224" x1="256" />
            <line x2="256" y1="-448" y2="-416" x1="96" />
            <line x2="96" y1="-192" y2="-448" x1="96" />
            <line x2="96" y1="-160" y2="-160" x1="128" />
            <line x2="128" y1="-200" y2="-160" x1="128" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="m4_1e" name="XLXI_1">
            <blockpin signalname="DATA(0)" name="D0" />
            <blockpin signalname="DATA(4)" name="D1" />
            <blockpin signalname="DATA(8)" name="D2" />
            <blockpin signalname="DATA(12)" name="D3" />
            <blockpin signalname="XLXN_10" name="E" />
            <blockpin signalname="S(0)" name="S0" />
            <blockpin signalname="S(1)" name="S1" />
            <blockpin signalname="BIT(0)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_2">
            <blockpin signalname="DATA(1)" name="D0" />
            <blockpin signalname="DATA(5)" name="D1" />
            <blockpin signalname="DATA(9)" name="D2" />
            <blockpin signalname="DATA(13)" name="D3" />
            <blockpin signalname="XLXN_10" name="E" />
            <blockpin signalname="S(0)" name="S0" />
            <blockpin signalname="S(1)" name="S1" />
            <blockpin signalname="BIT(1)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_3">
            <blockpin signalname="DATA(2)" name="D0" />
            <blockpin signalname="DATA(6)" name="D1" />
            <blockpin signalname="DATA(10)" name="D2" />
            <blockpin signalname="DATA(14)" name="D3" />
            <blockpin signalname="XLXN_10" name="E" />
            <blockpin signalname="S(0)" name="S0" />
            <blockpin signalname="S(1)" name="S1" />
            <blockpin signalname="BIT(2)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_4">
            <blockpin signalname="DATA(3)" name="D0" />
            <blockpin signalname="DATA(7)" name="D1" />
            <blockpin signalname="DATA(11)" name="D2" />
            <blockpin signalname="DATA(15)" name="D3" />
            <blockpin signalname="XLXN_10" name="E" />
            <blockpin signalname="S(0)" name="S0" />
            <blockpin signalname="S(1)" name="S1" />
            <blockpin signalname="BIT(3)" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_11">
            <blockpin signalname="XLXN_10" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1568" y="576" name="XLXI_1" orien="R0" />
        <instance x="1568" y="1088" name="XLXI_2" orien="R0" />
        <instance x="1568" y="1616" name="XLXI_3" orien="R0" />
        <instance x="1568" y="2096" name="XLXI_4" orien="R0" />
        <branch name="S(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="2192" type="branch" />
            <wire x2="1232" y1="2192" y2="2192" x1="1024" />
            <wire x2="1568" y1="416" y2="416" x1="1232" />
            <wire x2="1232" y1="416" y2="928" x1="1232" />
            <wire x2="1568" y1="928" y2="928" x1="1232" />
            <wire x2="1232" y1="928" y2="1456" x1="1232" />
            <wire x2="1568" y1="1456" y2="1456" x1="1232" />
            <wire x2="1232" y1="1456" y2="1936" x1="1232" />
            <wire x2="1568" y1="1936" y2="1936" x1="1232" />
            <wire x2="1232" y1="1936" y2="2192" x1="1232" />
        </branch>
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="2256" type="branch" />
            <wire x2="1312" y1="2256" y2="2256" x1="1024" />
            <wire x2="1568" y1="480" y2="480" x1="1312" />
            <wire x2="1312" y1="480" y2="992" x1="1312" />
            <wire x2="1568" y1="992" y2="992" x1="1312" />
            <wire x2="1312" y1="992" y2="1520" x1="1312" />
            <wire x2="1568" y1="1520" y2="1520" x1="1312" />
            <wire x2="1312" y1="1520" y2="2000" x1="1312" />
            <wire x2="1312" y1="2000" y2="2256" x1="1312" />
            <wire x2="1568" y1="2000" y2="2000" x1="1312" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1504" y1="544" y2="1056" x1="1504" />
            <wire x2="1504" y1="1056" y2="1584" x1="1504" />
            <wire x2="1568" y1="1584" y2="1584" x1="1504" />
            <wire x2="1504" y1="1584" y2="2064" x1="1504" />
            <wire x2="1568" y1="2064" y2="2064" x1="1504" />
            <wire x2="1504" y1="2064" y2="2448" x1="1504" />
            <wire x2="1568" y1="1056" y2="1056" x1="1504" />
            <wire x2="1568" y1="544" y2="544" x1="1504" />
        </branch>
        <instance x="1568" y="2448" name="XLXI_11" orien="R180" />
        <branch name="DATA(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="160" type="branch" />
            <wire x2="1568" y1="160" y2="160" x1="1024" />
        </branch>
        <branch name="DATA(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="224" type="branch" />
            <wire x2="1568" y1="224" y2="224" x1="1024" />
        </branch>
        <branch name="DATA(8)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="288" type="branch" />
            <wire x2="1568" y1="288" y2="288" x1="1024" />
        </branch>
        <branch name="DATA(12)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="352" type="branch" />
            <wire x2="1568" y1="352" y2="352" x1="1024" />
        </branch>
        <branch name="DATA(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="672" type="branch" />
            <wire x2="1568" y1="672" y2="672" x1="1040" />
        </branch>
        <branch name="DATA(5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="736" type="branch" />
            <wire x2="1568" y1="736" y2="736" x1="1040" />
        </branch>
        <branch name="DATA(9)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="800" type="branch" />
            <wire x2="1568" y1="800" y2="800" x1="1040" />
        </branch>
        <branch name="DATA(13)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="864" type="branch" />
            <wire x2="1568" y1="864" y2="864" x1="1040" />
        </branch>
        <branch name="DATA(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="1200" type="branch" />
            <wire x2="1056" y1="1200" y2="1200" x1="1040" />
            <wire x2="1072" y1="1200" y2="1200" x1="1056" />
            <wire x2="1568" y1="1200" y2="1200" x1="1072" />
        </branch>
        <branch name="DATA(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="1264" type="branch" />
            <wire x2="1568" y1="1264" y2="1264" x1="1040" />
        </branch>
        <branch name="DATA(10)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="1328" type="branch" />
            <wire x2="1568" y1="1328" y2="1328" x1="1040" />
        </branch>
        <branch name="DATA(14)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="1392" type="branch" />
            <wire x2="1568" y1="1392" y2="1392" x1="1040" />
        </branch>
        <branch name="DATA(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="1680" type="branch" />
            <wire x2="1072" y1="1680" y2="1680" x1="1056" />
            <wire x2="1568" y1="1680" y2="1680" x1="1072" />
        </branch>
        <branch name="DATA(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="1744" type="branch" />
            <wire x2="1072" y1="1744" y2="1744" x1="1056" />
            <wire x2="1568" y1="1744" y2="1744" x1="1072" />
        </branch>
        <branch name="DATA(11)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="1808" type="branch" />
            <wire x2="1072" y1="1808" y2="1808" x1="1056" />
            <wire x2="1568" y1="1808" y2="1808" x1="1072" />
        </branch>
        <branch name="DATA(15)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="1872" type="branch" />
            <wire x2="1072" y1="1872" y2="1872" x1="1056" />
            <wire x2="1568" y1="1872" y2="1872" x1="1072" />
        </branch>
        <branch name="BIT(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2864" y="256" type="branch" />
            <wire x2="2864" y1="256" y2="256" x1="1888" />
        </branch>
        <branch name="BIT(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2864" y="768" type="branch" />
            <wire x2="2864" y1="768" y2="768" x1="1888" />
        </branch>
        <branch name="BIT(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2848" y="1296" type="branch" />
            <wire x2="2848" y1="1296" y2="1296" x1="1888" />
        </branch>
        <branch name="BIT(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2864" y="1776" type="branch" />
            <wire x2="2864" y1="1776" y2="1776" x1="1888" />
        </branch>
        <branch name="DATA(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="624" y="528" type="branch" />
            <wire x2="624" y1="528" y2="528" x1="304" />
        </branch>
        <iomarker fontsize="28" x="304" y="528" name="DATA(15:0)" orien="R180" />
        <branch name="S(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="592" y="2288" type="branch" />
            <wire x2="592" y1="2288" y2="2288" x1="384" />
        </branch>
        <iomarker fontsize="28" x="384" y="2288" name="S(1:0)" orien="R180" />
        <branch name="BIT(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2784" y="512" type="branch" />
            <wire x2="3104" y1="512" y2="512" x1="2784" />
        </branch>
        <iomarker fontsize="28" x="3104" y="512" name="BIT(3:0)" orien="R0" />
    </sheet>
</drawing>