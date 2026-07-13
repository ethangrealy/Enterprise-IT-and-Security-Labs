# Lessons Learned

## Active Directory Design

Designing the OU structure before creating users and computers significantly simplified Group Policy deployment.

---

## Security Groups

Assigning permissions to Security Groups rather than directly to users created a scalable Role-Based Access Control (RBAC) model.

---

## Group Policy

A Group Policy Object must be linked to the correct Organizational Unit before it can apply.

---

## Documentation

Recording design decisions throughout implementation made troubleshooting significantly easier and provided a useful reference for future projects.
