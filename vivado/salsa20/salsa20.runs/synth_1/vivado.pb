
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
a
#Helper process launched with PID %s4824*oasys2
2000922default:defaultZ8-7075h px? 
?
%s*synth2?
?Starting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 2296.328 ; gain = 0.000 ; free physical = 1759 ; free virtual = 5850
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
Salsa202default:default2
 2default:default2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
32default:default8@Z8-6157h px? 
S
%s
*synth2;
'	Parameter ADDR_KEY0 bound to: 3'b000 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter ADDR_KEY1 bound to: 3'b001 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter ADDR_KEY2 bound to: 3'b010 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter ADDR_KEY3 bound to: 3'b011 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter ADDR_NONCE bound to: 3'b100 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter ADDR_SETUP bound to: 3'b101 
2default:defaulth p
x
? 
?
-case statement is not full and has no default155*oasys2c
M/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20.sv2default:default2
502default:default8@Z8-155h px? 
?
synthesizing module '%s'%s4497*oasys2%
Salsa20DoubleKeys2default:default2
 2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
32default:default8@Z8-6157h px? 
X
%s
*synth2@
,	Parameter NOT_INITIALIZED bound to: 2'b00 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter KEY_GEN_START bound to: 2'b01 
2default:defaulth p
x
? 
P
%s
*synth28
$	Parameter KEY_GEN bound to: 2'b10 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter KEY_READY bound to: 2'b11 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2

Salsa20Key2default:default2
 2default:default2f
P/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20Key.sv2default:default2
32default:default8@Z8-6157h px? 
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
1062default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2&
Salsa20ColumnRound2default:default2
 2default:default2j
T/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20_rounds.sv2default:default2
782default:default8@Z8-6157h px? 
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
T/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20_rounds.sv2default:default2
782default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2#
Salsa20RowRound2default:default2
 2default:default2j
T/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20_rounds.sv2default:default2
502default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
Salsa20RowRound2default:default2
 2default:default2
32default:default2
12default:default2j
T/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20_rounds.sv2default:default2
502default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
Salsa20DoubleRound2default:default2
 2default:default2
42default:default2
12default:default2j
T/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20_rounds.sv2default:default2
1062default:default8@Z8-6155h px? 
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
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
Salsa20DoubleKeys2default:default2
 2default:default2
72default:default2
12default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
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
?Finished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 2296.328 ; gain = 0.000 ; free physical = 1584 ; free virtual = 5675
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 2296.328 ; gain = 0.000 ; free physical = 2337 ; free virtual = 6428
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
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 2296.328 ; gain = 0.000 ; free physical = 2337 ; free virtual = 6428
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
00:00:00.042default:default2
00:00:00.042default:default2
2296.3282default:default2
0.0002default:default2
23292default:default2
64202default:defaultZ17-722h px? 
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
2328.2772default:default2
0.0002default:default2
22372default:default2
63282default:defaultZ17-722h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:00.062default:default2
00:00:00.042default:default2
2328.2772default:default2
0.0002default:default2
22362default:default2
63262default:defaultZ17-722h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Constraint Validation : Time (s): cpu = 00:00:10 ; elapsed = 00:00:12 . Memory (MB): peak = 2328.277 ; gain = 31.949 ; free physical = 2315 ; free virtual = 6406
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
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:10 ; elapsed = 00:00:12 . Memory (MB): peak = 2328.277 ; gain = 31.949 ; free physical = 2314 ; free virtual = 6405
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
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:10 ; elapsed = 00:00:12 . Memory (MB): peak = 2328.277 ; gain = 31.949 ; free physical = 2317 ; free virtual = 6407
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
	state_reg2default:default2%
Salsa20DoubleKeys2default:defaultZ8-802h px? 
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
_         NOT_INITIALIZED |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_           KEY_GEN_START |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                 KEY_GEN |                               10 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_               KEY_READY |                               11 |                               11
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
	state_reg2default:default2

