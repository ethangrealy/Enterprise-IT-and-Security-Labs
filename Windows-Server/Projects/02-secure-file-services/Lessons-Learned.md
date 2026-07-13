# Lessons Learned

## NTFS Permissions

NTFS permissions should be assigned to Security Groups rather than individual users to improve scalability and simplify administration.

---

## Share Permissions

Share permissions and NTFS permissions combine to create a user's effective permissions.

Both permission sets must allow access before a user can access a shared resource.

---

## Role-Based Access Control

Role-Based Access Control (RBAC) significantly reduces administrative effort by assigning permissions to business roles rather than individual users.

---

## Group Policy Preferences

Mapped drives initially failed to deploy because Windows processed user policy before the workstation network connection had fully initialised.

Enabling the policy:

Always wait for the network at computer startup and logon

resolved the issue by forcing synchronous Group Policy processing.

---

## Troubleshooting

Enterprise troubleshooting should always begin by validating:

- Group membership
- Share permissions
- NTFS permissions
- Group Policy application
- Event Viewer
- UNC path access
