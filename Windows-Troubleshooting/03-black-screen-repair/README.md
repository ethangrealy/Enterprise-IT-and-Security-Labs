# Black Screen After Sign-In

## Overview

This project simulated a Windows 11 black screen after sign-in by preventing the Windows desktop shell from starting.

## Diagnosis

Windows accepted the user sign-in, but the desktop and taskbar did not load.

Task Manager remained accessible, confirming that Windows was running but Windows Explorer had not started.

The Winlogon registry configuration was checked and showed an invalid shell value:

`missing-shell.exe`

## Resolution

The Winlogon shell value was changed back to:

`explorer.exe`

Windows was restarted and the desktop, taskbar and Start menu loaded normally.

## Skills Demonstrated

- Black-screen troubleshooting
- Task Manager diagnosis
- Windows Explorer troubleshooting
- Registry inspection and repair
- Verifying the repair after restart

## Screenshots

### Normal Shell Configuration

![Normal shell configuration](screenshots/01-normal-shell-configuration.png)

### Black Screen After Sign-In

![Black screen after sign-in](screenshots/02-black-screen-after-sign-in.png)

### Invalid Shell Value

![Invalid shell value](screenshots/03-invalid-winlogon-shell-value.png)

### Shell Restored

![Shell restored](screenshots/04-shell-restored-after-restart.png)