sequential2default:default2%
Salsa20DoubleKeys2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:11 ; elapsed = 00:00:13 . Memory (MB): peak = 2328.277 ; gain = 31.949 ; free physical = 2306 ; free virtual = 6397
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
,	   2 Input   32 Bit       Adders := 48    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit       Adders := 1     
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
.	   2 Input     64 Bit         XORs := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit         XORs := 32    
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
.	              256 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               64 Bit    Registers := 19    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 16    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 94    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 9     
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
,	   8 Input  256 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   64 Bit        Muxes := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 16    
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
,	   2 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 13    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    1 Bit        Muxes := 2     
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
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[63]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[62]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[61]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[60]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[59]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[58]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[57]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[56]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[55]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[54]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[53]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[52]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[51]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[50]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[49]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[48]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[47]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[46]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[45]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[44]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[43]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[42]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[41]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[40]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[39]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[38]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[37]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[36]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[35]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[34]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[33]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[32]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[31]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[30]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[29]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[28]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[27]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[26]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[25]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[24]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[23]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[22]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[21]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[20]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[19]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[18]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[17]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[16]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[15]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
1st2default:default28
$Salsa20DoubleKeys/blkid_reg[14]__0/Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6859h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-68592default:default2
1002default:defaultZ17-14h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
?
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
Q2default:default2m
W/media/psf/DigitalDesign/vivado/salsa20/salsa20.srcs/sources_1/new/Salsa20DoubleKeys.sv2default:default2
662default:default8@Z8-6858h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:17 ; elapsed = 00:00:19 . Memory (MB): peak = 2328.277 ; gain = 31.949 ; free physical = 2283 ; free virtual = 6374
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
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:22 ; elapsed = 00:00:24 . Memory (MB): peak = 2328.277 ; gain = 31.949 ; free physical = 2181 ; free virtual = 6272
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
?Finished Timing Optimization : Time (s): cpu = 00:00:24 ; elapsed = 00:00:27 . Memory (MB): peak = 2328.277 ; gain = 31.949 ; free physical = 2165 ; free virtual = 6256
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
?Finished Technology Mapping : Time (s): cpu = 00:00:26 ; elapsed = 00:00:28 . Memory (MB): peak = 2328.277 ; gain = 31.949 ; free physical = 2159 ; free virtual = 6250
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
?Finished IO Insertion : Time (s): cpu = 00:00:29 ; elapsed = 00:00:31 . Memory (MB): peak = 2328.277 ; gain = 31.949 ; free physical = 2158 ; free virtual = 6249
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
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:29 ; elapsed = 00:00:31 . Memory (MB): peak = 2328.277 ; gain = 31.949 ; free physical = 2160 ; free virtual = 6251
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
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:29 ; elapsed = 00:00:32 . Memory (MB): peak = 2328.277 ; gain = 31.949 ; free physical = 2160 ; free virtual = 6251
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
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:29 ; elapsed = 00:00:32 . Memory (MB): peak = 2328.277 ; gain = 31.949 ; free physical = 2160 ; free virtual = 6251
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:29 ; elapsed = 00:00:32 . Memory (MB): peak = 2328.277 ; gain = 31.949 ; free physical = 2160 ; free virtual = 6251
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
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:29 ; elapsed = 00:00:32 . Memory (MB): peak = 2328.277 ; gain = 31.949 ; free physical = 2160 ; free virtual = 6251
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
|2     |CARRY4 |   368|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |     5|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |   629|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |  1198|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |   805|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT5   |   307|
2default:defaulth px? 
D
%s*synth2,
|8     |LUT6   |   460|
2default:defaulth px? 
D
%s*synth2,
|9     |MUXF7  |   128|
2default:defaulth px? 
D
%s*synth2,
|10    |MUXF8  |    64|
2default:defaulth px? 
D
%s*synth2,
|11    |FDRE   |  2535|
2default:defaulth px? 
D
%s*synth2,
|12    |FDSE   |    55|
2default:defaulth px? 
D
%s*synth2,
|13    |IBUF   |    72|
2default:defaulth px? 
D
%s*synth2,
|14    |OBUF   |    67|
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
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:29 ; elapsed = 00:00:32 . Memory (MB): peak = 2328.277 ; gain = 31.949 ; free physical = 2160 ; free virtual = 6251
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
t
%s
*synth2\
HSynthesis finished with 0 errors, 192 critical warnings and 0 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Runtime : Time (s): cpu = 00:00:28 ; elapsed = 00:00:30 . Memory (MB): peak = 2328.277 ; gain = 0.000 ; free physical = 2212 ; free virtual = 6303
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:30 ; elapsed = 00:00:32 . Memory (MB): peak = 2328.285 ; gain = 31.949 ; free physical = 2212 ; free virtual = 6303
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
00:00:00.092default:default2
00:00:00.092default:default2
2328.2852default:default2
0.0002default:default2
22952default:default2
63862default:defaultZ17-722h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
5602default:defaultZ29-17h px? 
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
00:00:002default:default2
00:00:002default:default2
2328.2852default:default2
0.0002default:default2
22392default:default2
63302default:defaultZ17-722h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
342default:default2
02default:default2
1642default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:402default:default2
00:00:382default:default2
2328.2852default:default2
32.0232default:default2
23892default:default2
64802default:defaultZ17-722h px? 
u
%s6*runtcl2Y
ESynthesis results are not added to the cache due to CRITICAL_WARNING
2default:defaulth px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2\
H/media/psf/DigitalDesign/vivado/salsa20/salsa20.runs/synth_1/Salsa20.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2x
dExecuting : report_utilization -file Salsa20_utilization_synth.rpt -pb Salsa20_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Mar 19 18:21:13 20212default:defaultZ17-206h px? 


End Record