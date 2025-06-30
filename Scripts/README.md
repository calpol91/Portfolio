## Scripts Folder

This folder contains a collection of scripts I've created to help streamline my daily work.

### 📬 Exchange Scripts

The majority of these scripts are Exchange-related. These tasks make up most of my current workload, and I’ve found Exchange to be slow and occasionally buggy — scripting helps speed things up significantly.

The company is currently going through a period of transition, with users frequently being added or removed, sometimes in bulk. This has led to the need for automation around:

- Bulk user mailbox creation
- Adding/removing users to/from distribution lists
- Delegation checks and permission changes

### 🧑‍💻 Active Directory

I haven’t made much progress with AD scripting yet (see the `README.md` in the AD folder for more details). This is largely due to the company’s migration from a local AD to an Azure/Intune/Entra setup.

### 💼 Intune Scripts

These scripts are primarily used to create desktop shortcuts via Intune. While limited in scope, they serve to demonstrate my experience with packaging and deploying via Intune. More details can be found in the `README.md` inside the Intune folder.

### 🔐 Vulnerability Remediation

I've recently started exploring scripting for vulnerability cleanup — particularly targeting outdated or insecure libraries. I initially began with a script for Teams Classic, but Microsoft released their own official version mid-development, making mine redundant.

---

> ⚙️ These scripts are a work in progress and reflect both the needs of the business and my evolving skill set.
