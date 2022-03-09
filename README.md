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

Sigue aquí el lab 2

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
* Algo
* Del Gtkwave xd

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
