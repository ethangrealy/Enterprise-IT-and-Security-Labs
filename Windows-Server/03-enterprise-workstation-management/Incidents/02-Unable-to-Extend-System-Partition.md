# INC-0003 - Unable to Extend System Partition

## Summary

The primary Windows partition could not be extended after increasing the virtual disk size within VMware.

---

## Impact

The workstation was unable to utilise the additional virtual disk capacity, preventing expansion of the operating system partition and limiting available storage for future enterprise projects.

---

## Symptoms

- VMware reported the virtual disk had been successfully expanded.
- Windows Disk Management showed additional unallocated space.
- The **Extend Volume** option for the C: drive was unavailable.
- The operating system partition remained unchanged despite the additional storage.

---

## Investigation

The following troubleshooting steps were completed.

- Verified the virtual disk size within VMware.
- Reviewed the partition layout using Disk Management.
- Confirmed the presence of unallocated disk space.
- Inspected the disk using the DiskPart command-line utility.
- Identified the Recovery partition located between the C: drive and the unallocated space.

---

## Root Cause

Although additional storage had been allocated to the virtual machine, the Windows partition itself had not been extended.

Windows Disk Management could not extend the C: drive because the Recovery partition was positioned between the operating system partition and the newly allocated unallocated space.

Since the unallocated space was not directly adjacent to the C: partition, Windows prevented the extension.

---

## Resolution

The Recovery partition was identified using DiskPart and removed using the `delete partition override` command.

Once the Recovery partition had been removed, the C: partition was successfully extended into the adjacent unallocated space using DiskPart.

---

## Validation

Successful implementation was confirmed by:

- The C: partition reflected the newly allocated storage capacity.
- Windows recognised the increased disk size.
- The operating system partition extended successfully without errors.
- Disk Management displayed the updated partition layout.

---

## Lessons Learned

Increasing a virtual disk within VMware does not automatically extend the Windows operating system partition.

When extending a partition, Windows requires unallocated space to be directly adjacent to the partition being extended.

If a Recovery partition exists between the operating system partition and the unallocated space, Disk Management cannot extend the volume. In these situations, DiskPart provides greater administrative capability for identifying and removing blocking partitions before extending the volume.
