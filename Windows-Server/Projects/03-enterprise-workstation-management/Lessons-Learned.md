# Lessons Learned

## Group Policy

Separating User Configuration and Computer Configuration policies made troubleshooting significantly easier and resulted in a cleaner Group Policy design.

---

## Remote Desktop

Remote Desktop should be centrally managed using Active Directory Security Groups rather than granting permissions directly to individual users.

Using Group Policy Preferences to manage the local **Remote Desktop Users** group provides a scalable and secure solution.

---

## Software Deployment

Group Policy Software Installation requires MSI packages and installs assigned applications during computer startup rather than immediately after a policy refresh.

Testing should always include a restart to validate successful deployment.

---

## Windows Update Management

Centralising Windows Update configuration through Group Policy ensures workstations receive consistent update settings while reducing disruption to end users.

---

## Troubleshooting

When troubleshooting workstation issues, validate the following before making configuration changes:

- GPO link location
- OU placement
- Group Policy application
- Group Policy processing order
- Event Viewer logs
- Network connectivity
- Security Group membership

Following a structured troubleshooting methodology reduced time spent identifying configuration issues throughout the project.
