/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembly of tpm2.dat, Sun Jun 28 16:55:32 2020
 *
 * ACPI Data Table [TPM2]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "TPM2"    [Trusted Platform Module hardware interface table]
[004h 0004   4]                 Table Length : 00000034
[008h 0008   1]                     Revision : 03
[009h 0009   1]                     Checksum : F5
[00Ah 0010   6]                       Oem ID : ""
[010h 0016   8]                 Oem Table ID : ""
[018h 0024   4]                 Oem Revision : 00000000
[01Ch 0028   4]              Asl Compiler ID : ""
[020h 0032   4]        Asl Compiler Revision : 00000000

[024h 0036   4]                     Reserved : 00000000
[028h 0040   8]              Control Address : 00000000BFF00000
[030h 0048   4]                 Start Method : 00000002
/**** ACPI table terminates in the middle of a data structure! (dump table) */

Raw Table Data: Length 52 (0x34)

    0000: 54 50 4D 32 34 00 00 00 03 F5 00 00 00 00 00 00  // TPM24...........
    0010: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0020: 00 00 00 00 00 00 00 00 00 00 F0 BF 00 00 00 00  // ................
    0030: 02 00 00 00                                      // ....
