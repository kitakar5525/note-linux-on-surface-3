/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190215 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt9.dat, Wed Feb 20 21:48:06 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000066D (1645)
 *     Revision         0x01
 *     Checksum         0x43
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Ist"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120913 (538052883)
 */
DefinitionBlock ("", "SSDT", 1, "PmRef", "Cpu0Ist", 0x00003000)
{
    External (_PR_.CPU0, DeviceObj)
    External (CFGD, UnknownObj)
    External (OSID, UnknownObj)
    External (PDC0, UnknownObj)

    Scope (\_PR.CPU0)
    {
        Name (_PPC, Zero)  // _PPC: Performance Present Capabilities
        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            If (((CFGD & One) && (PDC0 & One)))
            {
                Return (Package (0x02)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }
                })
            }

            Return (Package (0x02)
            {
                ResourceTemplate ()
                {
                    Register (FFixedHW, 
                        0x00,               // Bit Width
                        0x00,               // Bit Offset
                        0x0000000000000000, // Address
                        ,)
                }, 

                ResourceTemplate ()
                {
                    Register (FFixedHW, 
                        0x00,               // Bit Width
                        0x00,               // Bit Offset
                        0x0000000000000000, // Address
                        ,)
                }
            })
        }

        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            If ((OSID == One))
            {
                Return (SPSS) /* \_PR_.CPU0.SPSS */
            }

            Return (NPSS) /* \_PR_.CPU0.NPSS */
        }

        Name (SPSS, Package (0x10)
        {
            Package (0x06)
            {
                0x00000641, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x00001E58, 
                0x00001E58
            }, 

            Package (0x06)
            {
                0x00000640, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x0000143D, 
                0x0000143D
            }, 

            Package (0x06)
            {
                0x000005F0, 
                0x0000076C, 
                0x0000000A, 
                0x0000000A, 
                0x0000133C, 
                0x0000133C
            }, 

            Package (0x06)
            {
                0x000005A0, 
                0x00000708, 
                0x0000000A, 
                0x0000000A, 
                0x0000123B, 
                0x0000123B
            }, 

            Package (0x06)
            {
                0x00000550, 
                0x000006A4, 
                0x0000000A, 
                0x0000000A, 
                0x0000113A, 
                0x0000113A
            }, 

            Package (0x06)
            {
                0x00000500, 
                0x00000640, 
                0x0000000A, 
                0x0000000A, 
                0x00001039, 
                0x00001039
            }, 

            Package (0x06)
            {
                0x000004B0, 
                0x000005DC, 
                0x0000000A, 
                0x0000000A, 
                0x00000F38, 
                0x00000F38
            }, 

            Package (0x06)
            {
                0x00000460, 
                0x00000578, 
                0x0000000A, 
                0x0000000A, 
                0x00000E37, 
                0x00000E37
            }, 

            Package (0x06)
            {
                0x00000410, 
                0x00000514, 
                0x0000000A, 
                0x0000000A, 
                0x00000D35, 
                0x00000D35
            }, 

            Package (0x06)
            {
                0x000003C0, 
                0x000004B0, 
                0x0000000A, 
                0x0000000A, 
                0x00000C34, 
                0x00000C34
            }, 

            Package (0x06)
            {
                0x00000370, 
                0x0000044C, 
                0x0000000A, 
                0x0000000A, 
                0x00000B33, 
                0x00000B33
            }, 

            Package (0x06)
            {
                0x00000320, 
                0x000003E8, 
                0x0000000A, 
                0x0000000A, 
                0x00000A32, 
                0x00000A32
            }, 

            Package (0x06)
            {
                0x000002D0, 
                0x00000384, 
                0x0000000A, 
                0x0000000A, 
                0x00000931, 
                0x00000931
            }, 

            Package (0x06)
            {
                0x00000280, 
                0x00000320, 
                0x0000000A, 
                0x0000000A, 
                0x00000830, 
                0x00000830
            }, 

            Package (0x06)
            {
                0x00000230, 
                0x000002BC, 
                0x0000000A, 
                0x0000000A, 
                0x0000072F, 
                0x0000072F
            }, 

            Package (0x06)
            {
                0x000001E0, 
                0x00000258, 
                0x0000000A, 
                0x0000000A, 
                0x0000062D, 
                0x0000062D
            }
        })
        Name (NPSS, Package (0x19)
        {
            Package (0x06)
            {
                0x00000960, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x00001E58, 
                0x00001E58
            }, 

            Package (0x06)
            {
                0x00000910, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x00001D56, 
                0x00001D56
            }, 

            Package (0x06)
            {
                0x000008C0, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x00001C53, 
                0x00001C53
            }, 

            Package (0x06)
            {
                0x00000870, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x00001B50, 
                0x00001B50
            }, 

            Package (0x06)
            {
                0x00000820, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x00001A4E, 
                0x00001A4E
            }, 

            Package (0x06)
            {
                0x000007D0, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x0000194B, 
                0x0000194B
            }, 

            Package (0x06)
            {
                0x00000780, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x00001848, 
                0x00001848
            }, 

            Package (0x06)
            {
                0x00000730, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x00001746, 
                0x00001746
            }, 

            Package (0x06)
            {
                0x000006E0, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x00001643, 
                0x00001643
            }, 

            Package (0x06)
            {
                0x00000690, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x00001540, 
                0x00001540
            }, 

            Package (0x06)
            {
                0x00000640, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x0000143D, 
                0x0000143D
            }, 

            Package (0x06)
            {
                0x000005F0, 
                0x0000076C, 
                0x0000000A, 
                0x0000000A, 
                0x0000133C, 
                0x0000133C
            }, 

            Package (0x06)
            {
                0x000005A0, 
                0x00000708, 
                0x0000000A, 
                0x0000000A, 
                0x0000123B, 
                0x0000123B
            }, 

            Package (0x06)
            {
                0x00000550, 
                0x000006A4, 
                0x0000000A, 
                0x0000000A, 
                0x0000113A, 
                0x0000113A
            }, 

            Package (0x06)
            {
                0x00000500, 
                0x00000640, 
                0x0000000A, 
                0x0000000A, 
                0x00001039, 
                0x00001039
            }, 

            Package (0x06)
            {
                0x000004B0, 
                0x000005DC, 
                0x0000000A, 
                0x0000000A, 
                0x00000F38, 
                0x00000F38
            }, 

            Package (0x06)
            {
                0x00000460, 
                0x00000578, 
                0x0000000A, 
                0x0000000A, 
                0x00000E37, 
                0x00000E37
            }, 

            Package (0x06)
            {
                0x00000410, 
                0x00000514, 
                0x0000000A, 
                0x0000000A, 
                0x00000D35, 
                0x00000D35
            }, 

            Package (0x06)
            {
                0x000003C0, 
                0x000004B0, 
                0x0000000A, 
                0x0000000A, 
                0x00000C34, 
                0x00000C34
            }, 

            Package (0x06)
            {
                0x00000370, 
                0x0000044C, 
                0x0000000A, 
                0x0000000A, 
                0x00000B33, 
                0x00000B33
            }, 

            Package (0x06)
            {
                0x00000320, 
                0x000003E8, 
                0x0000000A, 
                0x0000000A, 
                0x00000A32, 
                0x00000A32
            }, 

            Package (0x06)
            {
                0x000002D0, 
                0x00000384, 
                0x0000000A, 
                0x0000000A, 
                0x00000931, 
                0x00000931
            }, 

            Package (0x06)
            {
                0x00000280, 
                0x00000320, 
                0x0000000A, 
                0x0000000A, 
                0x00000830, 
                0x00000830
            }, 

            Package (0x06)
            {
                0x00000230, 
                0x000002BC, 
                0x0000000A, 
                0x0000000A, 
                0x0000072F, 
                0x0000072F
            }, 

            Package (0x06)
            {
                0x000001E0, 
                0x00000258, 
                0x0000000A, 
                0x0000000A, 
                0x0000062D, 
                0x0000062D
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((CFGD & 0x01000000))
            {
                If ((PDC0 & 0x0800))
                {
                    Return (Package (0x01)
                    {
                        Package (0x05)
                        {
                            0x05, 
                            Zero, 
                            Zero, 
                            0xFE, 
                            0x04
                        }
                    })
                }

                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFC, 
                        0x04
                    }
                })
            }

            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    Zero, 
                    Zero, 
                    0xFC, 
                    0x04
                }
            })
        }
    }
}

