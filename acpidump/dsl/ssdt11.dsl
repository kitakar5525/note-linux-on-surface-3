/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190703 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt11.dat, Sun Jul 21 01:33:52 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000003A5 (933)
 *     Revision         0x01
 *     Checksum         0xFC
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Cst"
 *     OEM Revision     0x00003001 (12289)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120913 (538052883)
 */
DefinitionBlock ("", "SSDT", 1, "PmRef", "Cpu0Cst", 0x00003001)
{
    External (_PR_.CPU0, DeviceObj)
    External (CFGD, UnknownObj)
    External (PDC0, UnknownObj)

    Scope (\_PR.CPU0)
    {
        OperationRegion (DEB0, SystemIO, 0x80, One)
        Field (DEB0, ByteAcc, NoLock, Preserve)
        {
            DBG8,   8
        }

        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            DBG8 = 0x60
            If (((CFGD & 0x01000000) && !(PDC0 & 0x10)))
            {
                DBG8 = 0x61
                Return (Package (0x02)
                {
                    One, 
                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x00,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000000, // Address
                                ,)
                        }, 

                        One, 
                        0x9D, 
                        0x03E8
                    }
                })
            }

            If (((CFGD & 0x00200000) && (PDC0 & 0x0200)))
            {
                If ((CFGD & 0x2000))
                {
                    DBG8 = 0x77
                    Return (Package (0x04)
                    {
                        0x03, 
                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x01,               // Bit Width
                                    0x02,               // Bit Offset
                                    0x0000000000000000, // Address
                                    0x01,               // Access Size
                                    )
                            }, 

                            One, 
                            One, 
                            0x03E8
                        }, 

                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x01,               // Bit Width
                                    0x02,               // Bit Offset
                                    0x0000000000000058, // Address
                                    0x01,               // Access Size
                                    )
                            }, 

                            0x02, 
                            0x01F4, 
                            0x0A
                        }, 

                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x01,               // Bit Width
                                    0x02,               // Bit Offset
                                    0x0000000000000064, // Address
                                    0x01,               // Access Size
                                    )
                            }, 

                            0x03, 
                            0x03E8, 
                            0x0A
                        }
                    })
                }

                If ((CFGD & 0x0800))
                {
                    DBG8 = 0x76
                    Return (Package (0x03)
                    {
                        0x02, 
                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x01,               // Bit Width
                                    0x02,               // Bit Offset
                                    0x0000000000000000, // Address
                                    0x01,               // Access Size
                                    )
                            }, 

                            One, 
                            One, 
                            0x03E8
                        }, 

                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x01,               // Bit Width
                                    0x02,               // Bit Offset
                                    0x0000000000000058, // Address
                                    0x01,               // Access Size
                                    )
                            }, 

                            0x02, 
                            0x01F4, 
                            0x0A
                        }
                    })
                }

                DBG8 = 0x71
                Return (Package (0x02)
                {
                    One, 
                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x01,               // Bit Width
                                0x02,               // Bit Offset
                                0x0000000000000000, // Address
                                0x01,               // Access Size
                                )
                        }, 

                        One, 
                        One, 
                        0x03E8
                    }
                })
            }

            If (((CFGD & 0x00200000) && (PDC0 & 0x0100)))
            {
                If ((CFGD & 0x2000))
                {
                    DBG8 = 0x87
                    Return (Package (0x04)
                    {
                        0x03, 
                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x01,               // Bit Width
                                    0x02,               // Bit Offset
                                    0x0000000000000000, // Address
                                    0x01,               // Access Size
                                    )
                            }, 

                            One, 
                            One, 
                            0x03E8
                        }, 

                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (SystemIO, 
                                    0x08,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000416, // Address
                                    ,)
                            }, 

                            0x02, 
                            0x01F4, 
                            0x64
                        }, 

                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (SystemIO, 
                                    0x08,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000417, // Address
                                    ,)
                            }, 

                            0x03, 
                            0x03E8, 
                            0x0A
                        }
                    })
                }

                If ((CFGD & 0x0800))
                {
                    DBG8 = 0x86
                    Return (Package (0x03)
                    {
                        0x02, 
                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x01,               // Bit Width
                                    0x02,               // Bit Offset
                                    0x0000000000000000, // Address
                                    0x01,               // Access Size
                                    )
                            }, 

                            One, 
                            One, 
                            0x03E8
                        }, 

                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (SystemIO, 
                                    0x08,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000416, // Address
                                    ,)
                            }, 

                            0x02, 
                            0x01F4, 
                            0x0A
                        }
                    })
                }

                DBG8 = 0x81
                Return (Package (0x02)
                {
                    One, 
                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x01,               // Bit Width
                                0x02,               // Bit Offset
                                0x0000000000000000, // Address
                                0x01,               // Access Size
                                )
                        }, 

                        One, 
                        One, 
                        0x03E8
                    }
                })
            }

            If ((CFGD & 0x2000))
            {
                DBG8 = 0x97
                Return (Package (0x04)
                {
                    0x03, 
                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x00,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000000, // Address
                                ,)
                        }, 

                        One, 
                        One, 
                        0x03E8
                    }, 

                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (SystemIO, 
                                0x08,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000416, // Address
                                ,)
                        }, 

                        0x02, 
                        0x01F4, 
                        0x64
                    }, 

                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (SystemIO, 
                                0x08,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000417, // Address
                                ,)
                        }, 

                        0x03, 
                        0x1388, 
                        0x0A
                    }
                })
            }

            If ((CFGD & 0x0800))
            {
                DBG8 = 0x96
                Return (Package (0x03)
                {
                    0x02, 
                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x00,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000000, // Address
                                ,)
                        }, 

                        One, 
                        One, 
                        0x03E8
                    }, 

                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (SystemIO, 
                                0x08,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000416, // Address
                                ,)
                        }, 

                        0x02, 
                        0x01F4, 
                        0x0A
                    }
                })
            }

            DBG8 = 0x91
            Return (Package (0x02)
            {
                One, 
                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    One, 
                    One, 
                    0x03E8
                }
            })
        }
    }
}

