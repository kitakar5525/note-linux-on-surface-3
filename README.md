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
    - [[v3] platform/x86: surface3_power: MSHW0011 rev-eng implementation - Patchwork](https://patchwork.kernel.org/patch/10584079/) on above kernel 4.20, or
    - use jakeday [repository](https://github.com/jakeday/linux-surface)

- What is NOT working
  - Cameras
  - Touch input crashes after s2idle
    ```bash
    kern  :err   : [  +0.203408] Surface3-spi spi-MSHW0037:00: SPI transfer timed out
    ```
  - Wi-Fi power_save
    - We need to disable power_save for stability for now. If we disable power_save, the stability is enough for daily usage. Disabling power_save is included in wifi patch of jakeday repository.

- Kernel parameters I pass to bootloader
  - i915.enable_psr=1
  - i915.fastboot=1
  - i915.enable_guc=-1
