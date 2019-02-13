```
lspci -nn
00:00.0 Host bridge [0600]: Intel Corporation Atom/Celeron/Pentium Processor x5-E8000/J3xxx/N3xxx Series SoC Transaction Register [8086:2280] (rev 20)
00:02.0 VGA compatible controller [0300]: Intel Corporation Atom/Celeron/Pentium Processor x5-E8000/J3xxx/N3xxx Series PCI Configuration Registers [8086:22b0] (rev 20)
00:03.0 Multimedia controller [0480]: Intel Corporation Atom/Celeron/Pentium Processor x5-E8000/J3xxx/N3xxx Series Imaging Unit [8086:22b8] (rev ff)
00:0b.0 Signal processing controller [1180]: Intel Corporation Atom/Celeron/Pentium Processor x5-E8000/J3xxx/N3xxx Series Power Management Controller [8086:22dc] (rev 20)
00:14.0 USB controller [0c03]: Intel Corporation Atom/Celeron/Pentium Processor x5-E8000/J3xxx/N3xxx Series USB xHCI Controller [8086:22b5] (rev 20)
00:1a.0 Encryption controller [1080]: Intel Corporation Atom/Celeron/Pentium Processor x5-E8000/J3xxx/N3xxx Series Trusted Execution Engine [8086:2298] (rev 20)
00:1c.0 PCI bridge [0604]: Intel Corporation Atom/Celeron/Pentium Processor x5-E8000/J3xxx/N3xxx Series PCI Express Port #1 [8086:22c8] (rev 20)
00:1f.0 ISA bridge [0601]: Intel Corporation Atom/Celeron/Pentium Processor x5-E8000/J3xxx/N3xxx Series PCU [8086:229c] (rev 20)
01:00.0 Ethernet controller [0200]: Marvell Technology Group Ltd. 88W8897 [AVASTAR] 802.11ac Wireless [11ab:2b38]
```

```
lspci -nntv
-[0000:00]-+-00.0  Intel Corporation Atom/Celeron/Pentium Processor x5-E8000/J3xxx/N3xxx Series SoC Transaction Register [8086:2280]
           +-02.0  Intel Corporation Atom/Celeron/Pentium Processor x5-E8000/J3xxx/N3xxx Series PCI Configuration Registers [8086:22b0]
           +-03.0  Intel Corporation Atom/Celeron/Pentium Processor x5-E8000/J3xxx/N3xxx Series Imaging Unit [8086:22b8]
           +-0b.0  Intel Corporation Atom/Celeron/Pentium Processor x5-E8000/J3xxx/N3xxx Series Power Management Controller [8086:22dc]
           +-14.0  Intel Corporation Atom/Celeron/Pentium Processor x5-E8000/J3xxx/N3xxx Series USB xHCI Controller [8086:22b5]
           +-1a.0  Intel Corporation Atom/Celeron/Pentium Processor x5-E8000/J3xxx/N3xxx Series Trusted Execution Engine [8086:2298]
           +-1c.0-[01]----00.0  Marvell Technology Group Ltd. 88W8897 [AVASTAR] 802.11ac Wireless [11ab:2b38]
           \-1f.0  Intel Corporation Atom/Celeron/Pentium Processor x5-E8000/J3xxx/N3xxx Series PCU [8086:229c]
```