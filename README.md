# HP SSA CLI (new HP ACU CLI) #

Docker version of HPE Smart Storage Administrator - Command Line Interface.

To manage and check your HPE RAID controller though docker.

## Set up ##

```
git clone https://github.com/CoRfr/docker-ssacli.git
cd docker-ssacli
docker build . -t corfr/ssacli
```

## Run ##

Start a command line interface:

```
docker run --rm -ti --privileged corfr/ssacli
Smart Storage Administrator CLI 3.10.3.0
Detecting Controllers...Done.
Type "help" for a list of supported commands.
Type "exit" to close the console.

=>
```

Run a single command:

```
docker run --rm -ti --privileged corfr/ssacli ctrl all show config

Smart Array P400 in Slot 1                (sn: P6162XXXXXXXXX)

   array A (SAS, Unused Space: 0  MB)


      logicaldrive 1 (410.1 GB, RAID 5, OK)

      physicaldrive 2I:1:1 (port 2I:box 1:bay 1, SAS, 146 GB, OK)
      physicaldrive 2I:1:2 (port 2I:box 1:bay 2, SAS, 146 GB, OK)
      physicaldrive 2I:1:3 (port 2I:box 1:bay 3, SAS, 146 GB, OK)
      physicaldrive 2I:1:4 (port 2I:box 1:bay 4, SAS, 146 GB, OK)

```

## Notes ##

Example commands: https://wiki.phoenixlzx.com/page/ssacli/
