
u
Command: %s
53*	vivadotcl2D
0synth_design -top Salsa20 -part xc7a100tcsg324-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px? 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
42default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
218882default:defaultZ8-7075h px? 
?
%s*synth2?
?Starting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 2327.332 ; gain = 0.000 ; free physical = 1840 ; free virtual = 5776
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
Salsa202default:default2
 2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
32default:default8@Z8-6157h px? 
M
%s
*synth25
!	Parameter STOP bound to: 2'b00 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter READY bound to: 2'b01 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter BLKDID_UPDATE bound to: 2'b10 
2default:defaulth p
x
? 
?
-case statement is not full and has no default155*oasys2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
842default:default8@Z8-155h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
valid2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
762default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
ready2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
762default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
initialized2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
762default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
blkid2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
762default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
key2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
762default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
	keylength2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
762default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
nonce2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
762default:default8@Z8-567h px? 
?
synthesizing module '%s'%s4497*oasys2
Salsa20Core2default:default2
 2default:default2g
Q/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20Core.sv2default:default2
32default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2

Salsa20Key2default:default2
 2default:default2f
P/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20Key.sv2default:default2
32default:default8@Z8-6157h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
sigma2default:default2f
P/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20Key.sv2default:default2
682default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
tau2default:default2f
P/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20Key.sv2default:default2
682default:default8@Z8-567h px? 
?
synthesizing module '%s'%s4497*oasys2
Salsa20Hash2default:default2
 2default:default2g
Q/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20Hash.sv2default:default2
32default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2&
Salsa20DoubleRound2default:default2
 2default:default2j
T/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20_rounds.sv2default:default2
1662default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2&
Salsa20ColumnRound2default:default2
 2default:default2j
T/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20_rounds.sv2default:default2
1092default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2'
Salsa20QuarterRound2default:default2
 2default:default2j
T/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20_rounds.sv2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
Salsa20QuarterRound2default:default2
 2default:default2
12default:default2
12default:default2j
T/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20_rounds.sv2default:default2
32default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
Salsa20ColumnRound2default:default2
 2default:default2
22default:default2
12default:default2j
T/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20_rounds.sv2default:default2
1092default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2#
Salsa20RowRound2default:default2
 2default:default2j
T/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20_rounds.sv2default:default2
512default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
Salsa20RowRound2default:default2
 2default:default2
32default:default2
12default:default2j
T/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20_rounds.sv2default:default2
512default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
Salsa20DoubleRound2default:default2
 2default:default2
42default:default2
12default:default2j
T/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20_rounds.sv2default:default2
1662default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Salsa20Hash2default:default2
 2default:default2
52default:default2
12default:default2g
Q/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20Hash.sv2default:default2
32default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

Salsa20Key2default:default2
 2default:default2
62default:default2
12default:default2f
P/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20Key.sv2default:default2
32default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Salsa20Core2default:default2
 2default:default2
72default:default2
12default:default2g
Q/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20Core.sv2default:default2
32default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Salsa202default:default2
 2default:default2
