# Notes to use Linux on Surface 3

- see also: [kitakar5525/note-linux-on-surface-book-1](https://github.com/kitakar5525/note-linux-on-surface-book-1#kernel-parameters-i-pass-to-bootloader)

- What is working NOW which was not before
  - S0ix state
    - We can now go into S0ix after kernel 4.20 !
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
  - `Display` section on GNOME settings
    - Now internal display appears on GNOME settings after latest kernel 4.19.x

- What is working IF you apply patch(es) to kernel
  - Battery status reading
    - [[v3] platform/x86: surface3_power: MSHW0011 rev-eng implementation - Patchwork](https://patchwork.kernel.org/patch/10584079/). On above kernel 4.20, maybe you can also build only this module, not whole kernel (not tested). Or, 
    - use jakeday [repository](https://github.com/jakeday/linux-surface)

- What is NOT working
  - Cameras
  - Touch input crashes after s2idle
    ```bash
    kern  :err   : [  +0.203408] Surface3-spi spi-MSHW0037:00: SPI transfer timed out
    ```
  - Wi-Fi power_save
    - We need to disable power_save for stability for now. If we disable power_save, the stability is enough for daily usage. Disabling power_save is included in wifi patch of jakeday repository.

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
