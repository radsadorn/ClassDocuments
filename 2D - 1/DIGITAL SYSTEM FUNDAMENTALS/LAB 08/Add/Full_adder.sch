<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="BIT(15:0)" />
        <signal name="DATA(15:8)">
        </signal>
        <signal name="BIT(7:0)" />
        <signal name="BIT(8)" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21(7:0)" />
        <signal name="XLXN_22(7:0)" />
        <signal name="BIT(15:9)" />
        <signal name="XLXN_26" />
        <signal name="DATA(7:0)">
        </signal>
        <signal name="DATA(15:0)" />
        <port polarity="Output" name="BIT(15:0)" />
        <port polarity="Input" name="DATA(15:0)" />
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="add8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="336" y1="-128" y2="-148" x1="336" />
            <line x2="336" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-288" y2="-432" x1="64" />
            <line x2="64" y1="-256" y2="-288" x1="128" />
            <line x2="128" y1="-224" y2="-256" x1="64" />
            <line x2="64" y1="-80" y2="-224" x1="64" />
            <line x2="64" y1="-160" y2="-80" x1="384" />
            <line x2="384" y1="-336" y2="-160" x1="384" />
            <line x2="384" y1="-352" y2="-336" x1="384" />
            <line x2="384" y1="-432" y2="-352" x1="64" />
            <line x2="64" y1="-448" y2="-448" x1="128" />
            <line x2="128" y1="-416" y2="-448" x1="128" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <rect width="64" x="384" y="-268" height="24" />
            <line x2="384" y1="-256" y2="-256" x1="448" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <rect width="64" x="0" y="-332" height="24" />
            <rect width="64" x="0" y="-204" height="24" />
            <line x2="384" y1="-64" y2="-64" x1="240" />
            <line x2="240" y1="-124" y2="-64" x1="240" />
            <line x2="384" y1="-64" y2="-64" x1="448" />
            <line x2="384" y1="-128" y2="-128" x1="448" />
        </blockdef>
        <block symbolname="add8" name="XLXI_10">
            <blockpin signalname="DATA(7:0)" name="A(7:0)" />
            <blockpin signalname="DATA(15:8)" name="B(7:0)" />
            <blockpin signalname="XLXN_20" name="CI" />
            <blockpin signalname="BIT(8)" name="CO" />
            <blockpin name="OFL" />
            <blockpin signalname="BIT(7:0)" name="S(7:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_12">
            <blockpin signalname="XLXN_20" name="G" />
        </block>
        <block symbolname="gnd" name="aaaaa(15:9)">
            <blockpin signalname="BIT(15:9)" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="BIT(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="160" type="branch" />
            <wire x2="2288" y1="160" y2="160" x1="1824" />
            <wire x2="1824" y1="160" y2="336" x1="1824" />
            <wire x2="2208" y1="336" y2="336" x1="1824" />
            <wire x2="2208" y1="336" y2="656" x1="2208" />
            <wire x2="2208" y1="656" y2="848" x1="2208" />
            <wire x2="2208" y1="848" y2="1040" x1="2208" />
        </branch>
        <iomarker fontsize="28" x="2288" y="160" name="BIT(15:0)" orien="R0" />
        <branch name="DATA(15:8)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="448" y="720" type="branch" />
            <wire x2="1056" y1="720" y2="720" x1="448" />
        </branch>
        <branch name="BIT(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="656" type="branch" />
            <wire x2="1904" y1="656" y2="656" x1="1504" />
            <wire x2="2112" y1="656" y2="656" x1="1904" />
        </branch>
        <branch name="BIT(8)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="848" type="branch" />
            <wire x2="1904" y1="848" y2="848" x1="1504" />
            <wire x2="2112" y1="848" y2="848" x1="1904" />
        </branch>
        <instance x="1056" y="912" name="XLXI_10" orien="R0" />
        <branch name="XLXN_20">
            <wire x2="1056" y1="464" y2="464" x1="736" />
        </branch>
        <instance x="608" y="400" name="XLXI_12" orien="R90" />
        <instance x="1600" y="1200" name="aaaaa(15:9)" orien="R0" />
        <branch name="BIT(15:9)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="1040" type="branch" />
            <wire x2="1856" y1="1040" y2="1040" x1="1664" />
            <wire x2="2112" y1="1040" y2="1040" x1="1856" />
            <wire x2="1664" y1="1040" y2="1072" x1="1664" />
        </branch>
        <bustap x2="2112" y1="1040" y2="1040" x1="2208" />
        <bustap x2="2112" y1="848" y2="848" x1="2208" />
        <bustap x2="2112" y1="656" y2="656" x1="2208" />
        <branch name="DATA(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="448" y="592" type="branch" />
            <wire x2="1056" y1="592" y2="592" x1="448" />
        </branch>
        <branch name="DATA(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="624" y="208" type="branch" />
            <wire x2="624" y1="208" y2="208" x1="288" />
        </branch>
        <iomarker fontsize="28" x="288" y="208" name="DATA(15:0)" orien="R180" />
    </sheet>
</drawing>