
g
#Design is defaulting to srcset: %s
437*	planAhead2
	sources_12default:defaultZ12-437h px� 
j
&Design is defaulting to constrset: %s
434*	planAhead2
	constrs_12default:defaultZ12-434h px� 
�
-Reading design checkpoint '%s' for cell '%s'
275*project2U
Ae:/HITCS/exp5/test/test.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp2default:default2
clkgen2default:defaultZ1-454h px� 
�
-Reading design checkpoint '%s' for cell '%s'
275*project2I
5e:/HITCS/exp5/test/test.srcs/sources_1/ip/ddr/ddr.dcp2default:default2(
uut_ram2ddr/Inst_DDR2default:defaultZ1-454h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
3252default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
12default:defaultZ29-28h px� 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2017.12default:defaultZ1-479h px� 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
�
LRemoving redundant IBUF, %s, from the path connected to top-level port: %s 
35*opt2,
clkgen/inst/clkin1_ibufg2default:default2 
I_CLK_100MHZ2default:defaultZ31-35h px� 
�
�Could not create '%s' constraint because net '%s' is not directly connected to top level port. '%s' is ignored by %s but preserved for implementation tool.
528*constraints2 
IBUF_LOW_PWR2default:default2$
clkgen/clk_in12default:default2 
IBUF_LOW_PWR2default:default2
Vivado2default:default2n
XE:/HITCS/exp5/test/test.runs/impl_1/.Xil/Vivado-23156-DESKTOP-3F16N34/dcp9/clk_wiz_0.edf2default:default2
2762default:default8@Z18-550h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2g
Qe:/HITCS/exp5/test/test.srcs/sources_1/ip/ddr/ddr/user_design/constraints/ddr.xdc2default:default2*
uut_ram2ddr/Inst_DDR	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2g
Qe:/HITCS/exp5/test/test.srcs/sources_1/ip/ddr/ddr/user_design/constraints/ddr.xdc2default:default2*
uut_ram2ddr/Inst_DDR	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2]
Ge:/HITCS/exp5/test/test.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc2default:default2!
clkgen/inst	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2]
Ge:/HITCS/exp5/test/test.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc2default:default2!
clkgen/inst	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2W
Ae:/HITCS/exp5/test/test.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc2default:default2!
clkgen/inst	2default:default8Z20-848h px� 
�
%Done setting XDC timing constraints.
35*timing2W
Ae:/HITCS/exp5/test/test.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc2default:default2
572default:default8@Z38-35h px� 
�
Deriving generated clocks
2*timing2W
Ae:/HITCS/exp5/test/test.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc2default:default2
572default:default8@Z38-2h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
get_clocks: 2default:default2
00:00:142default:default2
00:00:142default:default2
1074.2932default:default2
516.5042default:defaultZ17-268h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2W
Ae:/HITCS/exp5/test/test.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc2default:default2!
clkgen/inst	2default:default8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2_
IE:/HITCS/exp5/test/test.srcs/constrs_1/imports/other/Nexys4DDR_Master.xdc2default:default8Z20-179h px� 
�
No nets matched '%s'.
507*	planAhead2
swt_IBUF[2]2default:default2_
IE:/HITCS/exp5/test/test.srcs/constrs_1/imports/other/Nexys4DDR_Master.xdc2default:default2
132default:default8@Z12-507h px� 
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2_
IE:/HITCS/exp5/test/test.srcs/constrs_1/imports/other/Nexys4DDR_Master.xdc2default:default2
132default:default8@Z17-55h px�
�
Finished Parsing XDC File [%s]
178*designutils2_
IE:/HITCS/exp5/test/test.srcs/constrs_1/imports/other/Nexys4DDR_Master.xdc2default:default8Z20-178h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 108 instances were transformed.
  IOBUFDS_INTERMDISABLE => IOBUFDS_INTERMDISABLE (IBUFDS_INTERMDISABLE_INT, IBUFDS_INTERMDISABLE_INT, INV, OBUFTDS, OBUFTDS): 2 instances
  IOBUF_INTERMDISABLE => IOBUF_INTERMDISABLE (IBUF_INTERMDISABLE, OBUFT): 16 instances
  OBUFDS => OBUFDS_DUAL_BUF (INV, OBUFDS, OBUFDS): 1 instances
  RAM32M => RAM32M (RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMS32, RAMS32): 89 instances
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2!
link_design: 2default:default2
00:00:242default:default2
00:00:252default:default2
1074.2932default:default2
806.6682default:defaultZ17-268h px� 


End Record