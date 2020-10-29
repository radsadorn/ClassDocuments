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
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="CLR">
            <attr value="P47" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="SW">
            <attr value="TRUE" name="CLOCK_DEDICATED_ROUTE">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
            <attr value="P45" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="OSC">
            <attr value="P123" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="XLXN_86" />
        <signal name="XLXN_93" />
        <signal name="XLXN_95" />
        <signal name="SEG(6:0)" />
        <signal name="SEG(6)">
            <attr value="P27" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="SEG(5)">
            <attr value="P29" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="SEG(4)">
            <attr value="P32" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="SEG(3)">
            <attr value="P34" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="SEG(2)">
            <attr value="P35" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="SEG(1)">
            <attr value="P40" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="SEG(0)">
            <attr value="P41" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="COMMON(3:0)" />
        <signal name="COMMON(1)">
            <attr value="P43" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="COMMON(2)">
            <attr value="P33" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="COMMON(3)">
            <attr value="P30" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="COMMON(0)">
            <attr value="P44" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="SEG(7)">
            <attr value="P26" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <port polarity="Input" name="CLR" />
        <port polarity="Input" name="SW" />
        <port polarity="Input" name="OSC" />
        <port polarity="Output" name="SEG(6)" />
        <port polarity="Output" name="SEG(5)" />
        <port polarity="Output" name="SEG(4)" />
        <port polarity="Output" name="SEG(3)" />
        <port polarity="Output" name="SEG(2)" />
        <port polarity="Output" name="SEG(1)" />
        <port polarity="Output" name="SEG(0)" />
        <port polarity="Output" name="COMMON(1)" />
        <port polarity="Output" name="COMMON(2)" />
        <port polarity="Output" name="COMMON(3)" />
        <port polarity="Output" name="COMMON(0)" />
        <port polarity="Output" name="SEG(7)" />
        <blockdef name="DISPLAY">
            <timestamp>2020-10-29T17:15:31</timestamp>
            <rect width="256" x="64" y="-1152" height="1152" />
            <line x2="0" y1="-1120" y2="-1120" x1="64" />
            <line x2="0" y1="-1056" y2="-1056" x1="64" />
            <line x2="0" y1="-992" y2="-992" x1="64" />
            <line x2="0" y1="-928" y2="-928" x1="64" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-1056" y2="-1056" x1="320" />
            <rect width="64" x="320" y="-1068" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-1120" y2="-1120" x1="320" />
            <rect width="64" x="320" y="-1132" height="24" />
        </blockdef>
        <blockdef name="Timer">
            <timestamp>2020-10-28T7:55:53</timestamp>
            <rect width="256" x="64" y="-1024" height="1024" />
            <line x2="384" y1="-992" y2="-992" x1="320" />
            <line x2="384" y1="-928" y2="-928" x1="320" />
            <line x2="384" y1="-864" y2="-864" x1="320" />
            <line x2="384" y1="-800" y2="-800" x1="320" />
            <line x2="384" y1="-736" y2="-736" x1="320" />
            <line x2="384" y1="-672" y2="-672" x1="320" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="0" y1="-992" y2="-992" x1="64" />
            <line x2="0" y1="-928" y2="-928" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Control">
            <timestamp>2020-10-28T8:34:54</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="Timer" name="XLXI_14">
            <blockpin signalname="XLXN_1" name="A0" />
            <blockpin signalname="XLXN_2" name="A1" />
            <blockpin signalname="XLXN_3" name="A2" />
            <blockpin signalname="XLXN_4" name="A3" />
            <blockpin signalname="XLXN_5" name="B0" />
            <blockpin signalname="XLXN_6" name="B1" />
            <blockpin signalname="XLXN_7" name="B2" />
            <blockpin signalname="XLXN_8" name="B3" />
            <blockpin signalname="XLXN_9" name="C0" />
            <blockpin signalname="XLXN_10" name="C1" />
            <blockpin signalname="XLXN_11" name="C2" />
            <blockpin signalname="XLXN_12" name="C3" />
            <blockpin signalname="XLXN_93" name="CLK" />
            <blockpin signalname="XLXN_86" name="CLR" />
            <blockpin signalname="XLXN_13" name="D0" />
            <blockpin signalname="XLXN_14" name="D1" />
            <blockpin signalname="XLXN_15" name="D2" />
            <blockpin signalname="XLXN_16" name="D3" />
        </block>
        <block symbolname="Control" name="XLXI_25">
            <blockpin signalname="XLXN_95" name="CLK_DISPLAY" />
            <blockpin signalname="XLXN_93" name="CLK_TIMER" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="XLXN_86" name="CLR_OUT" />
            <blockpin signalname="OSC" name="OSC" />
            <blockpin signalname="SW" name="SW" />
        </block>
        <block symbolname="DISPLAY" name="XLXI_27">
            <blockpin signalname="XLXN_1" name="A0" />
            <blockpin signalname="XLXN_2" name="A1" />
            <blockpin signalname="XLXN_3" name="A2" />
            <blockpin signalname="XLXN_4" name="A3" />
            <blockpin signalname="XLXN_5" name="B0" />
            <blockpin signalname="XLXN_6" name="B1" />
            <blockpin signalname="XLXN_7" name="B2" />
            <blockpin signalname="XLXN_8" name="B3" />
            <blockpin signalname="XLXN_9" name="C0" />
            <blockpin signalname="XLXN_10" name="C1" />
            <blockpin signalname="XLXN_11" name="C2" />
            <blockpin signalname="XLXN_12" name="C3" />
            <blockpin signalname="XLXN_95" name="CLK_DISPLAY" />
            <blockpin signalname="XLXN_93" name="CLK_DOT" />
            <blockpin signalname="COMMON(3:0)" name="COMMON(3:0)" />
            <blockpin signalname="XLXN_13" name="D0" />
            <blockpin signalname="XLXN_14" name="D1" />
            <blockpin signalname="XLXN_15" name="D2" />
            <blockpin signalname="XLXN_16" name="D3" />
            <blockpin signalname="SEG(6:0)" name="SEG(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="CLR">
            <wire x2="672" y1="1680" y2="1680" x1="416" />
        </branch>
        <iomarker fontsize="28" x="416" y="1680" name="CLR" orien="R180" />
        <instance x="1504" y="1568" name="XLXI_14" orien="R0">
        </instance>
        <branch name="SW">
            <wire x2="672" y1="1744" y2="1744" x1="400" />
        </branch>
        <iomarker fontsize="28" x="400" y="1744" name="SW" orien="R180" />
        <branch name="OSC">
            <wire x2="672" y1="1808" y2="1808" x1="416" />
        </branch>
        <iomarker fontsize="28" x="416" y="1808" name="OSC" orien="R180" />
        <branch name="XLXN_86">
            <wire x2="1328" y1="1680" y2="1680" x1="1056" />
            <wire x2="1504" y1="640" y2="640" x1="1328" />
            <wire x2="1328" y1="640" y2="1680" x1="1328" />
        </branch>
        <branch name="XLXN_93">
            <wire x2="1280" y1="1744" y2="1744" x1="1056" />
            <wire x2="1616" y1="1744" y2="1744" x1="1280" />
            <wire x2="1504" y1="576" y2="576" x1="1280" />
            <wire x2="1280" y1="576" y2="1744" x1="1280" />
            <wire x2="1616" y1="1600" y2="1744" x1="1616" />
            <wire x2="2288" y1="1600" y2="1600" x1="1616" />
        </branch>
        <instance x="672" y="1840" name="XLXI_25" orien="R0">
        </instance>
        <branch name="XLXN_15">
            <wire x2="2288" y1="1472" y2="1472" x1="1888" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="2288" y1="1408" y2="1408" x1="1888" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="2288" y1="1344" y2="1344" x1="1888" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="2288" y1="1280" y2="1280" x1="1888" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="2288" y1="1216" y2="1216" x1="1888" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="2288" y1="1152" y2="1152" x1="1888" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="2288" y1="1088" y2="1088" x1="1888" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="2288" y1="1024" y2="1024" x1="1888" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="2288" y1="960" y2="960" x1="1888" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="2288" y1="896" y2="896" x1="1888" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="2288" y1="832" y2="832" x1="1888" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="2288" y1="768" y2="768" x1="1888" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="2288" y1="704" y2="704" x1="1888" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="2288" y1="640" y2="640" x1="1888" />
        </branch>
        <branch name="XLXN_1">
            <wire x2="2288" y1="576" y2="576" x1="1888" />
        </branch>
        <branch name="SEG(6)">
            <wire x2="3200" y1="928" y2="928" x1="3056" />
        </branch>
        <branch name="SEG(5)">
            <wire x2="3200" y1="864" y2="864" x1="3056" />
        </branch>
        <branch name="SEG(4)">
            <wire x2="3200" y1="800" y2="800" x1="3056" />
        </branch>
        <branch name="SEG(2)">
            <wire x2="3200" y1="672" y2="672" x1="3056" />
        </branch>
        <branch name="SEG(1)">
            <wire x2="3200" y1="608" y2="608" x1="3056" />
        </branch>
        <branch name="SEG(0)">
            <wire x2="3200" y1="544" y2="544" x1="3056" />
        </branch>
        <iomarker fontsize="28" x="3200" y="544" name="SEG(0)" orien="R0" />
        <iomarker fontsize="28" x="3200" y="736" name="SEG(3)" orien="R0" />
        <iomarker fontsize="28" x="3200" y="928" name="SEG(6)" orien="R0" />
        <iomarker fontsize="28" x="3200" y="864" name="SEG(5)" orien="R0" />
        <iomarker fontsize="28" x="3200" y="800" name="SEG(4)" orien="R0" />
        <iomarker fontsize="28" x="3200" y="672" name="SEG(2)" orien="R0" />
        <iomarker fontsize="28" x="3200" y="608" name="SEG(1)" orien="R0" />
        <bustap x2="3056" y1="544" y2="544" x1="2960" />
        <bustap x2="3056" y1="608" y2="608" x1="2960" />
        <bustap x2="3056" y1="672" y2="672" x1="2960" />
        <bustap x2="3056" y1="736" y2="736" x1="2960" />
        <bustap x2="3056" y1="800" y2="800" x1="2960" />
        <bustap x2="3056" y1="864" y2="864" x1="2960" />
        <branch name="SEG(3)">
            <wire x2="3200" y1="736" y2="736" x1="3056" />
        </branch>
        <branch name="XLXN_95">
            <wire x2="1680" y1="1808" y2="1808" x1="1056" />
            <wire x2="1680" y1="1664" y2="1808" x1="1680" />
            <wire x2="2288" y1="1664" y2="1664" x1="1680" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="2288" y1="1536" y2="1536" x1="1888" />
        </branch>
        <instance x="2288" y="1696" name="XLXI_27" orien="R0">
        </instance>
        <branch name="COMMON(1)">
            <wire x2="3200" y1="1216" y2="1216" x1="2928" />
        </branch>
        <branch name="COMMON(2)">
            <wire x2="3200" y1="1280" y2="1280" x1="2928" />
        </branch>
        <branch name="COMMON(3)">
            <wire x2="3200" y1="1344" y2="1344" x1="2928" />
        </branch>
        <branch name="COMMON(0)">
            <wire x2="3200" y1="1152" y2="1152" x1="2928" />
        </branch>
        <iomarker fontsize="28" x="3200" y="1152" name="COMMON(0)" orien="R0" />
        <iomarker fontsize="28" x="3200" y="1280" name="COMMON(2)" orien="R0" />
        <iomarker fontsize="28" x="3200" y="1344" name="COMMON(3)" orien="R0" />
        <iomarker fontsize="28" x="3200" y="1216" name="COMMON(1)" orien="R0" />
        <bustap x2="3056" y1="928" y2="928" x1="2960" />
        <bustap x2="3056" y1="992" y2="992" x1="2960" />
        <branch name="SEG(6:0)">
            <wire x2="2960" y1="576" y2="576" x1="2672" />
            <wire x2="2960" y1="576" y2="608" x1="2960" />
            <wire x2="2960" y1="608" y2="672" x1="2960" />
            <wire x2="2960" y1="672" y2="736" x1="2960" />
            <wire x2="2960" y1="736" y2="800" x1="2960" />
            <wire x2="2960" y1="800" y2="864" x1="2960" />
            <wire x2="2960" y1="864" y2="928" x1="2960" />
            <wire x2="2960" y1="928" y2="992" x1="2960" />
            <wire x2="2960" y1="544" y2="576" x1="2960" />
        </branch>
        <branch name="SEG(7)">
            <wire x2="3200" y1="992" y2="992" x1="3056" />
        </branch>
        <iomarker fontsize="28" x="3200" y="992" name="SEG(7)" orien="R0" />
        <bustap x2="2928" y1="1152" y2="1152" x1="2832" />
        <bustap x2="2928" y1="1216" y2="1216" x1="2832" />
        <bustap x2="2928" y1="1280" y2="1280" x1="2832" />
        <bustap x2="2928" y1="1344" y2="1344" x1="2832" />
        <branch name="COMMON(3:0)">
            <wire x2="2832" y1="640" y2="640" x1="2672" />
            <wire x2="2832" y1="640" y2="1152" x1="2832" />
            <wire x2="2832" y1="1152" y2="1216" x1="2832" />
            <wire x2="2832" y1="1216" y2="1280" x1="2832" />
            <wire x2="2832" y1="1280" y2="1344" x1="2832" />
        </branch>
    </sheet>
</drawing>