# Install NodeJS
nvm install lts
nvm use lts

################################################################################################################################################

# https://angular.dev
# Install Angular CLI
npm install -g @angular/cli

# https://create-react-app.dev 
npm install react-scripts@latest

#https://vite.dev
npm install -D vite

################################################################################################################################################

# Install .NET Tools
dotnet tool update --global dotnet-ef
dotnet tool update --global microsoft.dataapibuilder

################################################################################################################################################

# Install VSCode Extensions
code --install-extension ms-dotnettools.csharp
code --install-extension ms-dotnettools.csdevkit
code --install-extension ms-dotnettools.vscodeintellicode-csharp
code --install-extension ms-mssql.mssql
code --install-extension ms-mssql.sql-database-projects-vscode
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-vscode-remote.remote-wsl
code --install-extension AmazonWebServices.aws-toolkit-vscode
code --install-extension GitHub.copilot-chat
code --install-extension GitHub.vscode-pull-request-github
code --install-extension GitHub.vscode-github-actions
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
code --install-extension ms-playwright.playwright
code --install-extension ms-vscode.PowerShell
code --install-extension eamodio.gitlens
code --install-extension ms-azuretools.vscode-docker
code --install-extension dbaeumer.vscode-eslint
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension garrytrinder.dev-proxy-toolkit
code --Postman.postman-for-vscode
code --install-extension esbenp.prettier-vscode
code --install-extension burkeholland.simple-react-snippets
code --install-extension dsznajder.es7-react-js-snippets
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension ms-edgedevtools.vscode-edge-devtools
code --install-extension bierner.markdown-mermaid

################################################################################################################################################

# IIS features
dism /online /enable-feature /featurename:IIS-WebServerRole /all /norestart
dism /online /enable-feature /featurename:IIS-WebServer /all /norestart
dism /online /enable-feature /featurename:IIS-CommonHttpFeatures /all /norestart
dism /online /enable-feature /featurename:IIS-HttpErrors /all /norestart
dism /online /enable-feature /featurename:IIS-HttpRedirect /all /norestart
dism /online /enable-feature /featurename:IIS-ApplicationDevelopment /all /norestart
dism /online /enable-feature /featurename:IIS-Security /all /norestart
dism /online /enable-feature /featurename:IIS-RequestFiltering /all /norestart
dism /online /enable-feature /featurename:IIS-NetFxExtensibility45 /all /norestart
dism /online /enable-feature /featurename:IIS-HealthAndDiagnostics /all /norestart
dism /online /enable-feature /featurename:IIS-HttpLogging /all /norestart
dism /online /enable-feature /featurename:IIS-URLAuthorization /all /norestart
dism /online /enable-feature /featurename:IIS-IPSecurity /all /norestart
dism /online /enable-feature /featurename:IIS-Performance /all /norestart
dism /online /enable-feature /featurename:IIS-WebServerManagementTools /all /norestart
dism /online /enable-feature /featurename:IIS-StaticContent /all /norestart
dism /online /enable-feature /featurename:IIS-DefaultDocument /all /norestart
dism /online /enable-feature /featurename:IIS-DirectoryBrowsing /all /norestart
dism /online /enable-feature /featurename:IIS-ISAPIFilter /all /norestart
dism /online /enable-feature /featurename:IIS-ISAPIExtensions /all /norestart
dism /online /enable-feature /featurename:IIS-ASPNET45 /all /norestart
dism /online /enable-feature /featurename:IIS-CGI /all /norestart
dism /online /enable-feature /featurename:IIS-BasicAuthentication /all /norestart
dism /online /enable-feature /featurename:IIS-HttpCompressionStatic /all /norestart
dism /online /enable-feature /featurename:IIS-ManagementConsole /all /norestart
dism /online /enable-feature /featurename:IIS-WebSockets /all /norestart

################################################################################################################################################

# Firefox Extensions
# https://addons.mozilla.org/en-US/firefox/addon/react-devtools/

# PSReadLine
################################################################################################################################################
Install-Module PSReadLine -Force; 
New-Item -Path $PROFILE -ItemType File -Force
Add-Content -Path $PROFILE -Value "Set-PSReadLineOption -PredictionViewStyle ListView -PredictionSource History -HistoryNoDuplicates -MaximumHistoryCount 10000"
################################################################################################################################################

# VSCode Settings
################################################################################################################################################
Write-Host "Import VSCode Configuration"

Copy-Item -Path ".\settings.json" `
          -Destination "$env:USERPROFILE\AppData\Roaming\Code\User\settings.json" `
          -Force `
          -Verbose
################################################################################################################################################

# Import Visual Studio Workloads
################################################################################################################################################
Write-Host "Download vs_community.exe to $outFilePath."
$downloadUrl = "https://aka.ms/vs/17/release/vs_community.exe"
$outFilePath = ".\vs_community.exe"
Invoke-WebRequest -Uri $downloadUrl -OutFile $outFilePath -UseBasicParsing

Write-Host "Import Visual Studio 2022 Configuration"
.\vs_community.exe --config ".\workloads.vsconfig" --passive --norestart
################################################################################################################################################

# WSL 2
dism /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
wsl --install
wsl --set-default-version 2
wsl --install -d Ubuntu
