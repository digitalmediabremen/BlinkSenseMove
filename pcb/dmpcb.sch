<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.2.2">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="Teensy3.1_ralfsfix">
<packages>
<package name="TEENSY3.1_ALL_RALF">
<pad name="GND@1" x="-12.7" y="10.16" drill="0.8"/>
<pad name="D0" x="-12.7" y="7.62" drill="0.8"/>
<pad name="D1" x="-12.7" y="5.08" drill="0.8"/>
<pad name="D2" x="-12.7" y="2.54" drill="0.8"/>
<pad name="D3" x="-12.7" y="0" drill="0.8"/>
<pad name="D4" x="-12.7" y="-2.54" drill="0.8"/>
<pad name="D5" x="-12.7" y="-5.08" drill="0.8"/>
<pad name="D6" x="-12.7" y="-7.62" drill="0.8"/>
<pad name="D7" x="-12.7" y="-10.16" drill="0.8"/>
<pad name="D8" x="-12.7" y="-12.7" drill="0.8"/>
<pad name="D9" x="-12.7" y="-15.24" drill="0.8"/>
<pad name="D10" x="-12.7" y="-17.78" drill="0.8"/>
<pad name="D11" x="-12.7" y="-20.32" drill="0.8"/>
<pad name="D12" x="-12.7" y="-22.86" drill="0.8"/>
<pad name="VBAT" x="-10.16" y="-22.86" drill="0.8"/>
<pad name="3.3V@2" x="-7.62" y="-22.86" drill="0.8"/>
<pad name="GND@2" x="-5.08" y="-22.86" drill="0.8"/>
<pad name="PROGRAM" x="-2.54" y="-22.86" drill="0.8"/>
<pad name="A14/DAC" x="0" y="-22.86" drill="0.8"/>
<pad name="D13/LED" x="2.54" y="-22.86" drill="0.8"/>
<pad name="D14/A0" x="2.54" y="-20.32" drill="0.8"/>
<pad name="D15/A1" x="2.54" y="-17.78" drill="0.8"/>
<pad name="D16/A2" x="2.54" y="-15.24" drill="0.8"/>
<pad name="D17/A3" x="2.54" y="-12.7" drill="0.8"/>
<pad name="D18/A4" x="2.54" y="-10.16" drill="0.8"/>
<pad name="D19/A5" x="2.54" y="-7.62" drill="0.8"/>
<pad name="D20/A6" x="2.54" y="-5.08" drill="0.8"/>
<pad name="D21/A7" x="2.54" y="-2.54" drill="0.8"/>
<pad name="D22/A8" x="2.54" y="0" drill="0.8"/>
<pad name="D23/A9" x="2.54" y="2.54" drill="0.8"/>
<pad name="3.3V@1" x="2.54" y="5.08" drill="0.8"/>
<pad name="AGND" x="2.54" y="7.62" drill="0.8"/>
<pad name="VIN" x="2.54" y="10.16" drill="0.8"/>
<pad name="VUSB" x="0" y="7.62" drill="0.8"/>
<pad name="AREF" x="0" y="2.54" drill="0.8"/>
<pad name="A10" x="0" y="0" drill="0.8"/>
<pad name="A11" x="0" y="-2.54" drill="0.8"/>
<smd name="RESET" x="-5.08" y="0" dx="0.635" dy="0.635" layer="1" roundness="100" rot="R180"/>
<wire x1="-13.97" y1="-24.13" x2="3.81" y2="-24.13" width="0.127" layer="21"/>
<wire x1="3.81" y1="-24.13" x2="3.81" y2="11.43" width="0.127" layer="21"/>
<wire x1="3.81" y1="11.43" x2="-13.97" y2="11.43" width="0.127" layer="21"/>
<wire x1="-13.97" y1="11.43" x2="-13.97" y2="-24.13" width="0.127" layer="21"/>
<pad name="A13" x="-2.54" y="-5.08" drill="0.8"/>
<pad name="3.3V@3" x="-2.54" y="-7.62" drill="0.8"/>
<text x="-15.24" y="10.16" size="0.4064" layer="21">GND</text>
<text x="-15.24" y="7.62" size="0.4064" layer="21">D00</text>
<text x="-15.24" y="5.08" size="0.4064" layer="21">D01</text>
<text x="-15.24" y="2.54" size="0.4064" layer="21">D02</text>
<text x="-15.24" y="0" size="0.4064" layer="21">D03</text>
<text x="-15.24" y="-2.54" size="0.4064" layer="21">D04</text>
<text x="-15.24" y="-5.08" size="0.4064" layer="21">D05</text>
<text x="-1.27" y="-5.08" size="0.4064" layer="21">A13</text>
<text x="-7.62" y="-5.08" size="0.4064" layer="21">A12</text>
<text x="-7.62" y="-7.62" size="0.4064" layer="21">GND</text>
<text x="-7.62" y="-10.16" size="0.4064" layer="21">D24</text>
<text x="-7.62" y="-12.7" size="0.4064" layer="21">D25</text>
<text x="-8.89" y="-15.24" size="0.4064" layer="21">D26/A15</text>
<text x="-8.89" y="-17.78" size="0.4064" layer="21">D27/A16</text>
<text x="-8.89" y="-20.32" size="0.4064" layer="21">D28/A17</text>
<pad name="D33" x="-2.54" y="-10.16" drill="0.8"/>
<pad name="D32" x="-2.54" y="-12.7" drill="0.8"/>
<pad name="D31/A20" x="-2.54" y="-15.24" drill="0.8"/>
<pad name="D30/A19" x="-2.54" y="-17.78" drill="0.8"/>
<pad name="D29/A18" x="-2.54" y="-20.32" drill="0.8"/>
<pad name="D28/A17" x="-5.08" y="-20.32" drill="0.8"/>
<pad name="D27/A16" x="-5.08" y="-17.78" drill="0.8"/>
<pad name="D26/A15" x="-5.08" y="-15.24" drill="0.8"/>
<pad name="D25" x="-5.08" y="-12.7" drill="0.8"/>
<pad name="D24" x="-5.08" y="-10.16" drill="0.8"/>
<pad name="GND@3" x="-5.08" y="-7.62" drill="0.8"/>
<pad name="A12" x="-5.08" y="-5.08" drill="0.8"/>
<text x="-1.27" y="-7.62" size="0.4064" layer="21">3.3v</text>
<text x="-1.27" y="-10.16" size="0.4064" layer="21">D33</text>
<text x="-1.27" y="-12.7" size="0.4064" layer="21">D32</text>
<text x="-1.27" y="-15.24" size="0.4064" layer="21">D31/A20</text>
<text x="-1.27" y="-17.78" size="0.4064" layer="21">D30/A19</text>
<text x="-1.27" y="-20.32" size="0.4064" layer="21">D29/A18</text>
<text x="-15.24" y="-7.62" size="0.4064" layer="21">D06</text>
<text x="-15.24" y="-10.16" size="0.4064" layer="21">D07</text>
<text x="-15.24" y="-12.7" size="0.4064" layer="21">D08</text>
<text x="-15.24" y="-15.24" size="0.4064" layer="21">D09</text>
<text x="-15.24" y="-17.78" size="0.4064" layer="21">D10</text>
<text x="-15.24" y="-20.32" size="0.4064" layer="21">D11</text>
<text x="-15.24" y="-22.86" size="0.4064" layer="21">D12</text>
<text x="5.08" y="10.16" size="0.4064" layer="21">VIN</text>
<text x="5.08" y="7.62" size="0.4064" layer="21">AGND</text>
<text x="5.08" y="5.08" size="0.4064" layer="21">3.3V</text>
<text x="5.08" y="2.54" size="0.4064" layer="21">D23/A9</text>
<text x="5.08" y="0" size="0.4064" layer="21">D22/A8</text>
<text x="5.08" y="-2.54" size="0.4064" layer="21">D21/A7</text>
<text x="5.08" y="-5.08" size="0.4064" layer="21">D20/A6</text>
<text x="5.08" y="-7.62" size="0.4064" layer="21">D19/A5</text>
<text x="5.08" y="-10.16" size="0.4064" layer="21">D18/A4</text>
<text x="5.08" y="-12.7" size="0.4064" layer="21">D17/A3</text>
<text x="5.08" y="-15.24" size="0.4064" layer="21">D16/A2</text>
<text x="5.08" y="-17.78" size="0.4064" layer="21">D15/A1</text>
<text x="5.08" y="-20.32" size="0.4064" layer="21">D14/A0</text>
<text x="5.08" y="-22.86" size="0.4064" layer="21">D13/LED</text>
<text x="-10.16" y="-25.4" size="0.4064" layer="21" rot="R270">VBAT</text>
<text x="-7.62" y="-25.4" size="0.4064" layer="21" rot="R270">3.3v</text>
<text x="-5.08" y="-25.4" size="0.4064" layer="21" rot="R270">GND</text>
<text x="-2.54" y="-25.4" size="0.4064" layer="21" rot="R270">PROGRAM</text>
<text x="0" y="-25.4" size="0.4064" layer="21" rot="R270">A14/DAC</text>
</package>
</packages>
<symbols>
<symbol name="TEENSY3.1_ALL">
<pin name="D0" x="-20.32" y="-13.97" length="middle"/>
<pin name="D1" x="-20.32" y="-17.78" length="middle"/>
<pin name="D2" x="-20.32" y="-21.59" length="middle"/>
<pin name="D3" x="-20.32" y="-25.4" length="middle"/>
<pin name="D4" x="-20.32" y="-29.21" length="middle"/>
<pin name="D5" x="-20.32" y="-33.02" length="middle"/>
<pin name="D10" x="-20.32" y="-52.07" length="middle"/>
<pin name="D11" x="-20.32" y="-55.88" length="middle"/>
<pin name="D12" x="-20.32" y="-59.69" length="middle"/>
<pin name="D6" x="-20.32" y="-36.83" length="middle"/>
<pin name="D7" x="-20.32" y="-40.64" length="middle"/>
<pin name="D8" x="-20.32" y="-44.45" length="middle"/>
<pin name="D9" x="-20.32" y="-48.26" length="middle"/>
<pin name="D13/LED" x="20.32" y="-59.69" length="middle" rot="R180"/>
<pin name="D15/A1" x="20.32" y="-52.07" length="middle" rot="R180"/>
<pin name="D14/A0" x="20.32" y="-55.88" length="middle" rot="R180"/>
<pin name="D16/A2" x="20.32" y="-48.26" length="middle" rot="R180"/>
<pin name="D17/A3" x="20.32" y="-44.45" length="middle" rot="R180"/>
<pin name="D18/A4" x="20.32" y="-40.64" length="middle" rot="R180"/>
<pin name="D19/A5" x="20.32" y="-36.83" length="middle" rot="R180"/>
<pin name="D20/A6" x="20.32" y="-33.02" length="middle" rot="R180"/>
<pin name="D21/A7" x="20.32" y="-29.21" length="middle" rot="R180"/>
<pin name="D22/A8" x="20.32" y="-25.4" length="middle" rot="R180"/>
<pin name="D23/A9" x="20.32" y="-21.59" length="middle" rot="R180"/>
<pin name="VBAT" x="-20.32" y="29.21" length="middle"/>
<pin name="GND" x="-20.32" y="39.37" length="middle"/>
<pin name="VIN" x="-20.32" y="36.83" length="middle"/>
<pin name="AGND" x="-20.32" y="34.29" length="middle"/>
<pin name="3.3V" x="-20.32" y="31.75" length="middle"/>
<text x="-7.62" y="-13.97" size="1.016" layer="94">RX1</text>
<text x="-7.62" y="-17.78" size="1.016" layer="94">TX1</text>
<text x="-7.62" y="-48.26" size="1.016" layer="94">RX2</text>
<text x="-7.62" y="-52.07" size="1.016" layer="94">TX2</text>
<text x="-7.62" y="-40.64" size="1.016" layer="94">RX3</text>
<text x="-7.62" y="-43.18" size="1.016" layer="94">TX3</text>
<pin name="A10" x="20.32" y="-17.78" length="middle" rot="R180"/>
<pin name="A11" x="20.32" y="-13.97" length="middle" rot="R180"/>
<pin name="A12" x="20.32" y="-10.16" length="middle" rot="R180"/>
<pin name="A13" x="20.32" y="-6.35" length="middle" rot="R180"/>
<pin name="A14/DAC" x="20.32" y="-2.54" length="middle" rot="R180"/>
<pin name="D26/A15" x="20.32" y="8.89" length="middle" rot="R180"/>
<pin name="D24" x="20.32" y="1.27" length="middle" rot="R180"/>
<pin name="D25" x="20.32" y="5.08" length="middle" rot="R180"/>
<pin name="D27/A16" x="20.32" y="12.7" length="middle" rot="R180"/>
<pin name="D28/A17" x="20.32" y="16.51" length="middle" rot="R180"/>
<pin name="D29/A18" x="20.32" y="20.32" length="middle" rot="R180"/>
<pin name="D30/A19" x="20.32" y="24.13" length="middle" rot="R180"/>
<pin name="D31/A20" x="20.32" y="27.94" length="middle" rot="R180"/>
<pin name="D33" x="20.32" y="35.56" length="middle" rot="R180"/>
<pin name="AREF" x="20.32" y="39.37" length="middle" rot="R180"/>
<pin name="RESET" x="-20.32" y="24.13" length="middle"/>
<pin name="PROGRAM" x="-20.32" y="21.59" length="middle"/>
<wire x1="-17.78" y1="-63.5" x2="-17.78" y2="43.18" width="0.254" layer="94"/>
<wire x1="-17.78" y1="43.18" x2="17.78" y2="43.18" width="0.254" layer="94"/>
<wire x1="17.78" y1="43.18" x2="17.78" y2="-63.5" width="0.254" layer="94"/>
<wire x1="-17.78" y1="-63.5" x2="17.78" y2="-63.5" width="0.254" layer="94"/>
<pin name="D32" x="20.32" y="31.75" length="middle" rot="R180"/>
<text x="-10.16" y="2.54" size="1.27" layer="94">teensy3.2</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="TEENSY3.1_ALL">
<gates>
<gate name="G$1" symbol="TEENSY3.1_ALL" x="0" y="12.7"/>
</gates>
<devices>
<device name="" package="TEENSY3.1_ALL_RALF">
<connects>
<connect gate="G$1" pin="3.3V" pad="3.3V@1 3.3V@2 3.3V@3"/>
<connect gate="G$1" pin="A10" pad="A10"/>
<connect gate="G$1" pin="A11" pad="A11"/>
<connect gate="G$1" pin="A12" pad="A12"/>
<connect gate="G$1" pin="A13" pad="A13"/>
<connect gate="G$1" pin="A14/DAC" pad="A14/DAC"/>
<connect gate="G$1" pin="AGND" pad="AGND"/>
<connect gate="G$1" pin="AREF" pad="AREF"/>
<connect gate="G$1" pin="D0" pad="D0"/>
<connect gate="G$1" pin="D1" pad="D1"/>
<connect gate="G$1" pin="D10" pad="D10"/>
<connect gate="G$1" pin="D11" pad="D11"/>
<connect gate="G$1" pin="D12" pad="D12"/>
<connect gate="G$1" pin="D13/LED" pad="D13/LED"/>
<connect gate="G$1" pin="D14/A0" pad="D14/A0"/>
<connect gate="G$1" pin="D15/A1" pad="D15/A1"/>
<connect gate="G$1" pin="D16/A2" pad="D16/A2"/>
<connect gate="G$1" pin="D17/A3" pad="D17/A3"/>
<connect gate="G$1" pin="D18/A4" pad="D18/A4"/>
<connect gate="G$1" pin="D19/A5" pad="D19/A5"/>
<connect gate="G$1" pin="D2" pad="D2"/>
<connect gate="G$1" pin="D20/A6" pad="D20/A6"/>
<connect gate="G$1" pin="D21/A7" pad="D21/A7"/>
<connect gate="G$1" pin="D22/A8" pad="D22/A8"/>
<connect gate="G$1" pin="D23/A9" pad="D23/A9"/>
<connect gate="G$1" pin="D24" pad="D24"/>
<connect gate="G$1" pin="D25" pad="D25"/>
<connect gate="G$1" pin="D26/A15" pad="D26/A15"/>
<connect gate="G$1" pin="D27/A16" pad="D27/A16"/>
<connect gate="G$1" pin="D28/A17" pad="D28/A17"/>
<connect gate="G$1" pin="D29/A18" pad="D29/A18"/>
<connect gate="G$1" pin="D3" pad="D3"/>
<connect gate="G$1" pin="D30/A19" pad="D30/A19"/>
<connect gate="G$1" pin="D31/A20" pad="D31/A20"/>
<connect gate="G$1" pin="D32" pad="D32"/>
<connect gate="G$1" pin="D33" pad="D33"/>
<connect gate="G$1" pin="D4" pad="D4"/>
<connect gate="G$1" pin="D5" pad="D5"/>
<connect gate="G$1" pin="D6" pad="D6"/>
<connect gate="G$1" pin="D7" pad="D7"/>
<connect gate="G$1" pin="D8" pad="D8"/>
<connect gate="G$1" pin="D9" pad="D9"/>
<connect gate="G$1" pin="GND" pad="GND@1 GND@2 GND@3"/>
<connect gate="G$1" pin="PROGRAM" pad="PROGRAM"/>
<connect gate="G$1" pin="RESET" pad="RESET"/>
<connect gate="G$1" pin="VBAT" pad="VBAT"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="Teensy3.1_ralfsfix" deviceset="TEENSY3.1_ALL" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="162.56" y="43.18" smashed="yes"/>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
