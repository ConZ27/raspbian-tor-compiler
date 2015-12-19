# raspbian-tor-compiler

A docker image for compiling tor from source for the Raspbian (ARMv6m) - faster than compiling on the raspberry pi board directly.

* downloads the latest Tor client from the official Tor website
* compiles a *.deb package containing the Tor daemon using QEMU for ARM

# Pre-requistes:
* qemu-arm-static - (```apt-get install qemu-user-static```)
* docker-compose

# Run Commands
```
docker-compose up
```
