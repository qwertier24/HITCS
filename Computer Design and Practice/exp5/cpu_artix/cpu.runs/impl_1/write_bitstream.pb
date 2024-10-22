
c
Command: %s
53*	vivadotcl22
write_bitstream -force cpu.bit2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2#
xc7a100t-csg3242default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2#
xc7a100t-csg3242default:defaultZ17-349h px� 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px� 
z
Command: %s
53*	vivadotcl2I
5report_drc (run_mandatory_drcs) for: bitstream_checks2default:defaultZ4-113h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
�Missing CFGBVS and CONFIG_VOLTAGE Design Properties: Neither the CFGBVS nor CONFIG_VOLTAGE voltage property is set in the current_design.  Configuration bank voltage select (CFGBVS) must be set to VCCO or GND, and CONFIG_VOLTAGE must be set to the correct configuration voltage, in order to determine the I/O voltage support for the pins in bank 0.  It is suggested to specify these either using the 'Edit Device Properties' function in the GUI or directly in the XDC file using the following syntax:

 set_property CFGBVS value1 [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE value2 [current_design]
 #where value2 is the voltage provided to configuration bank 0

Refer to the device configuration user guide for more information.%s*DRC2(
 DRC|Pin Planning2default:default8ZCFGBVS-1h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2^
 "H
digits_reg[1][3]_i_2_n_0digits_reg[1][3]_i_2_n_02default:default2default:default2Z
 "D
digits_reg[1][3]_i_2/Odigits_reg[1][3]_i_2/O2default:default2default:default2V
 "@
digits_reg[1][3]_i_2	digits_reg[1][3]_i_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2G
 "1
uut_fetch/E[0]uut_fetch/E2default:default2default:default2f
 "P
uut_fetch/O_ALU_reg[7]_i_2/Ouut_fetch/O_ALU_reg[7]_i_2/O2default:default2default:default2b
 "L
uut_fetch/O_ALU_reg[7]_i_2	uut_fetch/O_ALU_reg[7]_i_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2R
 "<
uut_fetch/O_CS_ramuut_fetch/O_CS_ram2default:default2default:default2`
 "J
uut_fetch/O_NBH_reg_i_1/Ouut_fetch/O_NBH_reg_i_1/O2default:default2default:default2\
 "F
uut_fetch/O_NBH_reg_i_1	uut_fetch/O_NBH_reg_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2l
 "V
uut_fetch/PC_reg[0]_LDC_i_1_n_0uut_fetch/PC_reg[0]_LDC_i_1_n_02default:default2default:default2h
 "R
uut_fetch/PC_reg[0]_LDC_i_1/Ouut_fetch/PC_reg[0]_LDC_i_1/O2default:default2default:default2d
 "N
uut_fetch/PC_reg[0]_LDC_i_1	uut_fetch/PC_reg[0]_LDC_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2_
 "I
uut_fetch/PC_reg[0]_P_0[0]uut_fetch/PC_reg[0]_P_02default:default2default:default2j
 "T
uut_fetch/O_ADDR_reg[15]_i_1/Ouut_fetch/O_ADDR_reg[15]_i_1/O2default:default2default:default2f
 "P
uut_fetch/O_ADDR_reg[15]_i_1	uut_fetch/O_ADDR_reg[15]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2n
 "X
 uut_fetch/PC_reg[10]_LDC_i_1_n_0 uut_fetch/PC_reg[10]_LDC_i_1_n_02default:default2default:default2j
 "T
uut_fetch/PC_reg[10]_LDC_i_1/Ouut_fetch/PC_reg[10]_LDC_i_1/O2default:default2default:default2f
 "P
uut_fetch/PC_reg[10]_LDC_i_1	uut_fetch/PC_reg[10]_LDC_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2n
 "X
 uut_fetch/PC_reg[11]_LDC_i_1_n_0 uut_fetch/PC_reg[11]_LDC_i_1_n_02default:default2default:default2j
 "T
uut_fetch/PC_reg[11]_LDC_i_1/Ouut_fetch/PC_reg[11]_LDC_i_1/O2default:default2default:default2f
 "P
uut_fetch/PC_reg[11]_LDC_i_1	uut_fetch/PC_reg[11]_LDC_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2n
 "X
 uut_fetch/PC_reg[12]_LDC_i_1_n_0 uut_fetch/PC_reg[12]_LDC_i_1_n_02default:default2default:default2j
 "T
uut_fetch/PC_reg[12]_LDC_i_1/Ouut_fetch/PC_reg[12]_LDC_i_1/O2default:default2default:default2f
 "P
uut_fetch/PC_reg[12]_LDC_i_1	uut_fetch/PC_reg[12]_LDC_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2n
 "X
 uut_fetch/PC_reg[13]_LDC_i_1_n_0 uut_fetch/PC_reg[13]_LDC_i_1_n_02default:default2default:default2j
 "T
uut_fetch/PC_reg[13]_LDC_i_1/Ouut_fetch/PC_reg[13]_LDC_i_1/O2default:default2default:default2f
 "P
uut_fetch/PC_reg[13]_LDC_i_1	uut_fetch/PC_reg[13]_LDC_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2n
 "X
 uut_fetch/PC_reg[14]_LDC_i_1_n_0 uut_fetch/PC_reg[14]_LDC_i_1_n_02default:default2default:default2j
 "T
uut_fetch/PC_reg[14]_LDC_i_1/Ouut_fetch/PC_reg[14]_LDC_i_1/O2default:default2default:default2f
 "P
uut_fetch/PC_reg[14]_LDC_i_1	uut_fetch/PC_reg[14]_LDC_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2n
 "X
 uut_fetch/PC_reg[15]_LDC_i_1_n_0 uut_fetch/PC_reg[15]_LDC_i_1_n_02default:default2default:default2j
 "T
uut_fetch/PC_reg[15]_LDC_i_1/Ouut_fetch/PC_reg[15]_LDC_i_1/O2default:default2default:default2f
 "P
uut_fetch/PC_reg[15]_LDC_i_1	uut_fetch/PC_reg[15]_LDC_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2a
 "K
uut_fetch/PC_reg[15]_P_1[0]uut_fetch/PC_reg[15]_P_12default:default2default:default2n
 "X
 uut_fetch/O_REG_new_reg[7]_i_2/O uut_fetch/O_REG_new_reg[7]_i_2/O2default:default2default:default2j
 "T
uut_fetch/O_REG_new_reg[7]_i_2	uut_fetch/O_REG_new_reg[7]_i_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2a
 "K
uut_fetch/PC_reg[15]_P_2[0]uut_fetch/PC_reg[15]_P_22default:default2default:default2j
 "T
uut_fetch/O_RTEMP_reg[7]_i_2/Ouut_fetch/O_RTEMP_reg[7]_i_2/O2default:default2default:default2f
 "P
uut_fetch/O_RTEMP_reg[7]_i_2	uut_fetch/O_RTEMP_reg[7]_i_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2a
 "K
uut_fetch/PC_reg[15]_P_4[0]uut_fetch/PC_reg[15]_P_42default:default2default:default2p
 "Z
!uut_fetch/O_RTEMP_reg[7]_i_1__1/O!uut_fetch/O_RTEMP_reg[7]_i_1__1/O2default:default2default:default2l
 "V
uut_fetch/O_RTEMP_reg[7]_i_1__1	uut_fetch/O_RTEMP_reg[7]_i_1__12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2a
 "K
uut_fetch/PC_reg[15]_P_5[0]uut_fetch/PC_reg[15]_P_52default:default2default:default2p
 "Z
!uut_fetch/O_RTEMP_reg[7]_i_2__0/O!uut_fetch/O_RTEMP_reg[7]_i_2__0/O2default:default2default:default2l
 "V
uut_fetch/O_RTEMP_reg[7]_i_2__0	uut_fetch/O_RTEMP_reg[7]_i_2__02default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2l
 "V
uut_fetch/PC_reg[1]_LDC_i_1_n_0uut_fetch/PC_reg[1]_LDC_i_1_n_02default:default2default:default2h
 "R
uut_fetch/PC_reg[1]_LDC_i_1/Ouut_fetch/PC_reg[1]_LDC_i_1/O2default:default2default:default2d
 "N
uut_fetch/PC_reg[1]_LDC_i_1	uut_fetch/PC_reg[1]_LDC_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2l
 "V
uut_fetch/PC_reg[2]_LDC_i_1_n_0uut_fetch/PC_reg[2]_LDC_i_1_n_02default:default2default:default2h
 "R
uut_fetch/PC_reg[2]_LDC_i_1/Ouut_fetch/PC_reg[2]_LDC_i_1/O2default:default2default:default2d
 "N
uut_fetch/PC_reg[2]_LDC_i_1	uut_fetch/PC_reg[2]_LDC_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2l
 "V
uut_fetch/PC_reg[3]_LDC_i_1_n_0uut_fetch/PC_reg[3]_LDC_i_1_n_02default:default2default:default2h
 "R
uut_fetch/PC_reg[3]_LDC_i_1/Ouut_fetch/PC_reg[3]_LDC_i_1/O2default:default2default:default2d
 "N
uut_fetch/PC_reg[3]_LDC_i_1	uut_fetch/PC_reg[3]_LDC_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2l
 "V
uut_fetch/PC_reg[4]_LDC_i_1_n_0uut_fetch/PC_reg[4]_LDC_i_1_n_02default:default2default:default2h
 "R
uut_fetch/PC_reg[4]_LDC_i_1/Ouut_fetch/PC_reg[4]_LDC_i_1/O2default:default2default:default2d
 "N
uut_fetch/PC_reg[4]_LDC_i_1	uut_fetch/PC_reg[4]_LDC_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2l
 "V
uut_fetch/PC_reg[5]_LDC_i_1_n_0uut_fetch/PC_reg[5]_LDC_i_1_n_02default:default2default:default2h
 "R
uut_fetch/PC_reg[5]_LDC_i_1/Ouut_fetch/PC_reg[5]_LDC_i_1/O2default:default2default:default2d
 "N
uut_fetch/PC_reg[5]_LDC_i_1	uut_fetch/PC_reg[5]_LDC_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2l
 "V
uut_fetch/PC_reg[6]_LDC_i_1_n_0uut_fetch/PC_reg[6]_LDC_i_1_n_02default:default2default:default2h
 "R
uut_fetch/PC_reg[6]_LDC_i_1/Ouut_fetch/PC_reg[6]_LDC_i_1/O2default:default2default:default2d
 "N
uut_fetch/PC_reg[6]_LDC_i_1	uut_fetch/PC_reg[6]_LDC_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2l
 "V
uut_fetch/PC_reg[7]_LDC_i_1_n_0uut_fetch/PC_reg[7]_LDC_i_1_n_02default:default2default:default2h
 "R
uut_fetch/PC_reg[7]_LDC_i_1/Ouut_fetch/PC_reg[7]_LDC_i_1/O2default:default2default:default2d
 "N
uut_fetch/PC_reg[7]_LDC_i_1	uut_fetch/PC_reg[7]_LDC_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2l
 "V
uut_fetch/PC_reg[8]_LDC_i_1_n_0uut_fetch/PC_reg[8]_LDC_i_1_n_02default:default2default:default2h
 "R
uut_fetch/PC_reg[8]_LDC_i_1/Ouut_fetch/PC_reg[8]_LDC_i_1/O2default:default2default:default2d
 "N
uut_fetch/PC_reg[8]_LDC_i_1	uut_fetch/PC_reg[8]_LDC_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2_
 "I
uut_fetch/PC_reg[8]_P_0[0]uut_fetch/PC_reg[8]_P_02default:default2default:default2d
 "N
uut_fetch/R_reg[7][7]_i_1/Ouut_fetch/R_reg[7][7]_i_1/O2default:default2default:default2`
 "J
uut_fetch/R_reg[7][7]_i_1	uut_fetch/R_reg[7][7]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2l
 "V
uut_fetch/PC_reg[9]_LDC_i_1_n_0uut_fetch/PC_reg[9]_LDC_i_1_n_02default:default2default:default2h
 "R
uut_fetch/PC_reg[9]_LDC_i_1/Ouut_fetch/PC_reg[9]_LDC_i_1/O2default:default2default:default2d
 "N
uut_fetch/PC_reg[9]_LDC_i_1	uut_fetch/PC_reg[9]_LDC_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2g
 "Q
uut_fetch/ram_a_int_reg[16][0]uut_fetch/ram_a_int_reg[16]2default:default2default:default2j
 "T
uut_fetch/O_ABUS_reg[15]_i_2/Ouut_fetch/O_ABUS_reg[15]_i_2/O2default:default2default:default2f
 "P
uut_fetch/O_ABUS_reg[15]_i_2	uut_fetch/O_ABUS_reg[15]_i_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2k
 "U
 uut_fetch/ram_dq_i_int_reg[0][0]uut_fetch/ram_dq_i_int_reg[0]2default:default2default:default2d
 "N
uut_fetch/R_reg[6][7]_i_1/Ouut_fetch/R_reg[6][7]_i_1/O2default:default2default:default2`
 "J
uut_fetch/R_reg[6][7]_i_1	uut_fetch/R_reg[6][7]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2o
 "Y
"uut_fetch/ram_dq_i_int_reg[0]_0[0]uut_fetch/ram_dq_i_int_reg[0]_02default:default2default:default2d
 "N
uut_fetch/R_reg[3][7]_i_1/Ouut_fetch/R_reg[3][7]_i_1/O2default:default2default:default2`
 "J
uut_fetch/R_reg[3][7]_i_1	uut_fetch/R_reg[3][7]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2o
 "Y
"uut_fetch/ram_dq_i_int_reg[0]_1[0]uut_fetch/ram_dq_i_int_reg[0]_12default:default2default:default2d
 "N
uut_fetch/R_reg[2][7]_i_1/Ouut_fetch/R_reg[2][7]_i_1/O2default:default2default:default2`
 "J
uut_fetch/R_reg[2][7]_i_1	uut_fetch/R_reg[2][7]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2o
 "Y
"uut_fetch/ram_dq_i_int_reg[0]_2[0]uut_fetch/ram_dq_i_int_reg[0]_22default:default2default:default2d
 "N
uut_fetch/R_reg[5][7]_i_1/Ouut_fetch/R_reg[5][7]_i_1/O2default:default2default:default2`
 "J
uut_fetch/R_reg[5][7]_i_1	uut_fetch/R_reg[5][7]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2o
 "Y
"uut_fetch/ram_dq_i_int_reg[0]_3[0]uut_fetch/ram_dq_i_int_reg[0]_32default:default2default:default2d
 "N
uut_fetch/R_reg[4][7]_i_1/Ouut_fetch/R_reg[4][7]_i_1/O2default:default2default:default2`
 "J
uut_fetch/R_reg[4][7]_i_1	uut_fetch/R_reg[4][7]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2o
 "Y
"uut_fetch/ram_dq_i_int_reg[0]_4[0]uut_fetch/ram_dq_i_int_reg[0]_42default:default2default:default2d
 "N
uut_fetch/R_reg[1][7]_i_1/Ouut_fetch/R_reg[1][7]_i_1/O2default:default2default:default2`
 "J
uut_fetch/R_reg[1][7]_i_1	uut_fetch/R_reg[1][7]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2o
 "Y
"uut_fetch/ram_dq_i_int_reg[7]_0[0]uut_fetch/ram_dq_i_int_reg[7]_02default:default2default:default2d
 "N
uut_fetch/R_reg[0][7]_i_1/Ouut_fetch/R_reg[0][7]_i_1/O2default:default2default:default2`
 "J
uut_fetch/R_reg[0][7]_i_1	uut_fetch/R_reg[0][7]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Clock output buffering: PLLE2_ADV connectivity violation. The signal %s on the %s pin of %s does not drive the same kind of BUFFER load as the other CLKOUT pins. Routing from the different buffer types will not be phase aligned.%s*DRC2�
 "�
Auut_ram2ddr/Inst_DDR/u_ddr_mig/u_ddr2_infrastructure/pll_clk3_outAuut_ram2ddr/Inst_DDR/u_ddr_mig/u_ddr2_infrastructure/pll_clk3_out2default:default2default:default2�
 "�
Duut_ram2ddr/Inst_DDR/u_ddr_mig/u_ddr2_infrastructure/plle2_i/CLKOUT3Duut_ram2ddr/Inst_DDR/u_ddr_mig/u_ddr2_infrastructure/plle2_i/CLKOUT32default:default2default:default2�
 "�
<uut_ram2ddr/Inst_DDR/u_ddr_mig/u_ddr2_infrastructure/plle2_i	<uut_ram2ddr/Inst_DDR/u_ddr_mig/u_ddr2_infrastructure/plle2_i2default:default2default:default2C
 +DRC|Netlist|Instance|Required Pin|PLLE2_ADV2default:default8Z	REQP-1709h px� 
q
%s completed successfully
29*	vivadotcl23
report_drc (run_mandatory_drcs)2default:defaultZ4-42h px� 
g
DRC finished with %s
1905*	planAhead2)
0 Errors, 35 Warnings2default:defaultZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
Q
/Please set project.enableDesignId to be 'true'.457*projectZ1-821h px� 
i
)Running write_bitstream with %s threads.
1750*designutils2
22default:defaultZ20-2272h px� 
?
Loading data files...
1271*designutilsZ12-1165h px� 
>
Loading site data...
1273*designutilsZ12-1167h px� 
?
Loading route data...
1272*designutilsZ12-1166h px� 
?
Processing options...
1362*designutilsZ12-1514h px� 
<
Creating bitmap...
1249*designutilsZ12-1141h px� 
7
Creating bitstream...
7*	bitstreamZ40-7h px� 
Z
Writing bitstream %s...
11*	bitstream2
	./cpu.bit2default:defaultZ40-11h px� 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px� 
�
�WebTalk data collection is mandatory when using a WebPACK part without a full Vivado license. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.
120*projectZ1-120h px� 
�
�'%s' has been successfully sent to Xilinx on %s. For additional details about this file, please refer to the Webtalk help file at %s.
186*common2X
DE:/HITCS/exp5/cpu_artix/cpu.runs/impl_1/usage_statistics_webtalk.xml2default:default2,
Wed Jul 26 11:49:18 20172default:default2I
5D:/Xilinx/Vivado/2017.1/doc/webtalk_introduction.html2default:defaultZ17-186h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
772default:default2
412default:default2
02default:default2
02default:defaultZ4-41h px� 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:282default:default2
00:00:272default:default2
1685.0742default:default2
373.5512default:defaultZ17-268h px� 


End Record