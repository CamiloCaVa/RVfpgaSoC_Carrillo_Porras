# RVfpgaSoC Curse

## Introduction
Through this document we want to present a development of a part of the RVfpgaSoC course which was carried out in order to begin to internalize and manage the construction of a SweRVolfX SoC subset from scratch using basic components such as the core, the memories and the SweRV peripherals. As basic tools: 
* Vivado
* Cygwin (Since it was done on Windows, this being expendable if working on Linux)
* Visual Studio Code (PlatformIO)
* Among others.

## Laboratory 1
The first part consisted of a brief introduction to SoC, SweRVolfX, RVfpga and RVfpgaSoC to understand how to start the construction of the Block Design, which was composed of: 
* [Swerv Wrapper module](img/ModulesPDF/1_Module_swerv_wrapper_verilog.pdf)
* [Interconnect Wrapper module](img/ModulesPDF/2_Module_IntconWrapper.pdf)
* [Boot-ROM module](img/ModulesPDF/3_Module_BootromWrapper.pdf)
* [System Controller module](img/ModulesPDF/4_Module_SysconWrapper.pdf)
* [GPIO Top module](img/ModulesPDF/5_Module_GpioWrapper.pdf)
* 32 [Bidirectional GPIO modules](img/ModulesPDF/6_Modules_Bidirec_X_32.pdf)
<br />To finally have a block design, with a top view, like this: 
<p align="center">
  <img src="img/BD Proyecto Arq.jpeg" width="850" title="Block Design">
</p>

<br />After we built block design, we proceeded to generate the bitstream which was completed successfully, how shows the next picture:
<p align="center">
	<img src="img/bitstream.jpg" width="850" title="Bitsream">
</p>

## Laboratory 2
In this part we began to develop the implementation and use of the modules created in the previous part, thus creating a main module in which our design with the clock and memories would be connected. Next, we used Verilator to complete this connections, and then with PlatformIO we continued with the creating process of the trace.

To complete the objective of this laboratory, the following steps were carried out:
- the simulation binary was generated for RvfpgaSim.
- Once the simulation binary (Vrvfpgasim) is generated, it is modified using VSCode and PlatformIO to generate the simulation trace (trace.vcd) of program AL_Operations.
- after generating the trace (trace.vcd), we proceed to analyze the simulation in GTKWave.

### Simulation analysis in GTKWave
Now we will add a clock, instruction, and register signals, as you can see below:

