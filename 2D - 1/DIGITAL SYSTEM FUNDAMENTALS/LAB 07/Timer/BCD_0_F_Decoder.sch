<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="D0" />
        <signal name="D1" />
        <signal name="D2" />
        <signal name="D3" />
        <signal name="D4" />
        <signal name="D5" />
        <signal name="D6" />
        <signal name="D8" />
        <signal name="D11" />
        <signal name="D12" />
        <signal name="D7" />
        <signal name="D9" />
        <signal name="D10" />
        <signal name="D13" />
        <signal name="D14" />
        <signal name="D15" />
        <signal name="XLXN_37" />
        <signal name="BIT(0)" />
        <signal name="BIT(1)" />
        <signal name="BIT(2)" />
        <signal name="BIT(3)" />
        <signal name="G" />
        <signal name="F" />
        <signal name="E" />
        <signal name="C" />
        <signal name="A" />
        <signal name="SEG(6)" />
        <signal name="SEG(5)" />
        <signal name="SEG(4)" />
        <signal name="SEG(3)" />
        <signal name="SEG(2)" />
        <signal name="SEG(0)" />
        <signal name="XLXN_38" />
        <signal name="B" />
        <signal name="SEG(1)" />
        <signal name="BIT(3:0)" />
        <signal name="SEG(6:0)" />
        <port polarity="Input" name="BIT(3:0)" />
        <port polarity="Output" name="SEG(6:0)" />
        <blockdef name="d4_16e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-1152" height="1088" />
            <line x2="320" y1="-1088" y2="-1088" x1="384" />
            <line x2="320" y1="-1024" y2="-1024" x1="384" />
            <line x2="320" y1="-960" y2="-960" x1="384" />
            <line x2="320" y1="-896" y2="-896" x1="384" />
            <line x2="320" y1="-832" y2="-832" x1="384" />
            <line x2="320" y1="-768" y2="-768" x1="384" />
            <line x2="320" y1="-704" y2="-704" x1="384" />
            <line x2="320" y1="-640" y2="-640" x1="384" />
            <line x2="320" y1="-576" y2="-576" x1="384" />
            <line x2="320" y1="-512" y2="-512" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-896" y2="-896" x1="0" />
            <line x2="64" y1="-960" y2="-960" x1="0" />
            <line x2="64" y1="-1024" y2="-1024" x1="0" />
            <line x2="64" y1="-1088" y2="-1088" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
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
        <blockdef name="or6">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-320" y2="-320" x1="0" />
            <line x2="48" y1="-384" y2="-384" x1="0" />
            <line x2="192" y1="-224" y2="-224" x1="256" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <arc ex="112" ey="-272" sx="192" sy="-224" r="88" cx="116" cy="-184" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
            <arc ex="192" ey="-224" sx="112" sy="-176" r="88" cx="116" cy="-264" />
            <arc ex="48" ey="-272" sx="48" sy="-176" r="56" cx="16" cy="-224" />
            <line x2="48" y1="-272" y2="-272" x1="112" />
            <line x2="48" y1="-64" y2="-176" x1="48" />
            <line x2="48" y1="-272" y2="-384" x1="48" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="d4_16e" name="XLXI_1">
            <blockpin signalname="BIT(0)" name="A0" />
            <blockpin signalname="BIT(1)" name="A1" />
            <blockpin signalname="BIT(2)" name="A2" />
            <blockpin signalname="BIT(3)" name="A3" />
            <blockpin signalname="XLXN_37" name="E" />
            <blockpin signalname="D0" name="D0" />
            <blockpin signalname="D1" name="D1" />
            <blockpin signalname="D10" name="D10" />
            <blockpin signalname="D11" name="D11" />
            <blockpin signalname="D12" name="D12" />
            <blockpin signalname="D13" name="D13" />
            <blockpin signalname="D14" name="D14" />
            <blockpin signalname="D15" name="D15" />
            <blockpin signalname="D2" name="D2" />
            <blockpin signalname="D3" name="D3" />
            <blockpin signalname="D4" name="D4" />
            <blockpin signalname="D5" name="D5" />
            <blockpin signalname="D6" name="D6" />
            <blockpin signalname="D7" name="D7" />
            <blockpin signalname="D8" name="D8" />
            <blockpin signalname="D9" name="D9" />
        </block>
        <block symbolname="or4" name="XLXI_25">
            <blockpin signalname="D12" name="I0" />
            <blockpin signalname="D7" name="I1" />
            <blockpin signalname="D1" name="I2" />
            <blockpin signalname="D0" name="I3" />
            <blockpin signalname="G" name="O" />
        </block>
        <block symbolname="or5" name="XLXI_26">
            <blockpin signalname="D13" name="I0" />
            <blockpin signalname="D7" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="D2" name="I3" />
            <blockpin signalname="D1" name="I4" />
            <blockpin signalname="F" name="O" />
        </block>
        <block symbolname="or6" name="XLXI_27">
            <blockpin signalname="D9" name="I0" />
            <blockpin signalname="D7" name="I1" />
            <blockpin signalname="D5" name="I2" />
            <blockpin signalname="D4" name="I3" />
            <blockpin signalname="D3" name="I4" />
            <blockpin signalname="D1" name="I5" />
            <blockpin signalname="E" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_31">
            <blockpin signalname="D11" name="I0" />
            <blockpin signalname="D13" name="I1" />
            <blockpin signalname="D4" name="I2" />
            <blockpin signalname="D1" name="I3" />
            <blockpin signalname="A" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_32">
            <blockpin signalname="XLXN_37" name="P" />
        </block>
        <block symbolname="inv" name="XLXI_33">
            <blockpin signalname="G" name="I" />
            <blockpin signalname="SEG(6)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_34">
            <blockpin signalname="F" name="I" />
            <blockpin signalname="SEG(5)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_35">
            <blockpin signalname="E" name="I" />
            <blockpin signalname="SEG(4)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_36">
            <blockpin signalname="XLXN_38" name="I" />
            <blockpin signalname="SEG(3)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_37">
            <blockpin signalname="C" name="I" />
            <blockpin signalname="SEG(2)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_39">
            <blockpin signalname="A" name="I" />
            <blockpin signalname="SEG(0)" name="O" />
        </block>
        <block symbolname="or5" name="XLXI_40">
            <blockpin signalname="D15" name="I0" />
            <blockpin signalname="D10" name="I1" />
            <blockpin signalname="D7" name="I2" />
            <blockpin signalname="D4" name="I3" />
            <blockpin signalname="D1" name="I4" />
            <blockpin signalname="XLXN_38" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_41">
            <blockpin signalname="D15" name="I0" />
            <blockpin signalname="D14" name="I1" />
            <blockpin signalname="D12" name="I2" />
            <blockpin signalname="D2" name="I3" />
            <blockpin signalname="C" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_38">
            <blockpin signalname="B" name="I" />
            <blockpin signalname="SEG(1)" name="O" />
        </block>
        <block symbolname="or6" name="XLXI_43">
            <blockpin signalname="D15" name="I0" />
            <blockpin signalname="D14" name="I1" />
            <blockpin signalname="D12" name="I2" />
            <blockpin signalname="D11" name="I3" />
            <blockpin signalname="D6" name="I4" />
            <blockpin signalname="D5" name="I5" />
            <blockpin signalname="B" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="928" y="1472" name="XLXI_1" orien="R0" />
        <branch name="D0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="384" type="branch" />
            <wire x2="1472" y1="384" y2="384" x1="1312" />
            <wire x2="1744" y1="384" y2="384" x1="1472" />
        </branch>
        <branch name="D1">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="448" type="branch" />
            <wire x2="1472" y1="448" y2="448" x1="1312" />
            <wire x2="1744" y1="448" y2="448" x1="1472" />
        </branch>
        <branch name="D2">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="512" type="branch" />
            <wire x2="1328" y1="512" y2="512" x1="1312" />
            <wire x2="1472" y1="512" y2="512" x1="1328" />
            <wire x2="1728" y1="512" y2="512" x1="1472" />
            <wire x2="1744" y1="512" y2="512" x1="1728" />
        </branch>
        <branch name="D3">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="576" type="branch" />
            <wire x2="1328" y1="576" y2="576" x1="1312" />
            <wire x2="1472" y1="576" y2="576" x1="1328" />
            <wire x2="1728" y1="576" y2="576" x1="1472" />
            <wire x2="1744" y1="576" y2="576" x1="1728" />
        </branch>
        <branch name="D4">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="640" type="branch" />
            <wire x2="1328" y1="640" y2="640" x1="1312" />
            <wire x2="1472" y1="640" y2="640" x1="1328" />
            <wire x2="1728" y1="640" y2="640" x1="1472" />
            <wire x2="1744" y1="640" y2="640" x1="1728" />
        </branch>
        <branch name="D5">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="704" type="branch" />
            <wire x2="1328" y1="704" y2="704" x1="1312" />
            <wire x2="1472" y1="704" y2="704" x1="1328" />
            <wire x2="1728" y1="704" y2="704" x1="1472" />
            <wire x2="1744" y1="704" y2="704" x1="1728" />
        </branch>
        <branch name="D6">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="768" type="branch" />
            <wire x2="1328" y1="768" y2="768" x1="1312" />
            <wire x2="1472" y1="768" y2="768" x1="1328" />
            <wire x2="1728" y1="768" y2="768" x1="1472" />
            <wire x2="1744" y1="768" y2="768" x1="1728" />
        </branch>
        <branch name="D7">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="832" type="branch" />
            <wire x2="1472" y1="832" y2="832" x1="1312" />
            <wire x2="1744" y1="832" y2="832" x1="1472" />
        </branch>
        <branch name="D8">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="896" type="branch" />
            <wire x2="1472" y1="896" y2="896" x1="1312" />
            <wire x2="1744" y1="896" y2="896" x1="1472" />
        </branch>
        <branch name="D9">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="960" type="branch" />
            <wire x2="1472" y1="960" y2="960" x1="1312" />
            <wire x2="1744" y1="960" y2="960" x1="1472" />
        </branch>
        <branch name="D10">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="1024" type="branch" />
            <wire x2="1472" y1="1024" y2="1024" x1="1312" />
            <wire x2="1744" y1="1024" y2="1024" x1="1472" />
        </branch>
        <branch name="D11">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="1088" type="branch" />
            <wire x2="1472" y1="1088" y2="1088" x1="1312" />
            <wire x2="1744" y1="1088" y2="1088" x1="1472" />
        </branch>
        <branch name="D12">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="1152" type="branch" />
            <wire x2="1472" y1="1152" y2="1152" x1="1312" />
            <wire x2="1744" y1="1152" y2="1152" x1="1472" />
        </branch>
        <branch name="D13">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="1216" type="branch" />
            <wire x2="1472" y1="1216" y2="1216" x1="1312" />
            <wire x2="1744" y1="1216" y2="1216" x1="1472" />
        </branch>
        <branch name="D14">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="1280" type="branch" />
            <wire x2="1472" y1="1280" y2="1280" x1="1312" />
            <wire x2="1744" y1="1280" y2="1280" x1="1472" />
        </branch>
        <branch name="D15">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="1344" type="branch" />
            <wire x2="1472" y1="1344" y2="1344" x1="1312" />
            <wire x2="1744" y1="1344" y2="1344" x1="1472" />
        </branch>
        <instance x="2608" y="384" name="XLXI_25" orien="R0" />
        <instance x="2608" y="720" name="XLXI_26" orien="R0" />
        <instance x="2608" y="1136" name="XLXI_27" orien="R0" />
        <instance x="2608" y="2240" name="XLXI_31" orien="R0" />
        <branch name="XLXN_37">
            <wire x2="928" y1="1344" y2="1344" x1="864" />
        </branch>
        <instance x="800" y="1344" name="XLXI_32" orien="R0" />
        <branch name="BIT(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="384" type="branch" />
            <wire x2="896" y1="384" y2="384" x1="784" />
            <wire x2="928" y1="384" y2="384" x1="896" />
        </branch>
        <branch name="BIT(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="448" type="branch" />
            <wire x2="896" y1="448" y2="448" x1="784" />
            <wire x2="928" y1="448" y2="448" x1="896" />
        </branch>
        <branch name="BIT(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="512" type="branch" />
            <wire x2="896" y1="512" y2="512" x1="784" />
            <wire x2="928" y1="512" y2="512" x1="896" />
        </branch>
        <branch name="BIT(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="576" type="branch" />
            <wire x2="896" y1="576" y2="576" x1="784" />
            <wire x2="928" y1="576" y2="576" x1="896" />
        </branch>
        <branch name="D0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="128" type="branch" />
            <wire x2="2592" y1="128" y2="128" x1="2576" />
            <wire x2="2608" y1="128" y2="128" x1="2592" />
        </branch>
        <branch name="D1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="192" type="branch" />
            <wire x2="2592" y1="192" y2="192" x1="2576" />
            <wire x2="2608" y1="192" y2="192" x1="2592" />
        </branch>
        <branch name="D7">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="256" type="branch" />
            <wire x2="2592" y1="256" y2="256" x1="2576" />
            <wire x2="2608" y1="256" y2="256" x1="2592" />
        </branch>
        <branch name="D12">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="320" type="branch" />
            <wire x2="2592" y1="320" y2="320" x1="2576" />
            <wire x2="2608" y1="320" y2="320" x1="2592" />
        </branch>
        <branch name="D1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="400" type="branch" />
            <wire x2="2608" y1="400" y2="400" x1="2576" />
        </branch>
        <branch name="D2">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="464" type="branch" />
            <wire x2="2608" y1="464" y2="464" x1="2576" />
        </branch>
        <branch name="D3">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="528" type="branch" />
            <wire x2="2608" y1="528" y2="528" x1="2576" />
        </branch>
        <branch name="D7">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="592" type="branch" />
            <wire x2="2608" y1="592" y2="592" x1="2576" />
        </branch>
        <branch name="D13">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="656" type="branch" />
            <wire x2="2608" y1="656" y2="656" x1="2576" />
        </branch>
        <branch name="D1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="752" type="branch" />
            <wire x2="2608" y1="752" y2="752" x1="2576" />
        </branch>
        <branch name="D3">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="816" type="branch" />
            <wire x2="2608" y1="816" y2="816" x1="2576" />
        </branch>
        <branch name="D4">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="880" type="branch" />
            <wire x2="2608" y1="880" y2="880" x1="2576" />
        </branch>
        <branch name="D5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="944" type="branch" />
            <wire x2="2608" y1="944" y2="944" x1="2576" />
        </branch>
        <branch name="D7">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="1008" type="branch" />
            <wire x2="2608" y1="1008" y2="1008" x1="2576" />
        </branch>
        <branch name="D9">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="1072" type="branch" />
            <wire x2="2608" y1="1072" y2="1072" x1="2576" />
        </branch>
        <branch name="D1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="1984" type="branch" />
            <wire x2="2608" y1="1984" y2="1984" x1="2576" />
        </branch>
        <branch name="D4">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="2048" type="branch" />
            <wire x2="2608" y1="2048" y2="2048" x1="2576" />
        </branch>
        <branch name="D13">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="2112" type="branch" />
            <wire x2="2608" y1="2112" y2="2112" x1="2576" />
        </branch>
        <branch name="D11">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="2176" type="branch" />
            <wire x2="2608" y1="2176" y2="2176" x1="2576" />
        </branch>
        <branch name="G">
            <wire x2="2880" y1="224" y2="224" x1="2864" />
            <wire x2="2896" y1="224" y2="224" x1="2880" />
        </branch>
        <branch name="F">
            <wire x2="2896" y1="528" y2="528" x1="2864" />
        </branch>
        <branch name="E">
            <wire x2="2896" y1="912" y2="912" x1="2864" />
        </branch>
        <branch name="C">
            <wire x2="2880" y1="1520" y2="1520" x1="2864" />
            <wire x2="2896" y1="1520" y2="1520" x1="2880" />
        </branch>
        <branch name="A">
            <wire x2="2896" y1="2080" y2="2080" x1="2864" />
        </branch>
        <instance x="2896" y="256" name="XLXI_33" orien="R0" />
        <instance x="2896" y="560" name="XLXI_34" orien="R0" />
        <instance x="2896" y="944" name="XLXI_35" orien="R0" />
        <instance x="2896" y="1296" name="XLXI_36" orien="R0" />
        <instance x="2896" y="1552" name="XLXI_37" orien="R0" />
        <instance x="2896" y="2112" name="XLXI_39" orien="R0" />
        <branch name="SEG(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3152" y="224" type="branch" />
            <wire x2="3152" y1="224" y2="224" x1="3120" />
        </branch>
        <branch name="SEG(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3152" y="528" type="branch" />
            <wire x2="3152" y1="528" y2="528" x1="3120" />
        </branch>
        <branch name="SEG(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3152" y="912" type="branch" />
            <wire x2="3152" y1="912" y2="912" x1="3120" />
        </branch>
        <branch name="SEG(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3152" y="1264" type="branch" />
            <wire x2="3152" y1="1264" y2="1264" x1="3120" />
        </branch>
        <branch name="SEG(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3152" y="1520" type="branch" />
            <wire x2="3152" y1="1520" y2="1520" x1="3120" />
        </branch>
        <branch name="SEG(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3152" y="2080" type="branch" />
            <wire x2="3152" y1="2080" y2="2080" x1="3120" />
        </branch>
        <branch name="XLXN_38">
            <wire x2="2896" y1="1264" y2="1264" x1="2864" />
        </branch>
        <instance x="2608" y="1456" name="XLXI_40" orien="R0" />
        <branch name="D1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="1136" type="branch" />
            <wire x2="2608" y1="1136" y2="1136" x1="2560" />
        </branch>
        <branch name="D4">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="1200" type="branch" />
            <wire x2="2608" y1="1200" y2="1200" x1="2560" />
        </branch>
        <branch name="D7">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="1264" type="branch" />
            <wire x2="2608" y1="1264" y2="1264" x1="2560" />
        </branch>
        <branch name="D10">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="1328" type="branch" />
            <wire x2="2608" y1="1328" y2="1328" x1="2560" />
        </branch>
        <branch name="D15">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="1392" type="branch" />
            <wire x2="2608" y1="1392" y2="1392" x1="2576" />
        </branch>
        <instance x="2608" y="1680" name="XLXI_41" orien="R0" />
        <branch name="D2">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="1424" type="branch" />
            <wire x2="2608" y1="1424" y2="1424" x1="2576" />
        </branch>
        <branch name="D12">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="1488" type="branch" />
            <wire x2="2608" y1="1488" y2="1488" x1="2576" />
        </branch>
        <branch name="D14">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="1552" type="branch" />
            <wire x2="2608" y1="1552" y2="1552" x1="2576" />
        </branch>
        <branch name="D15">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="1616" type="branch" />
            <wire x2="2608" y1="1616" y2="1616" x1="2576" />
        </branch>
        <branch name="B">
            <wire x2="2896" y1="1792" y2="1792" x1="2864" />
        </branch>
        <instance x="2896" y="1824" name="XLXI_38" orien="R0" />
        <branch name="SEG(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3152" y="1792" type="branch" />
            <wire x2="3152" y1="1792" y2="1792" x1="3120" />
        </branch>
        <instance x="2608" y="2016" name="XLXI_43" orien="R0" />
        <branch name="D5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="1632" type="branch" />
            <wire x2="2608" y1="1632" y2="1632" x1="2576" />
        </branch>
        <branch name="D6">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="1696" type="branch" />
            <wire x2="2608" y1="1696" y2="1696" x1="2576" />
        </branch>
        <branch name="D11">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="1760" type="branch" />
            <wire x2="2608" y1="1760" y2="1760" x1="2576" />
        </branch>
        <branch name="D12">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="1824" type="branch" />
            <wire x2="2608" y1="1824" y2="1824" x1="2576" />
        </branch>
        <branch name="D14">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="1888" type="branch" />
            <wire x2="2608" y1="1888" y2="1888" x1="2576" />
        </branch>
        <branch name="D15">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="1952" type="branch" />
            <wire x2="2608" y1="1952" y2="1952" x1="2576" />
        </branch>
        <branch name="BIT(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="656" y="208" type="branch" />
            <wire x2="656" y1="208" y2="208" x1="368" />
        </branch>
        <iomarker fontsize="28" x="368" y="208" name="BIT(3:0)" orien="R180" />
        <branch name="SEG(6:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2608" y="2512" type="branch" />
            <wire x2="3040" y1="2512" y2="2512" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="3040" y="2512" name="SEG(6:0)" orien="R0" />
    </sheet>
</drawing>