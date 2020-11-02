<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="OSC">
            <attr value="P123" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="XLXN_6(1:0)" />
        <signal name="XLXN_5" />
        <signal name="BIT(15:0)" />
        <signal name="COMMON(3:0)" />
        <signal name="XLXN_12(3:0)" />
        <signal name="SEG(6:0)" />
        <signal name="INP(15:0)" />
        <signal name="BIT(8:0)" />
        <signal name="XLXN_14">
            <attr value="P83" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <port polarity="Input" name="OSC" />
        <port polarity="Output" name="COMMON(3:0)" />
        <port polarity="Output" name="SEG(6:0)" />
        <port polarity="Input" name="INP(15:0)" />
        <port polarity="Output" name="XLXN_14" />
        <blockdef name="diviser_100K">
            <timestamp>2020-10-28T16:7:0</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="MULTIPLEXER_4Bits">
            <timestamp>2020-10-29T3:19:48</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
        </blockdef>
        <blockdef name="COUNTER_4">
            <timestamp>2020-10-28T16:1:15</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="COMMONS_SELECTOR">
            <timestamp>2020-10-28T16:17:46</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
        </blockdef>
        <blockdef name="BCD_0_F_Decoder">
            <timestamp>2020-10-28T17:35:28</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
        </blockdef>
        <blockdef name="Compare">
            <timestamp>2020-10-29T3:49:48</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Full_adder">
            <timestamp>2020-10-29T4:6:43</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
        </blockdef>
        <block symbolname="diviser_100K" name="XLXI_2">
            <blockpin signalname="OSC" name="CLK_IN" />
            <blockpin signalname="XLXN_5" name="CLK_OUT" />
        </block>
        <block symbolname="COUNTER_4" name="XLXI_6">
            <blockpin signalname="XLXN_6(1:0)" name="BIT(1:0)" />
            <blockpin signalname="XLXN_5" name="CLK" />
        </block>
        <block symbolname="MULTIPLEXER_4Bits" name="XLXI_5">
            <blockpin signalname="XLXN_12(3:0)" name="BIT(3:0)" />
            <blockpin signalname="BIT(15:0)" name="DATA(15:0)" />
            <blockpin signalname="XLXN_6(1:0)" name="S(1:0)" />
        </block>
        <block symbolname="BCD_0_F_Decoder" name="XLXI_9">
            <blockpin signalname="XLXN_12(3:0)" name="BIT(3:0)" />
            <blockpin signalname="SEG(6:0)" name="SEG(6:0)" />
        </block>
        <block symbolname="COMMONS_SELECTOR" name="XLXI_8">
            <blockpin signalname="COMMON(3:0)" name="common(3:0)" />
            <blockpin signalname="XLXN_6(1:0)" name="S(1:0)" />
        </block>
        <block symbolname="Compare" name="XLXI_11">
            <blockpin signalname="BIT(8:0)" name="BIT(8:0)" />
            <blockpin signalname="XLXN_14" name="buzz" />
        </block>
        <block symbolname="Full_adder" name="XLXI_12">
            <blockpin signalname="BIT(15:0)" name="BIT(15:0)" />
            <blockpin signalname="INP(15:0)" name="DATA(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="720" y="1792" name="XLXI_2" orien="R0">
        </instance>
        <branch name="OSC">
            <wire x2="720" y1="1760" y2="1760" x1="592" />
        </branch>
        <branch name="XLXN_6(1:0)">
            <wire x2="1696" y1="1568" y2="1568" x1="1680" />
            <wire x2="1968" y1="1568" y2="1568" x1="1696" />
            <wire x2="1824" y1="1088" y2="1088" x1="1696" />
            <wire x2="1696" y1="1088" y2="1568" x1="1696" />
        </branch>
        <instance x="1296" y="1600" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_5">
            <wire x2="1120" y1="1760" y2="1760" x1="1104" />
            <wire x2="1296" y1="1568" y2="1568" x1="1120" />
            <wire x2="1120" y1="1568" y2="1760" x1="1120" />
        </branch>
        <instance x="1824" y="1120" name="XLXI_5" orien="R0">
        </instance>
        <branch name="BIT(15:0)">
            <wire x2="1568" y1="1024" y2="1024" x1="1488" />
            <wire x2="1824" y1="1024" y2="1024" x1="1568" />
        </branch>
        <branch name="COMMON(3:0)">
            <wire x2="2592" y1="1568" y2="1568" x1="2352" />
        </branch>
        <instance x="2512" y="1056" name="XLXI_9" orien="R0">
        </instance>
        <branch name="XLXN_12(3:0)">
            <wire x2="2512" y1="1024" y2="1024" x1="2208" />
        </branch>
        <branch name="SEG(6:0)">
            <wire x2="3072" y1="1024" y2="1024" x1="2896" />
        </branch>
        <instance x="1968" y="1600" name="XLXI_8" orien="R0">
        </instance>
        <iomarker fontsize="28" x="592" y="1760" name="OSC" orien="R180" />
        <iomarker fontsize="28" x="2592" y="1568" name="COMMON(3:0)" orien="R0" />
        <iomarker fontsize="28" x="3072" y="1024" name="SEG(6:0)" orien="R0" />
        <branch name="INP(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="624" y="1024" type="branch" />
            <wire x2="624" y1="1024" y2="1024" x1="432" />
            <wire x2="1104" y1="1024" y2="1024" x1="624" />
            <wire x2="432" y1="1024" y2="1104" x1="432" />
        </branch>
        <instance x="1680" y="720" name="XLXI_11" orien="R0">
        </instance>
        <bustap x2="1568" y1="1024" y2="928" x1="1568" />
        <branch name="BIT(8:0)">
            <wire x2="1680" y1="688" y2="688" x1="1568" />
            <wire x2="1568" y1="688" y2="928" x1="1568" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="2096" y1="688" y2="688" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="2096" y="688" name="XLXN_14" orien="R0" />
        <iomarker fontsize="28" x="432" y="1104" name="INP(15:0)" orien="R180" />
        <instance x="1104" y="1056" name="XLXI_12" orien="R0">
        </instance>
    </sheet>
</drawing>