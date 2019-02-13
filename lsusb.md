```
lsusb
Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Bus 001 Device 004: ID 1519:f214 Comneon 
Bus 001 Device 005: ID 1286:204c Marvell Semiconductor, Inc. 
Bus 001 Device 006: ID 045e:07df Microsoft Corp. 
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
```

```
tail /sys/bus/usb/devices/*/product    
==> /sys/bus/usb/devices/1-3/product <==
Surface Type Cover

==> /sys/bus/usb/devices/1-4/product <==
Bluetooth and Wireless LAN Composite Device

==> /sys/bus/usb/devices/1-6/product <==
XMM7260

==> /sys/bus/usb/devices/usb1/product <==
xHCI Host Controller

==> /sys/bus/usb/devices/usb2/product <==
xHCI Host Controller
```

```
tail /sys/bus/usb/devices/*/idProduct
==> /sys/bus/usb/devices/1-3/idProduct <==
07df

==> /sys/bus/usb/devices/1-4/idProduct <==
204c

==> /sys/bus/usb/devices/1-6/idProduct <==
f214

==> /sys/bus/usb/devices/usb1/idProduct <==
0002

==> /sys/bus/usb/devices/usb2/idProduct <==
0003
```