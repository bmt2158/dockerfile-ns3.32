# dockerfile-ns3.32

### This is a Dockerfile for installing ns-3.32 based on Ubuntu 20.04.
This Dockerfile works with the following steps:

1.Use the official Ubuntu 20.04 image as a base.

2.Install the required packages.

3.Download and install the ns-3.32 source code.

## Building ns-3.32

To build a Docker image using this Dockerfile, run the following command
```
docker build -t ns3:32 .
```
Once the build is complete, you can access the shell of ns-3.32 with the following command

```
docker run -it ns3:32
```
