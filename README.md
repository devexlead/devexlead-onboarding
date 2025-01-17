# Development Environment Setup with WinGet

![License](https://img.shields.io/badge/license-MIT-blue.svg) 
![Contributors](https://img.shields.io/github/contributors/devexlead/onboarding-winget) 
[![Star this repo](https://img.shields.io/github/stars/devexlead/onboarding-winget?style=social)](https://github.com/devexlead/onboarding-winget/stargazers)

If you find this project helpful, please give it a star 🌟

> [!NOTE] 
> If you'd like to incorporate more configuration files to accommodate additional frameworks and technologies, **feel free to raise a PR** to share your changes or improvements. Over time, we can build a robust catalog of configuration files that cover the diverse tools developers commonly use.


## Table of Contents
- [Installation](#installation)
- [What's Included](#whats-included)
- [Documentation](#documentation)

## Installation

1. Open a Windows PowerShell terminal
2. Run the following script
```powershell
if (Test-Path 'winget-config.yaml') { Remove-Item -Path 'winget-config.yaml' -Force }; Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/devexlead/onboarding-winget/refs/heads/main/winget-config.yaml' -OutFile 'winget-config.yaml' -Headers @{"Cache-Control"="no-cache"};
winget configure -f winget-config.yaml
if (Test-Path 'post-install.ps1') { Remove-Item -Path 'post-install.ps1' -Force }; Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/devexlead/onboarding-winget/refs/heads/main/post-install.ps1' -OutFile 'post-install.ps1' -Headers @{"Cache-Control"="no-cache"}; .\post-install.ps1
```

## What's Included

Here’s the list of applications that will be installed (based on the `winget-config.yaml`):

1. **Visual Studio 2022 Community**  
2. **Visual Studio Code**  
3. **.NET Core 9 SDK**  
4. **Git**  
5. **GitHub Desktop**  
6. **NVM for Windows**  
7. **RedisInsight**  
8. **Amazon NoSQL Workbench**  
9. **Microsoft SQL Server Management Studio (SSMS)**
10. **Docker Desktop**
11. **Obsidian**
 
Here’s the list of applications that will be installed (based on the `post-install.ps1`):

1. **Node.js (LTS)** via NVM  
2. **Angular CLI**  
3. **Visual Studio Code Extensions** (including C#, MSSQL, Remote Containers, Remote WSL, AWS Toolkit, GitHub Copilot Chat, Kubernetes Tools, Playwright, PowerShell, and Postman)  
4. **Internet Information Services (IIS)** (multiple features enabled, such as ASP.NET 4.5, CGI, WebSockets, etc.)  
5. **Windows Subsystem for Linux (WSL) 2** with **Ubuntu**
  
## Documentation

- [Windows Package Manager Documentation](https://learn.microsoft.com/en-us/windows/package-manager/)
