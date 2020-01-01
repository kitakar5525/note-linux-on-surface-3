# Notes to use Linux on Surface 3

- see also: [kitakar5525/note-linux-on-surface-book-1](https://github.com/kitakar5525/note-linux-on-surface-book-1#kernel-parameters-i-pass-to-bootloader)

Actual patches are here:
- [kitakar5525/linux-surface-patches](https://github.com/kitakar5525/linux-surface-patches)

<!-- TOC -->

- [Notes to use Linux on Surface 3](#notes-to-use-linux-on-surface-3)
    - [Working status](#working-status)
        - [What is working now which was not before](#what-is-working-now-which-was-not-before)
            - [S0ix state](#s0ix-state)
        - [What is working when you apply patch(es) to kernel](#what-is-working-when-you-apply-patches-to-kernel)
        - [What is not working](#what-is-not-working)
            - [Touch input may crash on mainline kernels](#touch-input-may-crash-on-mainline-kernels)
    - ["OEMB" issue](#oemb-issue)
        - [Firmware update with DMI-broken Surface 3](#firmware-update-with-dmi-broken-surface-3)

<!-- /TOC -->

## Working status

### What is working now which was not before

- Internal display not configurable except `xrandr`.

  It did show up on `xrandr`, but not on GNOME settings `Display` section and even Chromium OS could not use internal display before.

  Now it appears on GNOME settings `Display` section, exactly after 4.19.13. Chromium OS can now use it correctly. I am not sure what commit fixed this issue; if you know, let me know.

#### S0ix state

We can now go into S0ix state after kernel 4.20 on suspend (s2idle)!
This means s2idle is now much more power-efficient than before.
```bash
/sys/devices/system/cpu/cpuidle/low_power_idle_cpu_residency_us
30

/sys/kernel/debug/pmc_atom/sleep_state
S0IR Residency:32us
S0I1 Residency:11456us
S0I2 Residency:96us
S0I3 Residency:7991840us
S0   Residency:135887456us
```

It seems that if you want to achieve s0ix on 4.19 LTS, you need these two patches:
- [pwm: lpss: Add ACPI HID for second PWM controller on Cherry Trail dev… · torvalds/linux@1688c87](https://github.com/torvalds/linux/commit/1688c8717118f37191d824862a006c8373d261de)
- [platform/x86: Add Intel AtomISP2 dummy / power-management driver · torvalds/linux@49ad712](https://github.com/torvalds/linux/commit/49ad712afa88c502831d37f7089d98eac441fb80) (backported to 4.19 as https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?h=linux-4.19.y&id=cb09e99b9ad3eb8aef7185747938ef815386fb59)

References:
- [196861 – S0ix enablement - Asus E200HA (Atom x5-Z8300, Cherrytrail)](https://bugzilla.kernel.org/show_bug.cgi?id=196861#c8)

### What is working when you apply patch(es) to kernel
- Battery status reading
  - [[v3] platform/x86: surface3_power: MSHW0011 rev-eng implementation - Patchwork](https://patchwork.kernel.org/patch/10584079/). On above kernel 4.20, maybe you can also build only this module, not whole kernel (not tested). Or, 
  - use jakeday [repository](https://github.com/jakeday/linux-surface)

### What is not working

- Cameras
- Wi-Fi power_save
  - We need to disable power_save for stability for now. If we disable power_save, the stability is enough for daily usage (still sometimes drops wifi, though). Disabling power_save is included in wifi patch of jakeday repository.

#### Touch input may crash on mainline kernels

See #3

## "OEMB" issue

My Surface 3 is also affected by this issue.
```bash
$ sudo dmidecode
[...]
System Information
	Manufacturer: OEMB
	Product Name: OEMB
[...]
```

"OEMB" issue is described on:
- [Surface 3 (Not Pro) This Device is not a Surface 3 - Microsoft Community](https://answers.microsoft.com/en-us/surface/forum/all/surface-3-not-pro-this-device-is-not-a-surface-3/033edd29-feeb-42c8-8f98-6d4eb08411c7)
- [Restore device information by software method - Microsoft Community](https://answers.microsoft.com/en-us/surface/forum/all/restore-device-information-by-software-method/ebf48589-71ca-4e6c-bd15-a84501de52b9)
- [Half-bricking Surface 3 on 7.1 RC1? - Google Groups](https://groups.google.com/forum/#!topic/android-x86/z6GDuvV2oWk)

To enable audio on such devices, you need to add DMI match entry like this:
```c
.matches = {
    DMI_MATCH(DMI_SYS_VENDOR, "OEMB"),
    DMI_MATCH(DMI_PRODUCT_NAME, "OEMB"),
},
```

See Android-x86 [kernel commit](https://ja.osdn.net/projects/android-x86/scm/git/kernel/commits/fbd728231014aa2567621564436a3065a702f60a)

You also need to apply a similar patch to `surface3-wmi.c`
Have a look at my patches.
- [linux-surface-patches/Sound-add-DMI_MATCH-OEMB-for-broken-DMI-Surface-3.patch at v2.9.2 · kitakar5525/linux-surface-patches](https://github.com/kitakar5525/linux-surface-patches/blob/v2.9.2/patch-5.2/5525-Surface_3-DMI-OEMB/Sound-add-DMI_MATCH-OEMB-for-broken-DMI-Surface-3.patch)
- [linux-surface-patches/surface3-wmi-add-DMI_MATCH-OEMB-for-broken-DMI-Surfa.patch at v2.9.2 · kitakar5525/linux-surface-patches](https://github.com/kitakar5525/linux-surface-patches/blob/v2.9.2/patch-5.2/5525-Surface_3-DMI-OEMB/surface3-wmi-add-DMI_MATCH-OEMB-for-broken-DMI-Surfa.patch)

### Firmware update with DMI-broken Surface 3

Firmware updates are usually done via Windows Update. However, DMI-broken Surface 3 will be recognized as "OEMB", not "Surface 3". Therefore It cannot be updated in the usual way.

Get firmware update MSI installer from Microsoft:
- [Download drivers and firmware for Surface](https://support.microsoft.com/en-us/help/4023482/surface-download-drivers-and-firmware-for-surface)

At this point, you cannot pass product name check (It shows something like "your device is not Surface 3"). Edit the MSI installer using InstEd.

- InstEd->Tables->Property->InstallPrerequisites

```diff
-OSVersion=Win10;ProductName=Surface 3;SystemSKU=;OSBuild=18362;SystemModels=;SystemSKUs=Surface_3_ROW;PreventBitLockerNoSecureBoot=0
# to something like this:
+OSVersion=Win10;ProductName=OEMB;SystemSKU=;OSBuild=18362;SystemModels=;SystemSKUs=;PreventBitLockerNoSecureBoot=0
```

However, updating the firmware did not fix the DMI. My Surface 3 remains OEMB even after updating the firmware using the MSI installer.
