## Note

My Surface 3 DMI is broken. `sudo dmidecode` shows:
```
Manufacturer: OEMB
Product Name: OEMB
```

## How to extract them

- dump tables
```
sudo acpidump > acpidump.dat
```

- extract all the tables
```
acpixtract -a acpidump.dat
```

- disassemble the tables
```
iasl -d *
```

- disassemble the dsdt table with external symbol resolution
```
iasl -e ssdt* -d dsdt.dat
```
