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
        <signal name="CARRIER_OUT" />
        <signal name="A1" />
        <signal name="A0" />
        <signal name="B0" />
        <signal name="CARRIER" />
        <signal name="B1" />
        <signal name="A2" />
        <signal name="B2" />
        <signal name="A3" />
        <signal name="B3" />
        <signal name="OUT_3" />
        <signal name="OUT_2" />
        <signal name="OUT_1" />
        <signal name="OUT_0" />
        <port polarity="Output" name="CARRIER_OUT" />
        <port polarity="Input" name="A1" />
        <port polarity="Input" name="A0" />
        <port polarity="Input" name="B0" />
        <port polarity="Input" name="CARRIER" />
        <port polarity="Input" name="B1" />
        <port polarity="Input" name="A2" />
        <port polarity="Input" name="B2" />
        <port polarity="Input" name="A3" />
        <port polarity="Input" name="B3" />
        <port polarity="Output" name="OUT_3" />
        <port polarity="Output" name="OUT_2" />
        <port polarity="Output" name="OUT_1" />
        <port polarity="Output" name="OUT_0" />
        <blockdef name="AddBit">
            <timestamp>2020-10-29T3:21:48</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="AddBit" name="XLXI_1">
            <blockpin signalname="A0" name="A" />
            <blockpin signalname="B0" name="B" />
            <blockpin signalname="OUT_0" name="BIT_OUT" />
            <blockpin signalname="CARRIER" name="CARRIER" />
            <blockpin signalname="XLXN_1" name="CARRIER_OUT" />
        </block>
        <block symbolname="AddBit" name="XLXI_2">
            <blockpin signalname="A1" name="A" />
            <blockpin signalname="B1" name="B" />
            <blockpin signalname="OUT_1" name="BIT_OUT" />
            <blockpin signalname="XLXN_1" name="CARRIER" />
            <blockpin signalname="XLXN_2" name="CARRIER_OUT" />
        </block>
        <block symbolname="AddBit" name="XLXI_3">
            <blockpin signalname="A2" name="A" />
            <blockpin signalname="B2" name="B" />
            <blockpin signalname="OUT_2" name="BIT_OUT" />
            <blockpin signalname="XLXN_2" name="CARRIER" />
            <blockpin signalname="XLXN_3" name="CARRIER_OUT" />
        </block>
        <block symbolname="AddBit" name="XLXI_4">
            <blockpin signalname="A3" name="A" />
            <blockpin signalname="B3" name="B" />
            <blockpin signalname="OUT_3" name="BIT_OUT" />
            <blockpin signalname="XLXN_3" name="CARRIER" />
            <blockpin signalname="CARRIER_OUT" name="CARRIER_OUT" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1168" y="1184" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1600" y="1600" name="XLXI_3" orien="R0">
        </instance>
        <instance x="2112" y="1952" name="XLXI_4" orien="R0">
        </instance>
        <instance x="640" y="768" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1088" y1="672" y2="672" x1="1024" />
            <wire x2="1088" y1="672" y2="1152" x1="1088" />
            <wire x2="1168" y1="1152" y2="1152" x1="1088" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1568" y1="1088" y2="1088" x1="1552" />
            <wire x2="1568" y1="1088" y2="1568" x1="1568" />
            <wire x2="1600" y1="1568" y2="1568" x1="1568" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="2048" y1="1504" y2="1504" x1="1984" />
            <wire x2="2048" y1="1504" y2="1920" x1="2048" />
            <wire x2="2112" y1="1920" y2="1920" x1="2048" />
        </branch>
        <branch name="CARRIER_OUT">
            <wire x2="2624" y1="1856" y2="1856" x1="2496" />
        </branch>
        <branch name="A1">
            <wire x2="1168" y1="1024" y2="1024" x1="512" />
        </branch>
        <branch name="A0">
            <wire x2="640" y1="608" y2="608" x1="496" />
        </branch>
        <branch name="B0">
            <wire x2="640" y1="672" y2="672" x1="496" />
        </branch>
        <branch name="CARRIER">
            <wire x2="640" y1="736" y2="736" x1="496" />
        </branch>
        <branch name="B1">
            <wire x2="1168" y1="1088" y2="1088" x1="512" />
        </branch>
        <branch name="A2">
            <wire x2="1600" y1="1440" y2="1440" x1="512" />
        </branch>
        <branch name="B2">
            <wire x2="1600" y1="1504" y2="1504" x1="512" />
        </branch>
        <branch name="A3">
            <wire x2="2112" y1="1792" y2="1792" x1="496" />
        </branch>
        <branch name="B3">
            <wire x2="2112" y1="1856" y2="1856" x1="496" />
        </branch>
        <branch name="OUT_3">
            <wire x2="2624" y1="1792" y2="1792" x1="2496" />
        </branch>
        <branch name="OUT_2">
            <wire x2="2624" y1="1440" y2="1440" x1="1984" />
        </branch>
        <branch name="OUT_1">
            <wire x2="2608" y1="1024" y2="1024" x1="1552" />
        </branch>
        <branch name="OUT_0">
            <wire x2="2624" y1="608" y2="608" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="496" y="608" name="A0" orien="R180" />
        <iomarker fontsize="28" x="496" y="672" name="B0" orien="R180" />
        <iomarker fontsize="28" x="496" y="736" name="CARRIER" orien="R180" />
        <iomarker fontsize="28" x="512" y="1024" name="A1" orien="R180" />
        <iomarker fontsize="28" x="512" y="1440" name="A2" orien="R180" />
        <iomarker fontsize="28" x="512" y="1504" name="B2" orien="R180" />
        <iomarker fontsize="28" x="496" y="1792" name="A3" orien="R180" />
        <iomarker fontsize="28" x="496" y="1856" name="B3" orien="R180" />
        <iomarker fontsize="28" x="2624" y="608" name="OUT_0" orien="R0" />
        <iomarker fontsize="28" x="2608" y="1024" name="OUT_1" orien="R0" />
        <iomarker fontsize="28" x="2624" y="1440" name="OUT_2" orien="R0" />
        <iomarker fontsize="28" x="2624" y="1792" name="OUT_3" orien="R0" />
        <iomarker fontsize="28" x="2624" y="1856" name="CARRIER_OUT" orien="R0" />
        <iomarker fontsize="28" x="512" y="1088" name="B1" orien="R180" />
    </sheet>
</drawing>