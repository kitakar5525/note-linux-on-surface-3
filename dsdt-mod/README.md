### DSDT mods for Surface 3

I tried the following:
- Fix/avoid compile errors to be able to recompile DSDT again
- Fix incorrect audio codec id

Take a look at ArchWiki [1] for compiling and overriding DSDT.

[1] https://wiki.archlinux.org/index.php/DSDT

#### about fixing compile errors

```
$ iasl -tc dsdt.dsl
[...]
Maximum error count (200) exceeded
ASL Input:     dsdt.dsl -  453841 bytes   4816 keywords  14042 source lines
Hex Dump:      dsdt.hex -     230 bytes

Compilation failed. 201 Errors, 26 Warnings, 120 Remarks
No AML files were generated due to compiler error(s)
```

As you can see, there were over 200 errors when trying to recompile
the decompiled original/non-modified DSDT. I just tried to fix/avoid
the errors to recompile DSDT, following the messages from compiler.

(Luckily, fixing/avoiding the errors also fixed/supressed almost all
ACPI error messages found in dmesg log. That said, I think those errors
can be just ignored.)

#### generating patch to DSDT from this repo

```bash
HASH=4c098b86751148730e9615671b62ec0d943b6ad6 # ("add dsdt.dsl")
git format-patch $HASH dsdt.dsl
```