![image](https://user-images.githubusercontent.com/94850035/157537237-cf56eb64-c71d-4128-a4b4-9c58c890a870.png)

Below you can find the name of each signal and its respective path to add in the GTKWave signals panel:

```
gtkwave::addSignalsFromList rvfpgasim.swervolf.swerv_wrapper_verilog_0.swerv_eh1_2.swerv.ifu.clk
gtkwave::addSignalsFromList rvfpgasim.swervolf.swerv_wrapper_verilog_0.swerv_eh1_2.swerv.ifu.ifu_i0_instr
gtkwave::addSignalsFromList rvfpgasim.swervolf.swerv_wrapper_verilog_0.swerv_eh1_2.swerv.ifu.ifu_i1_instr
gtkwave::addSignalsFromList rvfpgasim.swervolf.swerv_wrapper_verilog_0.swerv_eh1_2.swerv.dec.arf.gpr_banks(0).gpr(28).gprff.dout
```

In the following image you can see the AL_operations.S program and its equivalent machine instructions:
![image](https://user-images.githubusercontent.com/94850035/157539629-41280887-720a-401b-8a68-c2ac5371d66e.png)

Now view the signals change as the program executes. We expect the instructions and t3 (register x28) to become the values shown in the image as the program runs:

![image](https://user-images.githubusercontent.com/94850035/157540589-68f06b4b-d5c1-4f06-b217-23893f136ab9.png)

After zooming in, we proceed to analyze the result of the simulation of the three arithmetic-logical instructions of the first and second iterations of the loop, which were shown in the previous images.

![image](https://user-images.githubusercontent.com/94850035/157541984-a4e7fe4d-f4ea-4e9f-82cf-1712c5049f94.png)

as you can see in the GTKWave after getting the first and second instructions, x28(t3), which in our GTKWave corresponds to the dout signal, becomes 0 after 8 cycles due to the first instruction: li t3, 0x0 ( 0x00000E13). One cycle later dout is updated to 0x6 due to the following instruction: addi t3, t3, 6 (0x006E0E13), then updated to 0x5 due to the following instruction: addi t3, t3, -1 (0xFFFE0E13). Finally, dout is updated to 0x1 due to the following instruction: andi t3, t3, 3 (0x003E7E13). Finally, the following two instructions are obtained: beq zero, zero, REPEAT (0xFE000CE3) and nop (0x00000013); the branch is taken and the cycle is repeated.

In this image you can see how the cycle repeats itself after this, of course it is taking the values defined in the previous cycle, for which the dout begins to have new values depending on the instructions given.

![image](https://user-images.githubusercontent.com/94850035/157544488-c7fa942f-5170-4cf0-9ada-3558b326f897.png)


### Errors presented
Below we will show the different errors that occurred when making this second part:

- When the binary simulator had to be generated using the following commands
```
➢	cd [RVfpgaSoCPath]/RVfpgaSoC/Labs/LabResources/Lab2/verilatorSIM
➢	make clean
➢	make
```
The following error appeared, which will be shown below in the following image:

<p align="center">
	<img src="https://user-images.githubusercontent.com/94850035/157121643-24dff339-d187-45d3-9c33-436ab18a70ad.jpeg" width="850">
</p>

We realized that it was due to the lack of libraries in the verilated.cpp file, so we proceeded to find the path where this file was located to modify it, as shown in the following image:

<p align="center">
	<img src="https://user-images.githubusercontent.com/94850035/157122736-92e9f756-74fb-437c-8d31-b49b3d997fce.jpeg" width="850">
</p>

After adding the libraries shown in the image above, which are:
```
limits
cstddef
iostream
```
The previous commands were executed again, being successful this time.

When we tried to generate the trace.vcd file via VSCode and PlatformIO, we got the following simulation output:

<p align="center">
	<img src="https://user-images.githubusercontent.com/94850035/157126861-ff13dcd1-b585-42db-9025-2ff1f684065c.png" width="850">
</p>

When the file was searched in the path where it was generated, we realized that it was not there, so we proceeded to see if it was in a hidden file, but this was not the case

## Conclusions
* The complements given by the Imagination University at laboratory 1 allowed to simplify the work, letting us make to building of the block design in a few steps that consisted in wired the connections and then do the bitstream without any problem.
* Those practices let us to use, learn and explore in a processor with a RISC-V architecture, being able like this develop an experience in this label that will help our laboral future, but taking into account that it is now these free benefits for being students.
* Due to the pipelined 9-stage processor and SweRV core dependencies, the effects of instructions are seen eight or more cycles after the instructions are fetched.

## References
* [RVfpgaSoC Curse by Imagination University](https://university.imgtec.com/resources/download/rvfpgasoc-v1-0/)

### Presented by:
<p align="left">
  <img src="img/ccprofile.jfif" width="150" title="Camilo Carrillo">
</p>
Camilo E. Carrillo <br />
Electronic Engineering bachelor student at Universidad Industrial de Santander - Colombia

<p align="left">
  <img src="img/epprofile.jpeg" width="150" title="Erika Porras">
</p>
Erika D. Porras <br />
Electronic Engineering bachelor student at Universidad Industrial de Santander - Colombia <br />

### Special Thanks
<p align="center">
  <img src="img/imagination.jpg" height="150" title="Imagination University">
  <img src="img/uis.png" height="150" title="Universidad Industrial de Santander">
</p>
