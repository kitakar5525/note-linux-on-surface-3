/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190329 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt8.dat, Tue Apr  2 02:45:24 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000104 (260)
 *     Revision         0x01
 *     Checksum         0x6B
 *     OEM ID           "SoCDpf"
 *     OEM Table ID     "SoCDptf"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120913 (538052883)
 */
DefinitionBlock ("", "SSDT", 1, "SoCDpf", "SoCDptf", 0x00001000)
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
    External (_SB_.DPTF.CTOK, IntObj)
    External (_SB_.PCI0.PNIT, UnknownObj)
    External (ACTT, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (CRTT, MethodObj)    // Warning: Unknown method, guessing 0 arguments

    Scope (\_SB)
    {
        Device (TSOC)
        {
            Name (_HID, EisaId ("INT3402"))  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (CTYP, Zero)
            Name (CINT, 0x04)
            Name (LSTM, Zero)
            Name (PATC, 0x02)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Zero)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                    {
                        0x0000004A,
                    }
                })
                Return (RBUF) /* \_SB_.TSOC._CRS.RBUF */
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.DPTF.CTOK) /* External reference */
                CRTT ()
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.DPTF.CTOK) /* External reference */
                (CRTT () - 0x03)
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.DPTF.CTOK) /* External reference */
                ACTT ()
            }

            Method (_SCP, 3, Serialized)  // _SCP: Set Cooling Policy
            {
                If (((Arg0 == Zero) || (Arg0 == One)))
                {
                    CTYP = Arg0
                    Notify (\_SB.PCI0.PNIT, 0x91) // Device-Specific
                }
            }
        }
    }
}

