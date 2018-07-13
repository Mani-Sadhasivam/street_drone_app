Simple Drone App
================

This is a simple MAVLink to UART app for Dragonboard410c for communicating to Aerocore2 running PX4.

This example will send CAN data to PX4.


Building
========

```
$ cd simple_drone_app/
$ make
```

Hardware Setup
=========

Connect Aerocore2 to Dragonboard410c. 

Execution
=========

```
$ ./mavlink_control -d /dev/tty96B0
```

To stop the program, use the key sequence ```Ctrl-C```.

Here's an example output:

```
OPEN PORT
Connected to /dev/tty96B0 with 57600 baud, 8 data bits, no parity, 1 stop bit (8N1)

START READ THREAD 
CHECK FOR MESSAGES
Reading
START WRITE THREAD 
ENABLE OFFBOARD MODE

Writing
Sending CAN data:
 Steer Req: 50
 Torque Req: 70
 Steer Auto: 1
 Torque Auto: 1

TERMINATING AT USER REQUEST

DISABLE OFFBOARD MODE

CLOSE THREADS

CLOSE PORT

```
