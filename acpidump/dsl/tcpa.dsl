/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190703 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembly of tcpa.dat, Mon Aug 19 00:47:52 2019
 *
 * ACPI Data Table [TCPA]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "TCPA"    [Trusted Computing Platform Alliance table]
[004h 0004   4]                 Table Length : 00000032
[008h 0008   1]                     Revision : 02
[009h 0009   1]                     Checksum : BE
[00Ah 0010   6]                       Oem ID : ""
[010h 0016   8]                 Oem Table ID : ""
[018h 0024   4]                 Oem Revision : 00000000
[01Ch 0028   4]              Asl Compiler ID : ""
[020h 0032   4]        Asl Compiler Revision : 00000000

[024h 0036   2]               Platform Class : 0000
[026h 0038   4]         Min Event Log Length : 00010000
[02Ah 0042   8]            Event Log Address : 00000000BB3AF000

Raw Table Data: Length 50 (0x32)

    0000: 54 43 50 41 32 00 00 00 02 BE 00 00 00 00 00 00  // TCPA2...........
    0010: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0020: 00 00 00 00 00 00 00 00 01 00 00 F0 3A BB 00 00  // ............:...
    0030: 00 00                                            // ..
