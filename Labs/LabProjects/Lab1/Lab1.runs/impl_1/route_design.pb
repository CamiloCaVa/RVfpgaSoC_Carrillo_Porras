
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
?Bank IO standard internal Vref conflict: Conflicting INTERNAL_VREF constraint in Bank %s.  Some ports in this bank, for example, %s   (SSTL18_II, Vref=0.900V) 
 at site %s conflict with constrained INTERNAL_VREF of 0.750V.%s*DRC2.
 "
342default:default2default:default2D
 ".
ddram_dq[0]ddram_dq[0]2default:default2default:default2@
 "*
	IOB_X1Y54
	IOB_X1Y542default:default2default:default24
 DRC|Pin Planning|IO Standard2default:default8ZBIIVRC-1h px? 
b
DRC finished with %s
79*	vivadotcl2(
0 Errors, 1 Warnings2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
B
-Phase 1 Build RT Design | Checksum: cebce39d
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:16 ; elapsed = 00:00:57 . Memory (MB): peak = 2451.805 ; gain = 0.0002default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
A
,Phase 2.1 Create Timer | Checksum: cebce39d
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:17 ; elapsed = 00:00:58 . Memory (MB): peak = 2451.805 ; gain = 0.0002default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
M
8Phase 2.2 Fix Topology Constraints | Checksum: cebce39d
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:17 ; elapsed = 00:00:59 . Memory (MB): peak = 2451.805 ; gain = 0.0002default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
F
1Phase 2.3 Pre Route Cleanup | Checksum: cebce39d
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:17 ; elapsed = 00:00:59 . Memory (MB): peak = 2451.805 ; gain = 0.0002default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.4 Update Timing | Checksum: 1838e9f42
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:54 ; elapsed = 00:01:24 . Memory (MB): peak = 2451.805 ; gain = 0.0002default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=0.738  | TNS=0.000  | WHS=-3.826 | THS=-459.745|
2default:defaultZ35-416h px? 
I
4Phase 2 Router Initialization | Checksum: 1535bb8db
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:02:10 ; elapsed = 00:01:34 . Memory (MB): peak = 2468.844 ; gain = 17.0392default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
C
.Phase 3 Initial Routing | Checksum: 17bfe349c
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:02:48 ; elapsed = 00:01:58 . Memory (MB): peak = 2517.621 ; gain = 65.8162default:defaulth px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-1.023 | TNS=-69.640| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 16c631649
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:06:46 ; elapsed = 00:04:23 . Memory (MB): peak = 2517.621 ; gain = 65.8162default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.136  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.2 Global Iteration 1 | Checksum: 213f741f8
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:07:27 ; elapsed = 00:04:57 . Memory (MB): peak = 2517.621 ; gain = 65.8162default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 213f741f8
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:07:27 ; elapsed = 00:04:57 . Memory (MB): peak = 2517.621 ; gain = 65.8162default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 5.1.1 Update Timing | Checksum: 14ca7f724
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:07:33 ; elapsed = 00:05:01 . Memory (MB): peak = 2517.621 ; gain = 65.8162default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.223  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 14ca7f724
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:07:33 ; elapsed = 00:05:01 . Memory (MB): peak = 2517.621 ; gain = 65.8162default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 14ca7f724
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:07:34 ; elapsed = 00:05:01 . Memory (MB): peak = 2517.621 ; gain = 65.8162default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 14ca7f724
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:07:34 ; elapsed = 00:05:01 . Memory (MB): peak = 2517.621 ; gain = 65.8162default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 6.1.1 Update Timing | Checksum: 149146157
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:07:41 ; elapsed = 00:05:06 . Memory (MB): peak = 2517.621 ; gain = 65.8162default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.223  | TNS=0.000  | WHS=-2.020 | THS=-4.602 |
2default:defaultZ35-416h px? 
B
-Phase 6.1 Hold Fix Iter | Checksum: db5b45e4
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:07:43 ; elapsed = 00:05:07 . Memory (MB): peak = 2517.621 ; gain = 65.8162default:defaulth px? 
@
+Phase 6 Post Hold Fix | Checksum: de8d1128
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:07:43 ; elapsed = 00:05:08 . Memory (MB): peak = 2517.621 ; gain = 65.8162default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
A
,Phase 7 Route finalize | Checksum: f03dbf29
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:07:43 ; elapsed = 00:05:08 . Memory (MB): peak = 2517.621 ; gain = 65.8162default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
H
3Phase 8 Verifying routed nets | Checksum: f03dbf29
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:07:44 ; elapsed = 00:05:09 . Memory (MB): peak = 2517.621 ; gain = 65.8162default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 11606f3e9
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:07:50 ; elapsed = 00:05:16 . Memory (MB): peak = 2517.621 ; gain = 65.8162default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
10.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 10.1 Update Timing | Checksum: 165e366a1
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:07:58 ; elapsed = 00:05:21 . Memory (MB): peak = 2517.621 ; gain = 65.8162default:defaulth px? 
?
Estimated Timing Summary %s
57*route2J
6| WNS=0.223  | TNS=0.000  | WHS=0.051  | THS=0.000  |
2default:defaultZ35-57h px? 
?
?The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
127*routeZ35-327h px? 
G
2Phase 10 Post Router Timing | Checksum: 165e366a1
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:07:58 ; elapsed = 00:05:21 . Memory (MB): peak = 2517.621 ; gain = 65.8162default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2p
\Time (s): cpu = 00:07:58 ; elapsed = 00:05:21 . Memory (MB): peak = 2517.621 ; gain = 65.8162default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1472default:default2
442default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:08:102default:default2
00:05:282default:default2
2517.6212default:default2
65.8162default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:012default:default2 
00:00:00.0742default:default2
2517.6212default:default2
0.0002default:defaultZ17-268h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:232default:default2
00:00:072default:default2
2517.6212default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?D:/USUARIO/Usuario/Documents/LibrosU/LibrosU/2021-2/Arquitectura/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.runs/impl_1/rvfpga_routed.dcp2default:defaultZ17-1381h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:312default:default2
00:00:162default:default2
2517.6212default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2{
gExecuting : report_drc -file rvfpga_drc_routed.rpt -pb rvfpga_drc_routed.pb -rpx rvfpga_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2n
Zreport_drc -file rvfpga_drc_routed.rpt -pb rvfpga_drc_routed.pb -rpx rvfpga_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
?D:/USUARIO/Usuario/Documents/LibrosU/LibrosU/2021-2/Arquitectura/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.runs/impl_1/rvfpga_drc_routed.rpt?D:/USUARIO/Usuario/Documents/LibrosU/LibrosU/2021-2/Arquitectura/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.runs/impl_1/rvfpga_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
report_drc: 2default:default2
00:00:202default:default2
00:00:102default:default2
2517.6212default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file rvfpga_methodology_drc_routed.rpt -pb rvfpga_methodology_drc_routed.pb -rpx rvfpga_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file rvfpga_methodology_drc_routed.rpt -pb rvfpga_methodology_drc_routed.pb -rpx rvfpga_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
450*coretcl2?
?D:/USUARIO/Usuario/Documents/LibrosU/LibrosU/2021-2/Arquitectura/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.runs/impl_1/rvfpga_methodology_drc_routed.rpt?D:/USUARIO/Usuario/Documents/LibrosU/LibrosU/2021-2/Arquitectura/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.runs/impl_1/rvfpga_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2(
report_methodology: 2default:default2
00:00:432default:default2
00:00:232default:default2
2599.5002default:default2
81.8792default:defaultZ17-268h px? 
?
%s4*runtcl2?
wExecuting : report_power -file rvfpga_power_routed.rpt -pb rvfpga_power_summary_routed.pb -rpx rvfpga_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2~
jreport_power -file rvfpga_power_routed.rpt -pb rvfpga_power_summary_routed.pb -rpx rvfpga_power_routed.rpx2default:defaultZ4-113h px? 
q
$Power model is not available for %s
23*power2*
	STARTUPE2		STARTUPE22default:default8Z33-23h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
?Detected over-assertion of set/reset/preset/clear net with high fanouts, power estimation might not be accurate. Please run Tool - Power Constraint Wizard to set proper switching activities for control signals.282*powerZ33-332h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1602default:default2
452default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
report_power: 2default:default2
00:00:422default:default2
00:00:282default:default2
2644.7932default:default2
45.2932default:defaultZ17-268h px? 
?
%s4*runtcl2m
YExecuting : report_route_status -file rvfpga_route_status.rpt -pb rvfpga_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file rvfpga_timing_summary_routed.rpt -pb rvfpga_timing_summary_routed.pb -rpx rvfpga_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 

%s4*runtcl2c
OExecuting : report_incremental_reuse -file rvfpga_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 

%s4*runtcl2c
OExecuting : report_clock_utilization -file rvfpga_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file rvfpga_bus_skew_routed.rpt -pb rvfpga_bus_skew_routed.pb -rpx rvfpga_bus_skew_routed.rpx
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 


End Record