# RVfpgaSoC Curse

## Introduction
Through this document we want to present a development of a part of the RVfpgaSoC course which was carried out in order to begin to internalize and manage the construction of a SweRVolfX SoC subset from scratch using basic components such as the core, the memories and the SweRV peripherals. As basic tools, Vivado was used, Cygwin (Since it was done on Windows, this being expendable if working on Linux), Visual Studio Code (PlatformIO), among others.

## First Part
The first part consisted of a brief introduction to SoC, SweRVolfX, RVfpga and RVfpgaSoC to understand how to start the construction of the Block Design, which was composed of a Swerv Wrapper module, an Interconnect Wrapper module, a Boot-ROM module, one GPIO Top module, one System Controller module and 32 Bidirectional GPIO modules, to finally have a block design like this: 
<p align="center">
  <img src="img/BD.jpg" width="850" title="Block Design">
</p>

## Second Part
In this part we began to develop the implementation and use of the modules created in the previous part, thus creating a main module in which our design with the clock and memories would be connected. To carry out these objectives, the Verilator tool was used with which, later, using PlatformIO, the process of creating the trace could be continued.

### Errors presented
Below we will show the different errors that occurred when making this second part:

- when the binary simulator had to be generated using the following commands
´´´
➢	cd [RVfpgaSoCPath]/RVfpgaSoC/Labs/LabResources/Lab2/verilatorSIM
➢	make clean
➢	make
´´´
The following error appeared, which will be shown below in the following image:

![WhatsApp Image 2022-03-06 at 11 48 45 PM](https://user-images.githubusercontent.com/94850035/157121643-24dff339-d187-45d3-9c33-436ab18a70ad.jpeg)

we realized that it was due to the lack of libraries in the verilated.cpp file, so we proceeded to find the path where this file was located to modify it, as shown in the following image:

![WhatsApp Image 2022-03-07 at 12 45 04 AM](https://user-images.githubusercontent.com/94850035/157122736-92e9f756-74fb-437c-8d31-b49b3d997fce.jpeg)

After adding the libraries shown in the image above, which are:
´´´
limits
cstddef
iostream
´´´
the previous commands were executed again, being successful this time.

-


#### Presented by:	#### Presented by:
<p align="left">	<p align="left">
@@ -31,4 +55,4 @@ Electronic Engineering student at Universidad Industrial de Santander - Colombia
<p align="center">	<p align="center">
  <img src="img/imagination.jpg" height="150" title="Imagination University">	  <img src="img/imagination.jpg" height="150" title="Imagination University">
  <img src="img/uis.png" height="150" title="Universidad Industrial de Santander">	  <img src="img/uis.png" height="150" title="Universidad Industrial de Santander">
</p>	</p>
© 2022 GitHub, Inc.
Terms
Privacy
Security
Status
Docs
Contact GitHub
Prici
#### Presented by:
<p align="left">
  <img src="img/ccprofile.jfif" width="150" title="Camilo Carrillo">
</p>
Camilo E. Carrillo <br />
Electronic Engineering student at Universidad Industrial de Santander - Colombia

<p align="left">
  <img src="img/epprofile.jpeg" width="150" title="Erika Porras">
</p>
Erika D. Porras <br />
Electronic Engineering student at Universidad Industrial de Santander - Colombia <br />

#### Special Thanks
<p align="center">
  <img src="img/imagination.jpg" height="150" title="Imagination University">
  <img src="img/uis.png" height="150" title="Universidad Industrial de Santander">
</p>
