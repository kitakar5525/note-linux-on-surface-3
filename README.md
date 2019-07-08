# Notes to use Linux on Surface 3

- see also: [kitakar5525/note-linux-on-surface-book-1](https://github.com/kitakar5525/note-linux-on-surface-book-1#kernel-parameters-i-pass-to-bootloader)

Actual patches are here:
- [kitakar5525/linux-surface-patches](https://github.com/kitakar5525/linux-surface-patches)

<!-- TOC -->

- [Notes to use Linux on Surface 3](#notes-to-use-linux-on-surface-3)
    - [Working status](#working-status)
        - [What is working NOW which was not before](#what-is-working-now-which-was-not-before)
            - [S0ix state](#s0ix-state)
        - [What is working IF you apply patch(es) to kernel](#what-is-working-if-you-apply-patches-to-kernel)
        - [What is NOT working](#what-is-not-working)
            - [Touchscreen is not stable](#touchscreen-is-not-stable)
    - [Kernel parameters I pass to bootloader](#kernel-parameters-i-pass-to-bootloader)
    - ["OEMB" problem](#oemb-problem)

<!-- /TOC -->

## Working status

### What is working NOW which was not before

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
- [platform/x86: Add Intel AtomISP2 dummy / power-management driver · torvalds/linux@49ad712](https://github.com/torvalds/linux/commit/49ad712afa88c502831d37f7089d98eac441fb80)

References:
- [196861 – S0ix enablement - Asus E200HA (Atom x5-Z8300, Cherrytrail)](https://bugzilla.kernel.org/show_bug.cgi?id=196861#c8)

### What is working IF you apply patch(es) to kernel
- Battery status reading
  - [[v3] platform/x86: surface3_power: MSHW0011 rev-eng implementation - Patchwork](https://patchwork.kernel.org/patch/10584079/). On above kernel 4.20, maybe you can also build only this module, not whole kernel (not tested). Or, 
  - use jakeday [repository](https://github.com/jakeday/linux-surface)

### What is NOT working

- Cameras
- Wi-Fi power_save
  - We need to disable power_save for stability for now. If we disable power_save, the stability is enough for daily usage (still sometimes drops wifi, though). Disabling power_save is included in wifi patch of jakeday repository.

#### Touchscreen is not stable

On kernel 4.19.y, touchscreen is working unless you put your Surface 3 into suspend (s2idle).
After s2idle:
```bash
kern  :err   : [  +0.203408] Surface3-spi spi-MSHW0037:00: SPI transfer timed out
```

On kernel 5.1.y (I don't know about 5.0.y), touchscreen is not working even right after boot:
```bash
kern  :err   : [  +0.203592] Surface3-spi spi-MSHW0037:00: SPI transfer timed out
kern  :err   : [  +0.000173] spi_master spi1: failed to transfer one message from queue
```

## Kernel parameters I pass to bootloader
  - i915.enable_psr=1
  - i915.fastboot=1
  - i915.enable_guc=-1

## "OEMB" problem

My Surface 3 is also affected by this problem. "OEMB" problem is described on:
- [Surface 3 (Not Pro) This Device is not a Surface 3 - Microsoft Community](https://answers.microsoft.com/en-us/surface/forum/all/surface-3-not-pro-this-device-is-not-a-surface-3/033edd29-feeb-42c8-8f98-6d4eb08411c7)
- [Restore device information by software method - Microsoft Community](https://answers.microsoft.com/en-us/surface/forum/all/restore-device-information-by-software-method/ebf48589-71ca-4e6c-bd15-a84501de52b9)
- [Half-bricking Surface 3 on 7.1 RC1? - Google Groups](https://groups.google.com/forum/#!topic/android-x86/z6GDuvV2oWk)

To enable audio on such devices, you need to apply a patch like this:

```diff
diff --git a/sound/soc/codecs/rt5645.c b/sound/soc/codecs/rt5645.c
index be67468..70cf5dd 100644
--- a/sound/soc/codecs/rt5645.c
+++ b/sound/soc/codecs/rt5645.c
@@ -3701,6 +3701,14 @@ static const struct dmi_system_id dmi_platform_data[] = {
 		},
 		.driver_data = (void *)&intel_braswell_platform_data,
 	},
+	{
+		.ident = "Microsoft Surface 3",
+		.matches = {
+			DMI_MATCH(DMI_SYS_VENDOR, "OEMB"),
+			DMI_MATCH(DMI_PRODUCT_NAME, "OEMB"),
+		},
+		.driver_data = (void *)&intel_braswell_platform_data,
+	},
 	{
 		/*
 		 * Match for the GPDwin which unfortunately uses somewhat
diff --git a/sound/soc/intel/common/soc-acpi-intel-cht-match.c b/sound/soc/intel/common/soc-acpi-intel-cht-match.c
index 91bb99b..b0e2b0d 100644
--- a/sound/soc/intel/common/soc-acpi-intel-cht-match.c
+++ b/sound/soc/intel/common/soc-acpi-intel-cht-match.c
@@ -36,6 +36,13 @@ static const struct dmi_system_id cht_table[] = {
 			DMI_MATCH(DMI_PRODUCT_NAME, "Surface 3"),
 		},
 	},
+	{
+		.callback = cht_surface_quirk_cb,
+		.matches = {
+			DMI_MATCH(DMI_SYS_VENDOR, "OEMB"),
+			DMI_MATCH(DMI_PRODUCT_NAME, "OEMB"),
+		},
+	},
 	{ }
 };
 
```
