/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190703 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt4.dat, Sun Jul 21 01:33:52 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00001F68 (8040)
 *     Revision         0x01
 *     Checksum         0xB5
 *     OEM ID           "DptfTb"
 *     OEM Table ID     "DptfTab"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120913 (538052883)
 */
DefinitionBlock ("", "SSDT", 1, "DptfTb", "DptfTab", 0x00001000)
{
    /*
     * iASL Warning: There were 2 external control methods found during
     * disassembly, but only 0 were resolved (2 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * To specify the tables needed to resolve external control method
     * references, the -e option can be used to specify the filenames.
     * Example iASL invocations:
     *     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     *     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     *     iasl -e ssdt*.aml -d dsdt.aml
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_SB_.ADP1._PSR, UnknownObj)
    External (_SB_.BAT0._BST, IntObj)
    External (_SB_.BAT0.ARTG, IntObj)
    External (_SB_.BAT0.CHGI, IntObj)
    External (_SB_.BAT0.CTYP, IntObj)
    External (_SB_.BAT0.PMAX, IntObj)
    External (_SB_.BAT0.PSOC, IntObj)
    External (_SB_.BAT0.PSRC, IntObj)
    External (_SB_.I2Z1.AVBL, UnknownObj)
    External (_SB_.PCI0.GFX0.DD01._BCM, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.PCI0.GFX0.DD01._BQC, IntObj)
    External (_SB_.PCI0.GFX0.DD01._DCS, IntObj)
    External (_SB_.PCI0.I2C7, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.AVBD, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.AVBG, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.AX00, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.AX01, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.AX10, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.AX11, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.AX20, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.AX21, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.AX30, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.AX31, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.AX40, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.AX41, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.GEN0, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.GEN1, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.GEN2, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.GEN3, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.GEN4, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.GMP0, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.GMP1, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.GMP2, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.GMP3, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.GMP4, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.GX00, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.GX01, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.GX10, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.GX11, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.GX20, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.GX21, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.GX30, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.GX31, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.GX40, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.GX41, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.PEN0, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.PEN1, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.PEN2, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.PEN3, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.PEN4, UnknownObj)
    External (_SB_.PCI0.I2C7.PMIC.TMP0, IntObj)
    External (_SB_.PCI0.I2C7.PMIC.TMP1, IntObj)
    External (_SB_.PCI0.I2C7.PMIC.TMP2, IntObj)
    External (_SB_.PCI0.I2C7.PMIC.TMP3, IntObj)
    External (_SB_.PCI0.I2C7.PMIC.TMP4, IntObj)
    External (_SB_.PCI0.PNIT, UnknownObj)
    External (_SB_.PST1, UnknownObj)
    External (_SB_.PST2, UnknownObj)
    External (ABC0, IntObj)
    External (ABC1, IntObj)
    External (ABC2, IntObj)
    External (ABC3, IntObj)
    External (ABC4, IntObj)
    External (ABC5, IntObj)
    External (ABS0, IntObj)
    External (ABS1, IntObj)
    External (ABS2, IntObj)
    External (ABS3, IntObj)
    External (ABS4, IntObj)
    External (ABS5, IntObj)
    External (ADBG, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (AMTE, UnknownObj)
    External (CHGR, UnknownObj)
    External (DDSP, UnknownObj)
    External (DPHL, IntObj)
    External (DPLL, IntObj)
    External (DPTE, UnknownObj)
    External (DSOC, UnknownObj)
    External (GCR0, UnknownObj)
    External (GCR1, UnknownObj)
    External (GCR2, UnknownObj)
    External (GCR3, UnknownObj)
    External (GCR4, UnknownObj)
    External (LPSP, UnknownObj)
    External (PDBG, IntObj)
    External (PDBP, UnknownObj)
    External (PDPM, UnknownObj)
    External (PST0, UnknownObj)
    External (PST1, UnknownObj)
    External (PST2, UnknownObj)
    External (PST3, UnknownObj)
    External (PST4, UnknownObj)
    External (THM0, UnknownObj)
    External (THM1, UnknownObj)
    External (THM2, UnknownObj)
    External (WCR0, UnknownObj)
    External (WPS0, UnknownObj)

    Name (BDLI, 0x28)
    Name (BDHI, 0x3C)
    Scope (\_SB)
    {
        Device (DPTF)
        {
            Name (_HID, EisaId ("INT3400") /* Intel Dynamic Power Performance Management */)  // _HID: Hardware ID
            Name (DPSP, Package (0x01)
            {
                ToUUID ("42a441d6-ae6a-462b-a84b-4a8ce79027d3")
            })
            Name (DCSP, Package (0x01)
            {
                ToUUID ("97c68ae7-15fa-499c-b8c9-5da81d606e0a")
            })
            Name (DCPP, Package (0x01)
            {
                ToUUID ("16caf1b7-dd38-40ed-b1c1-1b8a1913d531")
            })
            Name (DBPP, Package (0x01)
            {
                ToUUID ("64568ccd-6597-4bfc-b9d6-9d33854013ce")
            })
            Name (TMPP, Package (0x05)
            {
                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }, 

                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }, 

                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }, 

                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }, 

                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }
            })
            Method (IDSP, 0, Serialized)
            {
                Name (TMPI, Zero)
                If ((PDPM == One))
                {
                    TMPP [TMPI] = DerefOf (DPSP [Zero])
                    TMPI++
                    TMPP [TMPI] = DerefOf (DCSP [Zero])
                    TMPI++
                    TMPP [TMPI] = DerefOf (DCPP [Zero])
                    TMPI++
                }

                If ((PDBP == One))
                {
                    TMPP [TMPI] = DerefOf (DBPP [Zero])
                    TMPI++
                }

                TMPP [TMPI] = DerefOf (LPSP [Zero])
                Return (TMPP) /* \_SB_.DPTF.TMPP */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((DPTE == Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Name (PDRI, Package (0x02)
            {
                Package (0x04)
                {
                    0x64, 
                    \_SB.PCI0.PNIT, 
                    Zero, 
                    Package (0x02)
                    {
                        0x00010002, 
                        One
                    }
                }, 

                Package (0x04)
                {
                    0x06, 
                    \_SB.PCI0.PNIT, 
                    Zero, 
                    Package (0x02)
                    {
                        0x00010002, 
                        Zero
                    }
                }
            })
            Name (PDRA, Package (0x02)
            {
                Package (0x04)
                {
                    0x64, 
                    \_SB.PCI0.PNIT, 
                    Zero, 
                    Package (0x04)
                    {
                        0x00010000, 
                        0x1F40, 
                        0x00010002, 
                        One
                    }
                }, 

                Package (0x04)
                {
                    0x64, 
                    \_SB.TDSP, 
                    0x0A, 
                    Package (0x02)
                    {
                        0x00050000, 
                        0x64
                    }
                }
            })
            Method (PDRT, 0, NotSerialized)
            {
                If ((\_SB.I2Z1.AVBL != Zero))
                {
                    If ((\_SB.ADP1._PSR == Zero))
                    {
                        Return (PDRI) /* \_SB_.DPTF.PDRI */
                    }
                    Else
                    {
                        Return (PDRA) /* \_SB_.DPTF.PDRA */
                    }
                }
                Else
                {
                    Return (PDRI) /* \_SB_.DPTF.PDRI */
                }
            }

            Name (ETRM, Package (0x05)
            {
                Package (0x04)
                {
                    \_SB.PCI0.PNIT, 
                    "8086_22DC", 
                    Zero, 
                    "0x000B0000"
                }, 

                Package (0x04)
                {
                    \_SB.STR0, 
                    "INT3403", 
                    0x06, 
                    "0"
                }, 

                Package (0x04)
                {
                    \_SB.STR2, 
                    "INT3403", 
                    0x06, 
                    "2"
                }, 

                Package (0x04)
                {
                    \_SB.TCHG, 
                    "INT3403", 
                    0x06, 
                    "5"
                }, 

                Package (0x04)
                {
                    \_SB.TPWR, 
                    "INT3407", 
                    0x06, 
                    "0"
                }
            })
            Name (TRTI, Package (0x03)
            {
                Package (0x08)
                {
                    \_SB.TCHG, 
                    \_SB.STR0, 
                    0x64, 
                    0x64, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }, 

                Package (0x08)
                {
                    \_SB.PCI0.PNIT, 
                    \_SB.STR2, 
                    0x64, 
                    0x64, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }, 

                Package (0x08)
                {
                    \_SB.TCHG, 
                    \_SB.STR2, 
                    0x64, 
                    0x64, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }
            })
            Method (_TRT, 0, NotSerialized)  // _TRT: Thermal Relationship Table
            {
                Return (TRTI) /* \_SB_.DPTF.TRTI */
            }

            Name (TRTR, One)
            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Name (NUMP, Zero)
                Name (UID2, Buffer (0x10)
                {
                    /* 0000 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                    /* 0008 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF   // ........
                })
                CreateDWordField (Arg3, Zero, STS1)
                CreateDWordField (Arg3, 0x04, CAP1)
                IDSP ()
                NUMP = SizeOf (TMPP)
                CreateDWordField (Arg0, Zero, IID0)
                CreateDWordField (Arg0, 0x04, IID1)
                CreateDWordField (Arg0, 0x08, IID2)
                CreateDWordField (Arg0, 0x0C, IID3)
                CreateDWordField (UID2, Zero, EID0)
                CreateDWordField (UID2, 0x04, EID1)
                CreateDWordField (UID2, 0x08, EID2)
                CreateDWordField (UID2, 0x0C, EID3)
                While (NUMP)
                {
                    UID2 = DerefOf (TMPP [(NUMP - One)])
                    If ((((IID0 == EID0) && (IID1 == EID1)) && ((IID2 == 
                        EID2) && (IID3 == EID3))))
                    {
                        Break
                    }

                    NUMP--
                }

                If ((NUMP == Zero))
                {
                    STS1 &= 0xFFFFFF00
                    STS1 |= 0x06
                    Return (Arg3)
                }

                If ((Arg1 != One))
                {
                    STS1 &= 0xFFFFFF00
                    STS1 |= 0x0A
                    Return (Arg3)
                }

                If ((Arg2 != 0x02))
                {
                    STS1 &= 0xFFFFFF00
                    STS1 |= 0x02
                    Return (Arg3)
                }

                Return (Arg3)
            }

            Method (KTOC, 1, NotSerialized)
            {
                If ((Arg0 > 0x0AAC))
                {
                    Local1 = (Arg0 - 0x0AAC)
                }
                Else
                {
                    Local1 = (0x0AAC - Arg0)
                    Local1 = (0x0A00 - Local1)
                }

                Return ((Local1 / 0x0A))
            }

            Method (CTOK, 1, NotSerialized)
            {
                If ((Arg0 & 0x80))
                {
                    Local0 = (Arg0 & 0xFF)
                    Local0 = (0x0100 - Arg0)
                    Local0 *= 0x0A
                    Local0 = (0x0AAC - Local0)
                }
                Else
                {
                    Local0 = (Arg0 * 0x0A)
                    Local0 += 0x0AAC
                }

                Return (Local0)
            }

            Method (SDBG, 0, NotSerialized)
            {
                Return (PDBG) /* External reference */
            }
        }
    }

    Scope (\_SB)
    {
        Device (TPWR)
        {
            Name (_HID, EisaId ("INT3407") /* DPTF Platform Power Meter */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (PTYP, 0x11)
            Name (PROP, 0x07D0)
            Name (_STR, Unicode ("Platform Power"))  // _STR: Description String
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((DSOC == Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                If ((\_SB.I2Z1.AVBL != Zero))
                {
                    If (CondRefOf (\_SB.BAT0._BST, Local0))
                    {
                        Return (\_SB.BAT0._BST) /* External reference */
                    }
                    Else
                    {
                        Return (Package (0x01)
                        {
                            Zero
                        })
                    }
                }
                Else
                {
                    Return (Package (0x01)
                    {
                        Zero
                    })
                }
            }

            Method (PSOC, 0, NotSerialized)
            {
                If ((\_SB.I2Z1.AVBL != Zero))
                {
                    If (CondRefOf (\_SB.BAT0.PSOC, Local0))
                    {
                        Return (\_SB.BAT0.PSOC) /* External reference */
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (PMAX, 0, NotSerialized)
            {
                If ((\_SB.I2Z1.AVBL != Zero))
                {
                    If (CondRefOf (\_SB.BAT0.PMAX, Local0))
                    {
                        Return (\_SB.BAT0.PMAX) /* External reference */
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (PSRC, 0, NotSerialized)
            {
                If ((\_SB.I2Z1.AVBL != Zero))
                {
                    If (CondRefOf (\_SB.BAT0.PSRC, Local0))
                    {
                        Return (\_SB.BAT0.PSRC) /* External reference */
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (ARTG, 0, NotSerialized)
            {
                If ((\_SB.I2Z1.AVBL != Zero))
                {
                    If (CondRefOf (\_SB.BAT0.ARTG, Local0))
                    {
                        Return (\_SB.BAT0.ARTG) /* External reference */
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (CTYP, 0, NotSerialized)
            {
                If ((\_SB.I2Z1.AVBL != Zero))
                {
                    If (CondRefOf (\_SB.BAT0.CTYP, Local0))
                    {
                        Return (\_SB.BAT0.CTYP) /* External reference */
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (SDBG, 0, NotSerialized)
            {
                Return (PDBG) /* External reference */
            }
        }
    }

    Scope (\_SB)
    {
        Device (STR0)
        {
            Name (_HID, EisaId ("INT3403") /* DPTF Temperature Sensor */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (PTYP, 0x03)
            Name (_STR, Unicode ("SYSTHERM0"))  // _STR: Description String
            Name (CTYP, Zero)
            Name (LTM0, Zero)
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.PCI0.I2C7, 
                \_SB.PCI0.I2C7.PMIC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((THM0 == Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LTM0 = Arg0
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Level, ActiveLow, Exclusive, PullNone, 0x0000,
                        "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0015
                        }
                })
                Return (RBUF) /* \_SB_.STR0._CRS.RBUF */
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If ((\_SB.PCI0.I2C7.PMIC.AVBG == One))
                {
                    \_SB.PCI0.I2C7.PMIC.GMP0 = Zero
                    If ((\_SB.PCI0.I2C7.PMIC.AVBD == One))
                    {
                        Return (\_SB.PCI0.I2C7.PMIC.TMP0) /* External reference */
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PATC, 0x02)
            Method (PAT0, 1, Serialized)
            {
                If ((\_SB.PCI0.I2C7.PMIC.AVBD == One))
                {
                    \_SB.PCI0.I2C7.PMIC.AX00 = Arg0
                    If ((\_SB.PCI0.I2C7.PMIC.AVBG == One))
                    {
                        \_SB.PCI0.I2C7.PMIC.GX00 = One
                    }

                    \_SB.PCI0.I2C7.PMIC.PEN0 = Zero
                    If ((\_SB.PCI0.I2C7.PMIC.AVBG == One))
                    {
                        \_SB.PCI0.I2C7.PMIC.GEN0 = One
                    }
                }
            }

            Method (PAT1, 1, Serialized)
            {
                If ((\_SB.PCI0.I2C7.PMIC.AVBD == One))
                {
                    \_SB.PCI0.I2C7.PMIC.AX01 = Arg0
                    If ((\_SB.PCI0.I2C7.PMIC.AVBG == One))
                    {
                        \_SB.PCI0.I2C7.PMIC.GX01 = One
                    }
                }
            }

            Name (GTSH, 0x14)
            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.DPTF.CTOK (GCR0))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.DPTF.CTOK ((GCR0 + 0x0A)))
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.DPTF.CTOK (PST0))
            }

            Method (_SCP, 3, Serialized)  // _SCP: Set Cooling Policy
            {
                If (((Arg0 == Zero) || (Arg0 == One)))
                {
                    CTYP = Arg0
                    Notify (\_SB.PCI0.PNIT, 0x91) // Device-Specific
                }
            }

            Method (SDBG, 0, NotSerialized)
            {
                Return (PDBG) /* External reference */
            }
        }

        Device (STR1)
        {
            Name (_HID, EisaId ("INT3403") /* DPTF Temperature Sensor */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (PTYP, 0x03)
            Name (_STR, Unicode ("SYSTHERM1"))  // _STR: Description String
            Name (CTYP, Zero)
            Name (LTM1, Zero)
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.PCI0.I2C7, 
                \_SB.PCI0.I2C7.PMIC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((THM1 == Zero))
                {
                    Return (Zero)
                }

                Return (Zero)
            }

            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LTM1 = Arg0
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Level, ActiveLow, Exclusive, PullNone, 0x0000,
                        "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0016
                        }
                })
                Return (RBUF) /* \_SB_.STR1._CRS.RBUF */
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If ((\_SB.PCI0.I2C7.PMIC.AVBG == One))
                {
                    \_SB.PCI0.I2C7.PMIC.GMP1 = Zero
                    If ((\_SB.PCI0.I2C7.PMIC.AVBD == One))
                    {
                        Return (\_SB.PCI0.I2C7.PMIC.TMP1) /* External reference */
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PATC, 0x02)
            Method (PAT0, 1, Serialized)
            {
                If ((\_SB.PCI0.I2C7.PMIC.AVBD == One))
                {
                    \_SB.PCI0.I2C7.PMIC.AX10 = Arg0
                    If ((\_SB.PCI0.I2C7.PMIC.AVBG == One))
                    {
                        \_SB.PCI0.I2C7.PMIC.GX10 = One
                    }

                    \_SB.PCI0.I2C7.PMIC.PEN1 = Zero
                    If ((\_SB.PCI0.I2C7.PMIC.AVBG == One))
                    {
                        \_SB.PCI0.I2C7.PMIC.GEN1 = One
                    }
                }
            }

            Method (PAT1, 1, Serialized)
            {
                If ((\_SB.PCI0.I2C7.PMIC.AVBD == One))
                {
                    \_SB.PCI0.I2C7.PMIC.AX11 = Arg0
                    If ((\_SB.PCI0.I2C7.PMIC.AVBG == One))
                    {
                        \_SB.PCI0.I2C7.PMIC.GX11 = One
                    }
                }
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.DPTF.CTOK (GCR1))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.DPTF.CTOK ((GCR1 - 0x03)))
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.DPTF.CTOK (PST1))
            }

            Name (GTSH, 0x14)
            Method (_SCP, 3, Serialized)  // _SCP: Set Cooling Policy
            {
                If (((Arg0 == Zero) || (Arg0 == One)))
                {
                    CTYP = Arg0
                    Notify (\_SB.PCI0.PNIT, 0x91) // Device-Specific
                }
            }

            Method (SDBG, 0, NotSerialized)
            {
                Return (PDBG) /* External reference */
            }
        }

        Device (STR2)
        {
            Name (_HID, EisaId ("INT3403") /* DPTF Temperature Sensor */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_STR, Unicode ("SYSTHERM2"))  // _STR: Description String
            Name (PTYP, 0x03)
            Name (CTYP, Zero)
            Name (LTM2, Zero)
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.PCI0.I2C7, 
                \_SB.PCI0.I2C7.PMIC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((THM2 == Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LTM2 = Arg0
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Level, ActiveLow, Exclusive, PullNone, 0x0000,
                        "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0017
                        }
                })
                Return (RBUF) /* \_SB_.STR2._CRS.RBUF */
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If ((\_SB.PCI0.I2C7.PMIC.AVBG == One))
                {
                    \_SB.PCI0.I2C7.PMIC.GMP2 = Zero
                    If ((\_SB.PCI0.I2C7.PMIC.AVBD == One))
                    {
                        Return (\_SB.PCI0.I2C7.PMIC.TMP2) /* External reference */
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PATC, 0x02)
            Method (PAT0, 1, Serialized)
            {
                If ((\_SB.PCI0.I2C7.PMIC.AVBD == One))
                {
                    \_SB.PCI0.I2C7.PMIC.AX20 = Arg0
                    If ((\_SB.PCI0.I2C7.PMIC.AVBG == One))
                    {
                        \_SB.PCI0.I2C7.PMIC.GX20 = One
                    }

                    \_SB.PCI0.I2C7.PMIC.PEN2 = Zero
                    If ((\_SB.PCI0.I2C7.PMIC.AVBG == One))
                    {
                        \_SB.PCI0.I2C7.PMIC.GEN2 = One
                    }
                }
            }

            Method (PAT1, 1, Serialized)
            {
                If ((\_SB.PCI0.I2C7.PMIC.AVBD == One))
                {
                    \_SB.PCI0.I2C7.PMIC.AX21 = Arg0
                    If ((\_SB.PCI0.I2C7.PMIC.AVBG == One))
                    {
                        \_SB.PCI0.I2C7.PMIC.GX21 = One
                    }
                }
            }

            Name (GTSH, 0x14)
            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.DPTF.CTOK (GCR2))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.DPTF.CTOK ((GCR2 + 0x0A)))
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.DPTF.CTOK (PST2))
            }

            Method (_SCP, 3, Serialized)  // _SCP: Set Cooling Policy
            {
                If (((Arg0 == Zero) || (Arg0 == One)))
                {
                    CTYP = Arg0
                    Notify (\_SB.PCI0.PNIT, 0x91) // Device-Specific
                }
            }

            Method (SDBG, 0, NotSerialized)
            {
                Return (PDBG) /* External reference */
            }
        }

        Device (STR3)
        {
            Name (_HID, EisaId ("INT3403") /* DPTF Temperature Sensor */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_STR, Unicode ("BPTHERM0"))  // _STR: Description String
            Name (PTYP, 0x03)
            Name (CTYP, Zero)
            Name (LTM3, Zero)
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.PCI0.I2C7, 
                \_SB.PCI0.I2C7.PMIC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Zero)
            }

            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LTM3 = Arg0
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Level, ActiveLow, Exclusive, PullNone, 0x0000,
                        "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0018
                        }
                })
                Return (RBUF) /* \_SB_.STR3._CRS.RBUF */
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If ((\_SB.PCI0.I2C7.PMIC.AVBG == One))
                {
                    \_SB.PCI0.I2C7.PMIC.GMP3 = Zero
                    If ((\_SB.PCI0.I2C7.PMIC.AVBD == One))
                    {
                        Return (\_SB.PCI0.I2C7.PMIC.TMP3) /* External reference */
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PATC, 0x02)
            Method (PAT0, 1, Serialized)
            {
                If ((\_SB.PCI0.I2C7.PMIC.AVBD == One))
                {
                    \_SB.PCI0.I2C7.PMIC.AX30 = Arg0
                    If ((\_SB.PCI0.I2C7.PMIC.AVBG == One))
                    {
                        \_SB.PCI0.I2C7.PMIC.GX30 = One
                    }

                    \_SB.PCI0.I2C7.PMIC.PEN3 = Zero
                    If ((\_SB.PCI0.I2C7.PMIC.AVBG == One))
                    {
                        \_SB.PCI0.I2C7.PMIC.GEN3 = One
                    }
                }
            }

            Method (PAT1, 1, Serialized)
            {
                If ((\_SB.PCI0.I2C7.PMIC.AVBD == One))
                {
                    \_SB.PCI0.I2C7.PMIC.AX31 = Arg0
                    If ((\_SB.PCI0.I2C7.PMIC.AVBG == One))
                    {
                        \_SB.PCI0.I2C7.PMIC.GX31 = One
                    }
                }
            }

            Name (GTSH, 0x14)
            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.DPTF.CTOK (GCR3))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.DPTF.CTOK ((GCR3 - 0x03)))
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.DPTF.CTOK (PST3))
            }

            Method (_SCP, 3, Serialized)  // _SCP: Set Cooling Policy
            {
                If (((Arg0 == Zero) || (Arg0 == One)))
                {
                    CTYP = Arg0
                    Notify (\_SB.PCI0.PNIT, 0x91) // Device-Specific
                }
            }

            Method (SDBG, 0, NotSerialized)
            {
                Return (PDBG) /* External reference */
            }
        }

        Device (STR4)
        {
            Name (_HID, EisaId ("INT3403") /* DPTF Temperature Sensor */)  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Name (_STR, Unicode ("BPTHERM1"))  // _STR: Description String
            Name (PTYP, 0x03)
            Name (CTYP, Zero)
            Name (LTM5, Zero)
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.PCI0.I2C7, 
                \_SB.PCI0.I2C7.PMIC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Zero)
            }

            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LTM5 = Arg0
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Level, ActiveLow, Exclusive, PullNone, 0x0000,
                        "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x001B
                        }
                })
                Return (RBUF) /* \_SB_.STR4._CRS.RBUF */
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If ((\_SB.PCI0.I2C7.PMIC.AVBG == One))
                {
                    \_SB.PCI0.I2C7.PMIC.GMP4 = Zero
                    If ((\_SB.PCI0.I2C7.PMIC.AVBD == One))
                    {
                        Return (\_SB.PCI0.I2C7.PMIC.TMP4) /* External reference */
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PATC, 0x02)
            Method (PAT0, 1, Serialized)
            {
                If ((\_SB.PCI0.I2C7.PMIC.AVBD == One))
                {
                    \_SB.PCI0.I2C7.PMIC.AX40 = Arg0
                    If ((\_SB.PCI0.I2C7.PMIC.AVBG == One))
                    {
                        \_SB.PCI0.I2C7.PMIC.GX40 = One
                    }

                    \_SB.PCI0.I2C7.PMIC.PEN4 = Zero
                    If ((\_SB.PCI0.I2C7.PMIC.AVBG == One))
                    {
                        \_SB.PCI0.I2C7.PMIC.GEN4 = One
                    }
                }
            }

            Method (PAT1, 1, Serialized)
            {
                If ((\_SB.PCI0.I2C7.PMIC.AVBD == One))
                {
                    \_SB.PCI0.I2C7.PMIC.AX41 = Arg0
                    If ((\_SB.PCI0.I2C7.PMIC.AVBG == One))
                    {
                        \_SB.PCI0.I2C7.PMIC.GX41 = One
                    }
                }
            }

            Name (GTSH, 0x14)
            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.DPTF.CTOK (GCR4))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.DPTF.CTOK ((GCR4 - 0x03)))
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.DPTF.CTOK (PST4))
            }

            Method (_SCP, 3, Serialized)  // _SCP: Set Cooling Policy
            {
                If (((Arg0 == Zero) || (Arg0 == One)))
                {
                    CTYP = Arg0
                    Notify (\_SB.PCI0.PNIT, 0x91) // Device-Specific
                }
            }

            Method (SDBG, 0, NotSerialized)
            {
                Return (PDBG) /* External reference */
            }
        }

        Device (SAMB)
        {
            Name (_HID, EisaId ("INT3409"))  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (PTYP, 0x16)
            Name (_STR, Unicode ("Ambient Temperature"))  // _STR: Description String
            Name (CPRM, 0x0B54)
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.PCI0.I2C7, 
                \_SB.PCI0.I2C7.PMIC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Zero)
            }

            Method (AMBC, 0, Serialized)
            {
                Name (AMBF, Package (0x0C)
                {
                    Zero
                })
                AMBF [Zero] = ABS0 /* External reference */
                AMBF [One] = ABC0 /* External reference */
                AMBF [0x02] = ABS1 /* External reference */
                AMBF [0x03] = ABC1 /* External reference */
                AMBF [0x04] = ABS2 /* External reference */
                AMBF [0x05] = ABC2 /* External reference */
                AMBF [0x06] = ABS3 /* External reference */
                AMBF [0x07] = ABC3 /* External reference */
                AMBF [0x08] = ABS4 /* External reference */
                AMBF [0x09] = ABC4 /* External reference */
                AMBF [0x0A] = ABS5 /* External reference */
                AMBF [0x0B] = ABC5 /* External reference */
                Return (AMBF) /* \_SB_.SAMB.AMBC.AMBF */
            }

            Method (AMTT, 0, Serialized)
            {
                Name (AMTF, Package (0x03)
                {
                    Zero
                })
                If ((\_SB.PCI0.I2C7.PMIC.AVBG == One))
                {
                    \_SB.PCI0.I2C7.PMIC.GMP1 = Zero
                    \_SB.PCI0.I2C7.PMIC.GMP0 = Zero
                    \_SB.PCI0.I2C7.PMIC.GMP2 = Zero
                    If ((\_SB.PCI0.I2C7.PMIC.AVBD == One))
                    {
                        AMTF [Zero] = \_SB.PCI0.I2C7.PMIC.TMP1 /* External reference */
                        AMTF [One] = \_SB.PCI0.I2C7.PMIC.TMP0 /* External reference */
                        AMTF [0x02] = \_SB.PCI0.I2C7.PMIC.TMP2 /* External reference */
                        Return (AMTF) /* \_SB_.SAMB.AMTT.AMTF */
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
            }

            Method (_ATI, 1, Serialized)
            {
                If ((AMTE == One))
                {
                    If ((\_SB.DPTF.KTOC (Arg0) <= 0x19))
                    {
                        \_SB.PST1 = 0x34
                        \_SB.PST2 = 0x3D
                    }
                    ElseIf ((\_SB.DPTF.KTOC (Arg0) <= 0x1E))
                    {
                        \_SB.PST1 = 0x35
                        \_SB.PST2 = 0x3E
                    }
                    ElseIf ((\_SB.DPTF.KTOC (Arg0) <= 0x23))
                    {
                        \_SB.PST1 = 0x38
                        \_SB.PST2 = 0x3F
                    }
                    Else
                    {
                        \_SB.PST1 = 0x39
                        \_SB.PST2 = 0x40
                    }

                    Notify (\_SB.STR2, 0x91) // Device-Specific
                    Notify (\_SB.STR1, 0x91) // Device-Specific
                }
            }

            Method (AMBT, 0, Serialized)
            {
                Return (0x0AC0)
            }

            Method (TMPC, 0, Serialized)
            {
                If (CondRefOf (\_SB.STR0._TMP, Local0))
                {
                    Return (\_SB.STR0._TMP ())
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (TMPH, 0, Serialized)
            {
                If (CondRefOf (\_SB.STR2._TMP, Local0))
                {
                    Return (\_SB.STR2._TMP ())
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PATC, 0x02)
            Method (PAT0, 1, Serialized)
            {
                If ((\_SB.PCI0.I2C7.PMIC.AVBD == One))
                {
                    \_SB.PCI0.I2C7.PMIC.AX10 = Arg0
                    If ((\_SB.PCI0.I2C7.PMIC.AVBG == One))
                    {
                        \_SB.PCI0.I2C7.PMIC.GX10 = One
                    }

                    \_SB.PCI0.I2C7.PMIC.PEN1 = Zero
                    If ((\_SB.PCI0.I2C7.PMIC.AVBG == One))
                    {
                        \_SB.PCI0.I2C7.PMIC.GEN1 = One
                    }
                }
            }

            Method (PAT1, 1, Serialized)
            {
                If ((\_SB.PCI0.I2C7.PMIC.AVBD == One))
                {
                    \_SB.PCI0.I2C7.PMIC.AX11 = Arg0
                    If ((\_SB.PCI0.I2C7.PMIC.AVBG == One))
                    {
                        \_SB.PCI0.I2C7.PMIC.GX11 = One
                    }
                }
            }

            Method (SDBG, 0, NotSerialized)
            {
                Return (PDBG) /* External reference */
            }
        }

        Device (TDSP)
        {
            Name (_HID, EisaId ("INT3406") /* Intel Dynamic Platform & Thermal Framework Display Participant */)  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((DDSP == Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (DDDL, 0, NotSerialized)
            {
                BDLI = DPLL /* External reference */
                Return (BDLI) /* \BDLI */
            }

            Method (DDPC, 0, NotSerialized)
            {
                BDHI = DPHL /* External reference */
                Return (BDHI) /* \BDHI */
            }

            Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
            {
                Return (Package (0x0C)
                {
                    0x50, 
                    0x32, 
                    0x0A, 
                    0x14, 
                    0x1E, 
                    0x28, 
                    0x32, 
                    0x3C, 
                    0x46, 
                    0x50, 
                    0x5A, 
                    0x64
                })
            }

            Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
            {
                If (((Arg0 >= Zero) && (Arg0 <= 0x64)))
                {
                    \_SB.PCI0.GFX0.DD01._BCM (Arg0)
                }
            }

            Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
            {
                Return (\_SB.PCI0.GFX0.DD01._BQC) /* External reference */
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                Return (\_SB.PCI0.GFX0.DD01._DCS) /* External reference */
            }

            Method (SDBG, 0, NotSerialized)
            {
                Return (PDBG) /* External reference */
            }
        }

        Device (TCHG)
        {
            Name (_HID, EisaId ("INT3403") /* DPTF Temperature Sensor */)  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Name (PTYP, 0x0B)
            Name (_STR, Unicode ("Intel DPTF Charger Participant"))  // _STR: Description String
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((CHGR == Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Name (PPSS, Package (0x05)
            {
                Package (0x08)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    One, 
                    "mA", 
                    Zero
                }, 

                Package (0x08)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    One, 
                    0x02, 
                    "mA", 
                    Zero
                }, 

                Package (0x08)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    0x02, 
                    0x03, 
                    "mA", 
                    Zero
                }, 

                Package (0x08)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    0x03, 
                    0x04, 
                    "mA", 
                    Zero
                }, 

                Package (0x08)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    0x04, 
                    0x05, 
                    "mA", 
                    Zero
                }
            })
            Method (PPPC, 0, NotSerialized)
            {
                ADBG ("PPPC Return 0 (highest state)")
                Return (Zero)
            }

            Method (SPPC, 1, NotSerialized)
            {
                Debug = "TCHG.SPPC"
                Debug = Arg0
                Local2 = SizeOf (PPSS)
                Local2--
                If ((\_SB.I2Z1.AVBL != Zero))
                {
                    If (((Arg0 >= Zero) && (Arg0 <= Local2)))
                    {
                        Local1 = DerefOf (DerefOf (PPSS [Arg0]) [0x05])
                        Return (\_SB.BAT0.CHGI) /* External reference */
                        Local1
                    }
                }
            }

            Method (SDBG, 0, NotSerialized)
            {
                Return (PDBG) /* External reference */
            }
        }

        Device (WWAN)
        {
            Name (_HID, EisaId ("INT3408"))  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_STR, Unicode ("Intel DPTF WWAN Participant"))  // _STR: Description String
            Name (PTYP, 0x0F)
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.PCI0.I2C7, 
                \_SB.PCI0.I2C7.PMIC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Zero)
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.DPTF.CTOK (WPS0))
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.DPTF.CTOK (WCR0))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.DPTF.CTOK ((WCR0 - 0x03)))
            }

            Method (SDBG, 0, NotSerialized)
            {
                Return (PDBG) /* External reference */
            }

            Name (GTSH, 0x14)
            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }
        }
    }
}

