## OpenSSL Library Vulnerability Scripts

> ⚠️ **Note:** These scripts are currently **untested** and **not in production**.

These scripts were created to help identify and remove unused OpenSSL libraries, many of which are known to have security vulnerabilities.

### 🎯 Purpose

The primary goal is to remove (rather than update) vulnerable OpenSSL libraries. This approach is preferred because most of the libraries in question are remnants from one-time-use applications—most notably **GoToAssist**, a remote support tool used by IT.

### 🧪 Observations

- Several well-known applications (e.g., **Adobe Acrobat**) have been found using outdated and vulnerable OpenSSL versions.
- An early version of the script attempted a more thorough process:
  1. Scan applications for dependencies using `sigcheck`.
  2. Identify vulnerable OpenSSL libraries.
  3. Quarantine or remove unused/unapproved libraries.

Unfortunately, this method proved too slow and unreliable for large-scale deployment.

### 🧹 Final Approach

The current iteration of the script simplifies the process by **deleting GoToAssist application folders** directly, with the assumption that doing so will also remove their associated vulnerable libraries. The aim is to prompt auto-updates or reinstallation of safer versions if needed.
