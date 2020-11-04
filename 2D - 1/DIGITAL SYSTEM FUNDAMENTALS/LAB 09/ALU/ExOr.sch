<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A(7:0)" />
        <signal name="B(7:0)" />
        <signal name="S(7:0)" />
        <port polarity="Input" name="A(7:0)" />
        <port polarity="Input" name="B(7:0)" />
        <port polarity="Output" name="S(7:0)" />
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <block symbolname="xor2" name="XLXI_1(7:0)">
            <blockpin signalname="B(7:0)" name="I0" />
            <blockpin signalname="A(7:0)" name="I1" />
            <blockpin signalname="S(7:0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1392" y="1024" name="XLXI_1(7:0)" orien="R0" />
        <branch name="A(7:0)">
            <wire x2="1392" y1="896" y2="896" x1="1200" />
        </branch>
        <branch name="B(7:0)">
            <wire x2="1392" y1="960" y2="960" x1="1200" />
        </branch>
        <branch name="S(7:0)">
            <wire x2="1952" y1="928" y2="928" x1="1648" />
        </branch>
        <iomarker fontsize="28" x="1200" y="896" name="A(7:0)" orien="R180" />
        <iomarker fontsize="28" x="1200" y="960" name="B(7:0)" orien="R180" />
        <iomarker fontsize="28" x="1952" y="928" name="S(7:0)" orien="R0" />
    </sheet>
</drawing>