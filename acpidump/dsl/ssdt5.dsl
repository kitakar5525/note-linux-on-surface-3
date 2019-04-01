/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190329 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt5.dat, Tue Apr  2 02:45:24 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000017A (378)
 *     Revision         0x01
 *     Checksum         0x5F
 *     OEM ID           "PmRef"
 *     OEM Table ID     "ApTst"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120913 (538052883)
 */
DefinitionBlock ("", "SSDT", 1, "PmRef", "ApTst", 0x00003000)
{
    External (_PR_.CPU0._PTC, IntObj)
    External (_PR_.CPU0._TSS, IntObj)
    External (_PR_.CPU1, DeviceObj)
    External (_PR_.CPU2, DeviceObj)
    External (_PR_.CPU3, DeviceObj)
    External (MPEN, UnknownObj)
    External (PDC0, UnknownObj)

    Scope (\_PR.CPU1)
    {
        Name (_TPC, Zero)  // _TPC: Throttling Present Capabilities
        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            Return (\_PR.CPU0._PTC) /* External reference */
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            Return (\_PR.CPU0._TSS) /* External reference */
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            If (!(PDC0 & 0x04))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        MPEN
                    }
                })
            }

            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    Zero, 
                    One, 
                    0xFC, 
                    One
                }
            })
        }
    }

    Scope (\_PR.CPU2)
    {
        Name (_TPC, Zero)  // _TPC: Throttling Present Capabilities
        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            Return (\_PR.CPU0._PTC) /* External reference */
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            Return (\_PR.CPU0._TSS) /* External reference */
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            If (!(PDC0 & 0x04))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        MPEN
                    }
                })
            }

            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    Zero, 
                    One, 
                    0xFC, 
                    One
                }
            })
        }
    }

    Scope (\_PR.CPU3)
    {
        Name (_TPC, Zero)  // _TPC: Throttling Present Capabilities
        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            Return (\_PR.CPU0._PTC) /* External reference */
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            Return (\_PR.CPU0._TSS) /* External reference */
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            If (!(PDC0 & 0x04))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        MPEN
                    }
                })
            }

            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    Zero, 
                    One, 
                    0xFC, 
                    One
                }
            })
        }
    }
}

