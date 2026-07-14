# Lessons Learned

## Technical

- Windows LAPS requires Active Directory schema preparation before deployment.
- Password read permissions are separate from password decryption permissions.
- Password decryptors must be explicitly configured within Group Policy.
- Group Policy changes affecting encryption require password regeneration before taking effect.
- Delegated administration is achieved through both Active Directory permissions and Windows LAPS policy configuration.

---

## Operational

- Validate Group Policy configuration before troubleshooting permissions.
- Test delegated administration using non-privileged accounts.
- Document implementation alongside troubleshooting to improve future deployments.
- Follow the Principle of Least Privilege when delegating administrative responsibilities.

---

## Future Improvements

- Deploy Windows LAPS across additional workstation organisational units.
- Configure Windows LAPS auditing.
- Integrate Windows LAPS into future workstation deployment processes.
