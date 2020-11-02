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
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="A" />
        <signal name="B" />
        <signal name="CARRIER" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="CARRIER_OUT" />
        <signal name="BIT_OUT" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="CARRIER" />
        <port polarity="Output" name="CARRIER_OUT" />
        <port polarity="Output" name="BIT_OUT" />
        <blockdef name="nand2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
        </blockdef>
        <blockdef name="nand3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="216" y1="-128" y2="-128" x1="256" />
            <circle r="12" cx="204" cy="-128" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="nand4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="216" y1="-160" y2="-160" x1="256" />
            <circle r="12" cx="204" cy="-160" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="64" y1="-112" y2="-112" x1="144" />
        </blockdef>
        <block symbolname="nand2" name="XLXI_6">
            <blockpin signalname="CARRIER" name="I0" />
            <blockpin signalname="CARRIER" name="I1" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_7">
            <blockpin signalname="CARRIER" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_8">
            <blockpin signalname="CARRIER" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_9">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_11">
            <blockpin signalname="CARRIER" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="A" name="I2" />
            <blockpin signalname="XLXN_54" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_13">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="XLXN_3" name="I2" />
            <blockpin signalname="XLXN_52" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_1">
            <blockpin signalname="A" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_2">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_10">
            <blockpin signalname="XLXN_9" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_7" name="I2" />
            <blockpin signalname="CARRIER_OUT" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_14">
            <blockpin signalname="CARRIER" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="XLXN_1" name="I2" />
            <blockpin signalname="XLXN_51" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_4">
            <blockpin signalname="CARRIER" name="I0" />
            <blockpin signalname="CARRIER" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_3">
            <blockpin signalname="A" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_5">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_12">
            <blockpin signalname="XLXN_6" name="I0" />
            <blockpin signalname="XLXN_5" name="I1" />
            <blockpin signalname="A" name="I2" />
            <blockpin signalname="XLXN_53" name="O" />
        </block>
        <block symbolname="nand4" name="XLXI_32">
            <blockpin signalname="XLXN_54" name="I0" />
            <blockpin signalname="XLXN_53" name="I1" />
            <blockpin signalname="XLXN_52" name="I2" />
            <blockpin signalname="XLXN_51" name="I3" />
            <blockpin signalname="BIT_OUT" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1792" y="1584" name="XLXI_6" orien="R0" />
        <instance x="1792" y="2128" name="XLXI_7" orien="R0" />
        <instance x="1792" y="2304" name="XLXI_8" orien="R0" />
        <instance x="1792" y="2512" name="XLXI_9" orien="R0" />
        <instance x="2224" y="1904" name="XLXI_11" orien="R0" />
        <instance x="2208" y="1056" name="XLXI_13" orien="R0" />
        <instance x="1792" y="544" name="XLXI_1" orien="R0" />
        <instance x="1792" y="688" name="XLXI_2" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="2176" y1="448" y2="448" x1="2048" />
            <wire x2="2176" y1="448" y2="528" x1="2176" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="2176" y1="592" y2="592" x1="2048" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="2192" y1="832" y2="832" x1="2048" />
            <wire x2="2192" y1="832" y2="864" x1="2192" />
            <wire x2="2208" y1="864" y2="864" x1="2192" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="2208" y1="1040" y2="1040" x1="2048" />
            <wire x2="2208" y1="992" y2="1040" x1="2208" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="2208" y1="1328" y2="1328" x1="2048" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="2208" y1="1488" y2="1488" x1="2048" />
            <wire x2="2208" y1="1392" y2="1488" x1="2208" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="2224" y1="2032" y2="2032" x1="2048" />
            <wire x2="2224" y1="2032" y2="2144" x1="2224" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="2224" y1="2208" y2="2208" x1="2048" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="2224" y1="2416" y2="2416" x1="2048" />
            <wire x2="2224" y1="2272" y2="2416" x1="2224" />
        </branch>
        <instance x="2224" y="2336" name="XLXI_10" orien="R0" />
        <instance x="2176" y="720" name="XLXI_14" orien="R0" />
        <instance x="1792" y="1136" name="XLXI_4" orien="R0" />
        <instance x="1792" y="928" name="XLXI_3" orien="R0" />
        <instance x="1792" y="1424" name="XLXI_5" orien="R0" />
        <instance x="2208" y="1456" name="XLXI_12" orien="R0" />
        <branch name="A">
            <wire x2="1568" y1="416" y2="416" x1="1312" />
            <wire x2="1792" y1="416" y2="416" x1="1568" />
            <wire x2="1568" y1="416" y2="480" x1="1568" />
            <wire x2="1792" y1="480" y2="480" x1="1568" />
            <wire x2="1568" y1="480" y2="800" x1="1568" />
            <wire x2="1792" y1="800" y2="800" x1="1568" />
            <wire x2="1568" y1="800" y2="864" x1="1568" />
            <wire x2="1792" y1="864" y2="864" x1="1568" />
            <wire x2="1568" y1="864" y2="1168" x1="1568" />
            <wire x2="2208" y1="1168" y2="1168" x1="1568" />
            <wire x2="2208" y1="1168" y2="1264" x1="2208" />
            <wire x2="1568" y1="1168" y2="1712" x1="1568" />
            <wire x2="2224" y1="1712" y2="1712" x1="1568" />
            <wire x2="1568" y1="1712" y2="2176" x1="1568" />
            <wire x2="1792" y1="2176" y2="2176" x1="1568" />
            <wire x2="1568" y1="2176" y2="2384" x1="1568" />
            <wire x2="1792" y1="2384" y2="2384" x1="1568" />
        </branch>
        <branch name="B">
            <wire x2="1488" y1="560" y2="560" x1="1312" />
            <wire x2="1792" y1="560" y2="560" x1="1488" />
            <wire x2="1488" y1="560" y2="624" x1="1488" />
            <wire x2="1792" y1="624" y2="624" x1="1488" />
            <wire x2="1488" y1="624" y2="928" x1="1488" />
            <wire x2="2208" y1="928" y2="928" x1="1488" />
            <wire x2="1488" y1="928" y2="1296" x1="1488" />
            <wire x2="1792" y1="1296" y2="1296" x1="1488" />
            <wire x2="1488" y1="1296" y2="1360" x1="1488" />
            <wire x2="1792" y1="1360" y2="1360" x1="1488" />
            <wire x2="1488" y1="1360" y2="1776" x1="1488" />
            <wire x2="2224" y1="1776" y2="1776" x1="1488" />
            <wire x2="1488" y1="1776" y2="2000" x1="1488" />
            <wire x2="1792" y1="2000" y2="2000" x1="1488" />
            <wire x2="1488" y1="2000" y2="2448" x1="1488" />
            <wire x2="1792" y1="2448" y2="2448" x1="1488" />
        </branch>
        <branch name="CARRIER">
            <wire x2="1680" y1="736" y2="736" x1="1312" />
            <wire x2="2176" y1="736" y2="736" x1="1680" />
            <wire x2="1680" y1="736" y2="1008" x1="1680" />
            <wire x2="1792" y1="1008" y2="1008" x1="1680" />
            <wire x2="1680" y1="1008" y2="1072" x1="1680" />
            <wire x2="1792" y1="1072" y2="1072" x1="1680" />
            <wire x2="1680" y1="1072" y2="1456" x1="1680" />
            <wire x2="1792" y1="1456" y2="1456" x1="1680" />
            <wire x2="1680" y1="1456" y2="1520" x1="1680" />
            <wire x2="1792" y1="1520" y2="1520" x1="1680" />
            <wire x2="1680" y1="1520" y2="1840" x1="1680" />
            <wire x2="2224" y1="1840" y2="1840" x1="1680" />
            <wire x2="1680" y1="1840" y2="2064" x1="1680" />
            <wire x2="1792" y1="2064" y2="2064" x1="1680" />
            <wire x2="1680" y1="2064" y2="2240" x1="1680" />
            <wire x2="1792" y1="2240" y2="2240" x1="1680" />
            <wire x2="2176" y1="656" y2="736" x1="2176" />
        </branch>
        <iomarker fontsize="28" x="1312" y="416" name="A" orien="R180" />
        <iomarker fontsize="28" x="1312" y="560" name="B" orien="R180" />
        <iomarker fontsize="28" x="1312" y="736" name="CARRIER" orien="R180" />
        <instance x="2816" y="1264" name="XLXI_32" orien="R0" />
        <branch name="XLXN_51">
            <wire x2="2448" y1="592" y2="592" x1="2432" />
            <wire x2="2816" y1="592" y2="592" x1="2448" />
            <wire x2="2816" y1="592" y2="1008" x1="2816" />
        </branch>
        <branch name="XLXN_52">
            <wire x2="2640" y1="928" y2="928" x1="2464" />
            <wire x2="2640" y1="928" y2="1072" x1="2640" />
            <wire x2="2816" y1="1072" y2="1072" x1="2640" />
        </branch>
        <branch name="XLXN_53">
            <wire x2="2640" y1="1328" y2="1328" x1="2464" />
            <wire x2="2640" y1="1136" y2="1328" x1="2640" />
            <wire x2="2816" y1="1136" y2="1136" x1="2640" />
        </branch>
        <branch name="XLXN_54">
            <wire x2="2816" y1="1776" y2="1776" x1="2480" />
            <wire x2="2816" y1="1200" y2="1776" x1="2816" />
        </branch>
        <branch name="CARRIER_OUT">
            <wire x2="3104" y1="2208" y2="2208" x1="2480" />
        </branch>
        <branch name="BIT_OUT">
            <wire x2="3136" y1="1104" y2="1104" x1="3072" />
        </branch>
        <iomarker fontsize="28" x="3136" y="1104" name="BIT_OUT" orien="R0" />
        <iomarker fontsize="28" x="3104" y="2208" name="CARRIER_OUT" orien="R0" />
    </sheet>
</drawing>