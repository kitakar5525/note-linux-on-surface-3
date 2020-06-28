## Note

My Surface 3 DMI is broken. `sudo dmidecode` shows:
```
Manufacturer: OEMB
Product Name: OEMB
```

## How to extract them

- dump tables
```
sudo acpidump > acpidump.dat
```

- extract all the tables
```
acpixtract -a acpidump.dat
```

- disassemble the tables
```
iasl -d *.dat
```

- disassemble the dsdt table with external symbol resolution
```
iasl -e ssdt*.dat -d dsdt.dat
```

## error decompiling oem0.dat
```
$ iasl -d oem0.dat

Intel ACPI Component Architecture
ASL+ Optimizing Compiler/Disassembler version 20200528
Copyright (c) 2000 - 2020 Intel Corporation

File appears to be binary: found 96 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file oem0.dat, Length 0x84 (132) bytes
ACPI: OEM0 0x0000000000000000 000084 (v05 INTEL  BATTERY  00000005 INTL 00000000)
Pass 1 parse of [OEM0]
Could not parse ACPI tables, AE_AML_NO_OPERAND
```

The contents:
```
$ hexdump -C oem0.dat
00000000  4f 45 4d 30 84 00 00 00  05 c2 49 4e 54 45 4c 20  |OEM0......INTEL |
00000010  42 41 54 54 45 52 59 20  05 00 00 00 49 4e 54 4c  |BATTERY ....INTL|
00000020  00 00 00 00 49 4e 54 4e  30 30 30 31 00 02 0a 14  |....INTN0001....|
00000030  fe 10 fa 00 48 0d 2d 00  06 00 2d 00 fe 10 08 07  |....H.-...-.....|
00000040  bd 10 fe 10 08 07 17 00  fe 10 e8 03 bd 10 fe 10  |................|
00000050  e8 03 0a 00 fe 10 f4 01  bd 10 fe 10 f4 01 00 00  |................|
00000060  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|
*
00000080  00 00 00 00                                       |....|
00000084
```
