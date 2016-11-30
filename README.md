HP ACU CLI & SSA CLI
====================

To configure your HP Array Controller using Docker.

For instance, launch from server using:

- To get a SSA CLI (new tool):
```
$ docker run --rm -ti --privileged --entrypoint hpssacli registry-legato:5000/hpssacli
HPE Smart Storage Administrator CLI 2.40.13.0
Detecting Controllers...Done.
Type "help" for a list of supported commands.
Type "exit" to close the console.

=>
```

- To get a ACU CLI (deprecated):

```
$ docker run --rm -ti --privileged --entrypoint hpacucli corfr/hpacucli
HP Array Configuration Utility CLI 9.40.12.0
Detecting Controllers...Done.
Type "help" for a list of supported commands.
Type "exit" to close the console.

=>
```

- To execute commands:

```
$ docker run --rm --privileged corfr/hpacucli ctrl all show config

Smart Array P400 in Slot 1                (sn: P6162XXXXXXXXX)

   array A (SAS, Unused Space: 0  MB)


      logicaldrive 1 (410.1 GB, RAID 5, OK)

      physicaldrive 2I:1:1 (port 2I:box 1:bay 1, SAS, 146 GB, OK)
      physicaldrive 2I:1:2 (port 2I:box 1:bay 2, SAS, 146 GB, OK)
      physicaldrive 2I:1:3 (port 2I:box 1:bay 3, SAS, 146 GB, OK)
      physicaldrive 2I:1:4 (port 2I:box 1:bay 4, SAS, 146 GB, OK)
```

| WARNING: Do not forget to load the `sg` module beforehand.

