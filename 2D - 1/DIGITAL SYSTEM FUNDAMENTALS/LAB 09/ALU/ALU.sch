<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_11(7:0)" />
        <signal name="XLXN_26(3:0)" />
        <signal name="S(0)">
            <attr value="P82" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="S(1)">
            <attr value="P81" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="XLXN_12(7:0)" />
        <signal name="XLXN_13(7:0)" />
        <signal name="XLXN_14(7:0)" />
        <signal name="XLXN_89(7:0)" />
        <signal name="S(1:0)" />
        <signal name="XLXN_80">
            <attr value="P47" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
            <attr value="true" name="CLOCK_DEDICATED_ROUTE">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="DATA(7:0)" />
        <signal name="DATA(3:0)" />
        <signal name="DATA(7:4)" />
        <signal name="comm_0">
            <attr value="P44" name="LOC">
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
        <signal name="A(7:0)" />
        <signal name="B(7:0)" />
        <signal name="comm_3">
            <attr value="P30" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="SEVSEG(6:0)" />
        <signal name="XLXN_266" />
        <signal name="XLXN_269" />
        <signal name="comm_2">
            <attr value="P33" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="XLXN_277" />
        <signal name="comm_1">
            <attr value="P43" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <port polarity="Output" name="S(0)" />
        <port polarity="Output" name="S(1)" />
        <port polarity="Input" name="XLXN_80" />
        <port polarity="Output" name="comm_0" />
        <port polarity="Input" name="OSC" />
        <port polarity="Input" name="A(7:0)" />
        <port polarity="Input" name="B(7:0)" />
        <port polarity="Output" name="comm_3" />
        <port polarity="Output" name="SEVSEG(6:0)" />
        <port polarity="Output" name="comm_2" />
        <port polarity="Output" name="comm_1" />
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
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
        <blockdef name="BCD_0_F_Decoder">
            <timestamp>2020-11-4T8:19:45</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
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
        <blockdef name="diviser_100K">
            <timestamp>2020-10-28T16:7:0</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="SELECTOR">
            <timestamp>2020-11-4T15:35:43</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
        </blockdef>
        <blockdef name="OPERATE">
            <timestamp>2020-11-4T15:55:33</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
        </blockdef>
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <block symbolname="vcc" name="XLXI_15(7:0)">
            <blockpin signalname="XLXN_11(7:0)" name="P" />
        </block>
        <block symbolname="OPERATE" name="XLXI_42">
            <blockpin signalname="A(7:0)" name="A(7:0)" />
            <blockpin signalname="B(7:0)" name="B(7:0)" />
            <blockpin signalname="XLXN_89(7:0)" name="E(7:0)" />
            <blockpin signalname="XLXN_12(7:0)" name="Q(7:0)" />
            <blockpin signalname="XLXN_14(7:0)" name="R(7:0)" />
            <blockpin signalname="XLXN_13(7:0)" name="W(7:0)" />
        </block>
        <block symbolname="m4_1e" name="XLXI_17(7:0)">
            <blockpin signalname="XLXN_12(7:0)" name="D0" />
            <blockpin signalname="XLXN_13(7:0)" name="D1" />
            <blockpin signalname="XLXN_89(7:0)" name="D2" />
            <blockpin signalname="XLXN_14(7:0)" name="D3" />
            <blockpin signalname="XLXN_11(7:0)" name="E" />
            <blockpin signalname="S(0)" name="S0" />
            <blockpin signalname="S(1)" name="S1" />
            <blockpin signalname="DATA(7:0)" name="O" />
        </block>
        <block symbolname="SELECTOR" name="XLXI_34">
            <blockpin signalname="XLXN_80" name="CLK" />
            <blockpin signalname="S(1:0)" name="S(1:0)" />
        </block>
        <block symbolname="diviser_100K" name="XLXI_26">
            <blockpin signalname="OSC" name="CLK_IN" />
            <blockpin signalname="comm_0" name="CLK_OUT" />
        </block>
        <block symbolname="BCD_0_F_Decoder" name="XLXI_24">
            <blockpin signalname="XLXN_26(3:0)" name="BIT(3:0)" />
            <blockpin signalname="SEVSEG(6:0)" name="SEG(6:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_83">
            <blockpin signalname="comm_3" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_84">
            <blockpin signalname="comm_2" name="P" />
        </block>
        <block symbolname="m2_1" name="XLXI_88(3:0)">
            <blockpin signalname="DATA(3:0)" name="D0" />
            <blockpin signalname="DATA(7:4)" name="D1" />
            <blockpin signalname="comm_0" name="S0" />
            <blockpin signalname="XLXN_26(3:0)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_89">
            <blockpin signalname="comm_0" name="I" />
            <blockpin signalname="comm_1" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_26(3:0)">
            <wire x2="2320" y1="2208" y2="2448" x1="2320" />
            <wire x2="2528" y1="2448" y2="2448" x1="2320" />
            <wire x2="3248" y1="2208" y2="2208" x1="2320" />
            <wire x2="3248" y1="432" y2="432" x1="2544" />
            <wire x2="3248" y1="432" y2="2208" x1="3248" />
        </branch>
        <instance x="672" y="560" name="XLXI_42" orien="R0">
        </instance>
        <branch name="XLXN_14(7:0)">
            <wire x2="1072" y1="528" y2="528" x1="1056" />
            <wire x2="1296" y1="528" y2="528" x1="1072" />
        </branch>
        <branch name="XLXN_89(7:0)">
            <wire x2="1072" y1="464" y2="464" x1="1056" />
            <wire x2="1296" y1="464" y2="464" x1="1072" />
        </branch>
        <branch name="XLXN_13(7:0)">
            <wire x2="1072" y1="400" y2="400" x1="1056" />
            <wire x2="1296" y1="400" y2="400" x1="1072" />
        </branch>
        <branch name="XLXN_12(7:0)">
            <wire x2="1072" y1="336" y2="336" x1="1056" />
            <wire x2="1296" y1="336" y2="336" x1="1072" />
        </branch>
        <instance x="336" y="720" name="XLXI_15(7:0)" orien="R0" />
        <instance x="496" y="944" name="XLXI_34" orien="R0">
        </instance>
        <iomarker fontsize="28" x="240" y="912" name="XLXN_80" orien="R180" />
        <branch name="S(1:0)">
            <wire x2="960" y1="912" y2="912" x1="880" />
            <wire x2="960" y1="912" y2="944" x1="960" />
            <wire x2="960" y1="880" y2="912" x1="960" />
        </branch>
        <bustap x2="1056" y1="880" y2="880" x1="960" />
        <bustap x2="1056" y1="944" y2="944" x1="960" />
        <branch name="DATA(7:0)">
            <wire x2="2064" y1="432" y2="432" x1="1616" />
            <wire x2="2064" y1="432" y2="464" x1="2064" />
            <wire x2="2064" y1="400" y2="432" x1="2064" />
        </branch>
        <bustap x2="2160" y1="400" y2="400" x1="2064" />
        <bustap x2="2160" y1="464" y2="464" x1="2064" />
        <branch name="DATA(3:0)">
            <wire x2="2224" y1="400" y2="400" x1="2160" />
        </branch>
        <branch name="DATA(7:4)">
            <wire x2="2224" y1="464" y2="464" x1="2160" />
        </branch>
        <branch name="XLXN_80">
            <wire x2="496" y1="912" y2="912" x1="240" />
        </branch>
        <branch name="OSC">
            <wire x2="400" y1="1232" y2="1232" x1="224" />
        </branch>
        <instance x="400" y="1264" name="XLXI_26" orien="R0">
        </instance>
        <iomarker fontsize="28" x="224" y="1232" name="OSC" orien="R180" />
        <branch name="A(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="448" y="144" type="branch" />
            <wire x2="448" y1="144" y2="144" x1="192" />
        </branch>
        <branch name="B(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="448" y="208" type="branch" />
            <wire x2="448" y1="208" y2="208" x1="192" />
        </branch>
        <iomarker fontsize="28" x="192" y="144" name="A(7:0)" orien="R180" />
        <iomarker fontsize="28" x="192" y="208" name="B(7:0)" orien="R180" />
        <branch name="A(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="528" y="336" type="branch" />
            <wire x2="672" y1="336" y2="336" x1="528" />
        </branch>
        <branch name="B(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="528" y="400" type="branch" />
            <wire x2="672" y1="400" y2="400" x1="528" />
        </branch>
        <branch name="S(0)">
            <wire x2="1104" y1="880" y2="880" x1="1056" />
            <wire x2="1232" y1="880" y2="880" x1="1104" />
            <wire x2="1264" y1="880" y2="880" x1="1232" />
            <wire x2="1104" y1="592" y2="880" x1="1104" />
            <wire x2="1296" y1="592" y2="592" x1="1104" />
        </branch>
        <branch name="S(1)">
            <wire x2="1216" y1="944" y2="944" x1="1056" />
            <wire x2="1232" y1="944" y2="944" x1="1216" />
            <wire x2="1264" y1="944" y2="944" x1="1232" />
            <wire x2="1216" y1="656" y2="944" x1="1216" />
            <wire x2="1296" y1="656" y2="656" x1="1216" />
        </branch>
        <branch name="XLXN_11(7:0)">
            <wire x2="416" y1="720" y2="720" x1="400" />
            <wire x2="992" y1="720" y2="720" x1="416" />
            <wire x2="1296" y1="720" y2="720" x1="992" />
        </branch>
        <instance x="2528" y="2480" name="XLXI_24" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3104" y="2448" name="SEVSEG(6:0)" orien="R0" />
        <branch name="SEVSEG(6:0)">
            <wire x2="3104" y1="2448" y2="2448" x1="2912" />
        </branch>
        <instance x="2400" y="1632" name="XLXI_83" orien="R0" />
        <branch name="comm_3">
            <wire x2="2464" y1="1632" y2="1648" x1="2464" />
            <wire x2="2640" y1="1648" y2="1648" x1="2464" />
        </branch>
        <iomarker fontsize="28" x="2640" y="1648" name="comm_3" orien="R0" />
        <instance x="1296" y="752" name="XLXI_17(7:0)" orien="R0" />
        <instance x="2304" y="1632" name="XLXI_84" orien="R0" />
        <branch name="comm_2">
            <wire x2="2368" y1="1632" y2="1712" x1="2368" />
            <wire x2="2464" y1="1712" y2="1712" x1="2368" />
        </branch>
        <iomarker fontsize="28" x="2464" y="1712" name="comm_2" orien="R0" />
        <iomarker fontsize="28" x="1264" y="880" name="S(0)" orien="R0" />
        <iomarker fontsize="28" x="1264" y="944" name="S(1)" orien="R0" />
        <instance x="2224" y="560" name="XLXI_88(3:0)" orien="R0" />
        <branch name="comm_0">
            <wire x2="1328" y1="1232" y2="1232" x1="784" />
            <wire x2="2224" y1="1232" y2="1232" x1="1328" />
            <wire x2="2416" y1="1232" y2="1232" x1="2224" />
            <wire x2="2224" y1="528" y2="1136" x1="2224" />
            <wire x2="2224" y1="1136" y2="1216" x1="2224" />
            <wire x2="2224" y1="1216" y2="1232" x1="2224" />
            <wire x2="2272" y1="1136" y2="1136" x1="2224" />
        </branch>
        <instance x="2272" y="1168" name="XLXI_89" orien="R0" />
        <iomarker fontsize="28" x="2416" y="1232" name="comm_0" orien="R0" />
        <branch name="comm_1">
            <wire x2="2544" y1="1136" y2="1136" x1="2496" />
        </branch>
        <iomarker fontsize="28" x="2544" y="1136" name="comm_1" orien="R0" />
    </sheet>
</drawing>