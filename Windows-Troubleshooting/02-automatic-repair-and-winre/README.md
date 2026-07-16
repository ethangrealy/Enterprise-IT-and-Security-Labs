# Automatic Repair and WinRE

## Overview

This project simulated interrupted Windows startup and demonstrated how to access the Windows Recovery Environment.

Repeated forced shutdowns triggered recovery error `0xc0000225`.

## Diagnosis

Windows reported that a required boot device could not be accessed.

The built-in recovery image was unavailable, so Windows 11 installation media was used to access the full recovery environment.

## Resolution

The following recovery path was used:

- Boot from Windows 11 installation media
- Select **Repair your computer**
- Open **Advanced options**
- Run **Startup Repair**

Startup Repair reported that it could not repair the PC. Windows later booted normally, indicating that the startup failure was temporary rather than persistent.

## Skills Demonstrated

- Windows Recovery Environment
- Windows installation media
- Startup Repair
- Recovery error diagnosis
- Advanced startup troubleshooting

## Screenshots

### Windows Recovery Error

![Windows Recovery Error](screenshots/01-automatic-recovery-triggered.png)

### WinRE Advanced Options

![WinRE Advanced Options](screenshots/02-external-winre-advanced-options.png)

### Startup Repair Result

![Startup Repair Result](screenshots/03-startup-repair-result.png)