82default:default2
12default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
32default:default8@Z8-6155h px? 
?
%s*synth2?
?Finished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:07 . Memory (MB): peak = 2327.332 ; gain = 0.000 ; free physical = 1921 ; free virtual = 5857
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:08 . Memory (MB): peak = 2327.332 ; gain = 0.000 ; free physical = 2297 ; free virtual = 6234
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:08 . Memory (MB): peak = 2327.332 ; gain = 0.000 ; free physical = 2297 ; free virtual = 6234
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.192default:default2
00:00:00.192default:default2
2327.3322default:default2
0.0002default:default2
22822default:default2
62182default:defaultZ17-722h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/constrs_1/new/timing.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/constrs_1/new/timing.xdc2default:default8Z20-178h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2359.2812default:default2
0.0002default:default2
21812default:default2
61172default:defaultZ17-722h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:00.092default:default2
00:00:00.052default:default2
2359.2812default:default2
0.0002default:default2
21802default:default2
61172default:defaultZ17-722h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Constraint Validation : Time (s): cpu = 00:00:13 ; elapsed = 00:00:15 . Memory (MB): peak = 2359.281 ; gain = 31.949 ; free physical = 2267 ; free virtual = 6203
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:13 ; elapsed = 00:00:15 . Memory (MB): peak = 2359.281 ; gain = 31.949 ; free physical = 2267 ; free virtual = 6203
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:13 ; elapsed = 00:00:15 . Memory (MB): peak = 2359.281 ; gain = 31.949 ; free physical = 2270 ; free virtual = 6206
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
Salsa202default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    STOP |                              001 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                   READY |                              010 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_           BLKDID_UPDATE |                              100 |                               10
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2
Salsa202default:defaultZ8-3354h px? 
?
!inferring latch for variable '%s'327*oasys2%
keylength_reg_reg2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
912default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
key_reg_reg[0]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
902default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
key_reg_reg[1]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
902default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
key_reg_reg[2]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
902default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
key_reg_reg[3]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
902default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
key_reg_reg[4]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
902default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
key_reg_reg[5]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
902default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
key_reg_reg[6]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
902default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
key_reg_reg[7]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
902default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
key_reg_reg[8]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
902default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
key_reg_reg[9]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
902default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2#
key_reg_reg[10]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
902default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2#
key_reg_reg[11]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
902default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2#
key_reg_reg[12]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
902default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2#
key_reg_reg[13]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
902default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2#
key_reg_reg[14]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
902default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2#
key_reg_reg[15]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
902default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2#
key_reg_reg[16]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
902default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2#
key_reg_reg[17]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
902default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2#
key_reg_reg[18]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
902default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2#
key_reg_reg[19]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
902default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2#
key_reg_reg[20]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
902default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2#
key_reg_reg[21]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
902default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2#
key_reg_reg[22]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
902default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2#
key_reg_reg[23]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
902default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2#
key_reg_reg[24]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
902default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2#
key_reg_reg[25]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
902default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2#
key_reg_reg[26]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
902default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2#
key_reg_reg[27]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
902default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2#
key_reg_reg[28]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
902default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2#
key_reg_reg[29]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
902default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2#
key_reg_reg[30]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
902default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2#
key_reg_reg[31]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
902default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2$
nonce_reg_reg[0]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
922default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2$
nonce_reg_reg[1]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
922default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2$
nonce_reg_reg[2]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
922default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2$
nonce_reg_reg[3]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
922default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2$
nonce_reg_reg[4]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
922default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2$
nonce_reg_reg[5]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
922default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2$
nonce_reg_reg[6]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
922default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2$
nonce_reg_reg[7]2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
922default:default8@Z8-327h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:14 ; elapsed = 00:00:16 . Memory (MB): peak = 2359.281 ; gain = 31.949 ; free physical = 2260 ; free virtual = 6196
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   64 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 336   
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit         XORs := 320   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit         XORs := 64    
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               64 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 64    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   64 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 16    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    6 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 7     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:17 ; elapsed = 00:00:20 . Memory (MB): peak = 2359.281 ; gain = 31.949 ; free physical = 2241 ; free virtual = 6178
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:23 ; elapsed = 00:00:25 . Memory (MB): peak = 2359.281 ; gain = 31.949 ; free physical = 2137 ; free virtual = 6073
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Timing Optimization : Time (s): cpu = 00:00:26 ; elapsed = 00:00:29 . Memory (MB): peak = 2359.281 ; gain = 31.949 ; free physical = 2121 ; free virtual = 6057
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Technology Mapping : Time (s): cpu = 00:00:33 ; elapsed = 00:00:36 . Memory (MB): peak = 2359.281 ; gain = 31.949 ; free physical = 2094 ; free virtual = 6030
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished IO Insertion : Time (s): cpu = 00:00:37 ; elapsed = 00:00:40 . Memory (MB): peak = 2359.281 ; gain = 31.949 ; free physical = 2092 ; free virtual = 6029
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:37 ; elapsed = 00:00:40 . Memory (MB): peak = 2359.281 ; gain = 31.949 ; free physical = 2092 ; free virtual = 6029
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:42 ; elapsed = 00:00:45 . Memory (MB): peak = 2359.281 ; gain = 31.949 ; free physical = 2070 ; free virtual = 6006
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:43 ; elapsed = 00:00:46 . Memory (MB): peak = 2359.281 ; gain = 31.949 ; free physical = 2085 ; free virtual = 6022
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:43 ; elapsed = 00:00:46 . Memory (MB): peak = 2359.281 ; gain = 31.949 ; free physical = 2085 ; free virtual = 6022
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:43 ; elapsed = 00:00:46 . Memory (MB): peak = 2359.281 ; gain = 31.949 ; free physical = 2086 ; free virtual = 6022
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|1     |BUFG   |     2|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |  2704|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |    82|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |  2596|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |  4193|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |  3809|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT5   |  5213|
2default:defaulth px? 
D
%s*synth2,
|8     |LUT6   |  5687|
2default:defaulth px? 
D
%s*synth2,
|9     |FDRE   |   582|
2default:defaulth px? 
D
%s*synth2,
|10    |LD     |   329|
2default:defaulth px? 
D
%s*synth2,
|11    |IBUF   |   837|
2default:defaulth px? 
D
%s*synth2,
|12    |OBUF   |   515|
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:43 ; elapsed = 00:00:46 . Memory (MB): peak = 2359.281 ; gain = 31.949 ; free physical = 2086 ; free virtual = 6022
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 41 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Runtime : Time (s): cpu = 00:00:40 ; elapsed = 00:00:43 . Memory (MB): peak = 2359.281 ; gain = 0.000 ; free physical = 2141 ; free virtual = 6077
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:43 ; elapsed = 00:00:46 . Memory (MB): peak = 2359.289 ; gain = 31.949 ; free physical = 2141 ; free virtual = 6077
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.482default:default2
00:00:00.492default:default2
2359.2892default:default2
0.0002default:default2
21992default:default2
61362default:defaultZ17-722h px? 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
30332default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:002default:default2
2397.3442default:default2
0.0002default:default2
21002default:default2
60362default:defaultZ17-722h px? 
?
!Unisim Transformation Summary:
%s111*project2]
I  A total of 329 instances were transformed.
  LD => LDCE: 329 instances
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
332default:default2
502default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:01:022default:default2
00:01:002default:default2
2397.3442default:default2
70.0782default:default2
22662default:default2
62022default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2\
H/media/psf/DigitalDesign/vivado/salsa20/salsa20.runs/synth_1/Salsa20.dcp2default:defaultZ17-1381h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2&
write_checkpoint: 2default:default2
00:00:082default:default2
00:00:072default:default2
2429.3592default:default2
32.0162default:default2
22672default:default2
62032default:defaultZ17-722h px? 
?
%s4*runtcl2x
dExecuting : report_utilization -file Salsa20_utilization_synth.rpt -pb Salsa20_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Mar  1 20:19:10 20212default:defaultZ17-206h px? 


End Record