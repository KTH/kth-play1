# Play Framework - v.1.x

## Versions 
Different versions can be found in its own Git branch. The branch name tells you what base version is used. This version is also hardcoded into the Dockerfile. The maintained branches are build every night to have the latest security patches installed. After being built the image is pushed to [KTH:s public account on Docker Hub](https://hub.docker.com/r/kthse/kth-play1/tags/).

## Build and publishing
Each branch builds and publishes to [Docker Hub](https://hub.docker.com/r/kthse/kth-play1/tags/) daily by [Jenkins](https://build.sys.kth.se/view/team-pipeline/).

## What versions are installed?
The image tag tells you what version you are using so `kth-play1:1.5.* is Play! v1.5*`and so on.

Each built image has information about its version in a file called `KTH_PLAY1`. To look into this files content run: `docker run kthse/kth-play1:1.5.0 cat /KTH_PLAY1`.

```bash
IMAGE INFORMATION
Build date: Fri Jun  5 08:12:03 UTC 2020
Play: 1.5.0
Java:
openjdk version "1.8.0_212"
OpenJDK Runtime Environment (IcedTea 3.12.0) (Alpine 8.212.04-r0)
OpenJDK 64-Bit Server VM (build 25.212-b04, mixed mode)
Alpine version: 3.9.4

```

## What tag (version) should i use?
We recommended that you use the SemVer without hash (kth-play:*1.5.5*), and try to keep up with possible upgrades to major, minor or patch-version. Unlike normal images SemVer numbers are reused when we rebuild the image each night to get the latest security patches. If you wish to stick to a specific commit you can also look in the [Docker Hub for a specifc version](https://hub.docker.com/r/kthse/kth-play1/tags/) where you whould see something like `1.5.0_a3c06dc`, where _a3c06dc_ whould the the Git commit hash. Then you will be sure exacly what it is you are useing. But please Note, if you use a specific tag like 1.5.0_a3c06dc you will only get nightly security upgrades aslong as the Git commit is also the Git HEAD. After that the image will slowly rotten.
