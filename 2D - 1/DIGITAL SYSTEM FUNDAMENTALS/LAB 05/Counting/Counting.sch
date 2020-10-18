<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="B" />
        <signal name="A" />
        <signal name="C" />
        <signal name="D" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="XLXN_48" />
        <signal name="XLXN_49" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="XLXN_56" />
        <signal name="XLXN_57" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="D" />
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
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="or5">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="72" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="48" y1="-320" y2="-320" x1="0" />
            <line x2="192" y1="-192" y2="-192" x1="256" />
            <arc ex="192" ey="-192" sx="112" sy="-144" r="88" cx="116" cy="-232" />
            <line x2="48" y1="-240" y2="-240" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <line x2="48" y1="-64" y2="-144" x1="48" />
            <line x2="48" y1="-320" y2="-240" x1="48" />
            <arc ex="112" ey="-240" sx="192" sy="-192" r="88" cx="116" cy="-152" />
            <arc ex="48" ey="-240" sx="48" sy="-144" r="56" cx="16" cy="-192" />
        </blockdef>
        <block symbolname="or4" name="XLXI_4">
            <blockpin signalname="D" name="I0" />
            <blockpin signalname="XLXN_34" name="I1" />
            <blockpin signalname="XLXN_33" name="I2" />
            <blockpin signalname="XLXN_32" name="I3" />
            <blockpin name="O" />
        </block>
        <block symbolname="inv" name="XLXI_17">
            <blockpin signalname="B" name="I" />
            <blockpin signalname="XLXN_47" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_15">
            <blockpin signalname="A" name="I" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_18">
            <blockpin signalname="C" name="I" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_19">
            <blockpin signalname="D" name="I" />
            <blockpin name="O" />
        </block>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="XLXN_11" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="XLXN_32" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="A" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="XLXN_34" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_35">
            <blockpin signalname="XLXN_11" name="I0" />
            <blockpin signalname="XLXN_47" name="I1" />
            <blockpin signalname="XLXN_44" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_36">
            <blockpin signalname="A" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="XLXN_45" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_37">
            <blockpin signalname="XLXN_12" name="I0" />
            <blockpin signalname="XLXN_45" name="I1" />
            <blockpin signalname="XLXN_44" name="I2" />
            <blockpin name="O" />
        </block>
        <block symbolname="or3" name="XLXI_38">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_47" name="I2" />
            <blockpin name="O" />
        </block>
        <block symbolname="and2" name="XLXI_39">
            <blockpin signalname="XLXN_11" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin name="O" />
        </block>
        <block symbolname="and2" name="XLXI_40">
            <blockpin signalname="XLXN_12" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin name="O" />
        </block>
        <block symbolname="and2" name="XLXI_41">
            <blockpin name="I0" />
            <blockpin signalname="XLXN_57" name="I1" />
            <blockpin name="O" />
        </block>
        <block symbolname="and3" name="XLXI_42">
            <blockpin name="I0" />
            <blockpin name="I1" />
            <blockpin name="I2" />
            <blockpin name="O" />
        </block>
        <block symbolname="or5" name="XLXI_43">
            <blockpin name="I0" />
            <blockpin name="I1" />
            <blockpin name="I2" />
            <blockpin name="I3" />
            <blockpin name="I4" />
            <blockpin name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="B">
            <wire x2="272" y1="112" y2="128" x1="272" />
            <wire x2="352" y1="128" y2="128" x1="272" />
            <wire x2="352" y1="128" y2="144" x1="352" />
            <wire x2="272" y1="128" y2="624" x1="272" />
            <wire x2="544" y1="624" y2="624" x1="272" />
            <wire x2="272" y1="624" y2="896" x1="272" />
            <wire x2="832" y1="896" y2="896" x1="272" />
            <wire x2="272" y1="896" y2="1328" x1="272" />
            <wire x2="272" y1="1328" y2="1392" x1="272" />
            <wire x2="272" y1="1392" y2="1424" x1="272" />
            <wire x2="272" y1="1424" y2="1696" x1="272" />
            <wire x2="832" y1="1328" y2="1328" x1="272" />
            <wire x2="544" y1="576" y2="624" x1="544" />
            <wire x2="832" y1="576" y2="576" x1="544" />
        </branch>
        <branch name="A">
            <wire x2="64" y1="112" y2="128" x1="64" />
            <wire x2="176" y1="128" y2="128" x1="64" />
            <wire x2="176" y1="128" y2="144" x1="176" />
            <wire x2="64" y1="128" y2="704" x1="64" />
            <wire x2="832" y1="704" y2="704" x1="64" />
            <wire x2="64" y1="704" y2="960" x1="64" />
            <wire x2="832" y1="960" y2="960" x1="64" />
            <wire x2="64" y1="960" y2="1120" x1="64" />
            <wire x2="64" y1="1120" y2="1424" x1="64" />
            <wire x2="64" y1="1424" y2="1696" x1="64" />
            <wire x2="1152" y1="1120" y2="1120" x1="64" />
            <wire x2="832" y1="688" y2="704" x1="832" />
        </branch>
        <branch name="C">
            <wire x2="432" y1="112" y2="128" x1="432" />
            <wire x2="512" y1="128" y2="128" x1="432" />
            <wire x2="512" y1="128" y2="144" x1="512" />
            <wire x2="432" y1="128" y2="688" x1="432" />
            <wire x2="624" y1="688" y2="688" x1="432" />
            <wire x2="432" y1="688" y2="1184" x1="432" />
            <wire x2="432" y1="1184" y2="1440" x1="432" />
            <wire x2="432" y1="1440" y2="1696" x1="432" />
            <wire x2="1152" y1="1184" y2="1184" x1="432" />
            <wire x2="624" y1="624" y2="688" x1="624" />
            <wire x2="832" y1="624" y2="624" x1="624" />
        </branch>
        <branch name="D">
            <wire x2="592" y1="112" y2="128" x1="592" />
            <wire x2="672" y1="128" y2="128" x1="592" />
            <wire x2="672" y1="128" y2="144" x1="672" />
            <wire x2="592" y1="128" y2="736" x1="592" />
            <wire x2="1168" y1="736" y2="736" x1="592" />
            <wire x2="592" y1="736" y2="1408" x1="592" />
            <wire x2="592" y1="1408" y2="1696" x1="592" />
            <wire x2="1168" y1="704" y2="736" x1="1168" />
        </branch>
        <instance x="320" y="144" name="XLXI_17" orien="R90" />
        <instance x="144" y="144" name="XLXI_15" orien="R90" />
        <instance x="480" y="144" name="XLXI_18" orien="R90" />
        <instance x="640" y="144" name="XLXI_19" orien="R90" />
        <branch name="XLXN_11">
            <wire x2="176" y1="368" y2="464" x1="176" />
            <wire x2="832" y1="464" y2="464" x1="176" />
            <wire x2="176" y1="464" y2="848" x1="176" />
            <wire x2="832" y1="848" y2="848" x1="176" />
            <wire x2="176" y1="848" y2="1280" x1="176" />
            <wire x2="832" y1="1280" y2="1280" x1="176" />
        </branch>
        <iomarker fontsize="28" x="64" y="112" name="A" orien="R270" />
        <iomarker fontsize="28" x="272" y="112" name="B" orien="R270" />
        <iomarker fontsize="28" x="432" y="112" name="C" orien="R270" />
        <iomarker fontsize="28" x="592" y="112" name="D" orien="R270" />
        <instance x="832" y="528" name="XLXI_1" orien="R0" />
        <branch name="XLXN_32">
            <wire x2="1168" y1="432" y2="432" x1="1088" />
            <wire x2="1168" y1="432" y2="512" x1="1168" />
        </branch>
        <instance x="1168" y="768" name="XLXI_4" orien="R0" />
        <branch name="XLXN_33">
            <wire x2="1152" y1="544" y2="544" x1="1088" />
            <wire x2="1152" y1="544" y2="576" x1="1152" />
            <wire x2="1168" y1="576" y2="576" x1="1152" />
        </branch>
        <branch name="XLXN_34">
            <wire x2="1152" y1="656" y2="656" x1="1088" />
            <wire x2="1168" y1="640" y2="640" x1="1152" />
            <wire x2="1152" y1="640" y2="656" x1="1152" />
        </branch>
        <instance x="832" y="640" name="XLXI_2" orien="R0" />
        <instance x="832" y="752" name="XLXI_3" orien="R0" />
        <instance x="832" y="912" name="XLXI_35" orien="R0" />
        <instance x="832" y="1024" name="XLXI_36" orien="R0" />
        <instance x="1168" y="1056" name="XLXI_37" orien="R0" />
        <branch name="XLXN_44">
            <wire x2="1168" y1="816" y2="816" x1="1088" />
            <wire x2="1168" y1="816" y2="864" x1="1168" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="1168" y1="928" y2="928" x1="1088" />
        </branch>
        <branch name="XLXN_47">
            <wire x2="352" y1="368" y2="784" x1="352" />
            <wire x2="832" y1="784" y2="784" x1="352" />
            <wire x2="352" y1="784" y2="1056" x1="352" />
            <wire x2="1152" y1="1056" y2="1056" x1="352" />
        </branch>
        <instance x="1152" y="1248" name="XLXI_38" orien="R0" />
        <instance x="832" y="1344" name="XLXI_39" orien="R0" />
        <instance x="832" y="1456" name="XLXI_40" orien="R0" />
        <instance x="832" y="1568" name="XLXI_41" orien="R0" />
        <instance x="832" y="1744" name="XLXI_42" orien="R0" />
        <instance x="1200" y="1664" name="XLXI_43" orien="R0" />
        <branch name="XLXN_12">
            <wire x2="512" y1="368" y2="432" x1="512" />
            <wire x2="512" y1="432" y2="512" x1="512" />
            <wire x2="832" y1="512" y2="512" x1="512" />
            <wire x2="512" y1="512" y2="992" x1="512" />
            <wire x2="1168" y1="992" y2="992" x1="512" />
            <wire x2="512" y1="992" y2="1216" x1="512" />
            <wire x2="832" y1="1216" y2="1216" x1="512" />
            <wire x2="512" y1="1216" y2="1392" x1="512" />
            <wire x2="832" y1="1392" y2="1392" x1="512" />
            <wire x2="736" y1="432" y2="432" x1="512" />
            <wire x2="832" y1="400" y2="400" x1="736" />
            <wire x2="736" y1="400" y2="432" x1="736" />
        </branch>
        <branch name="XLXN_57">
            <wire x2="624" y1="1424" y2="1440" x1="624" />
            <wire x2="832" y1="1440" y2="1440" x1="624" />
        </branch>
    </sheet>
</drawing>