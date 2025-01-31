# Install NodeJS
nvm install lts
nvm use lts

################################################################################################################################################

# https://angular.dev
# Install Angular CLI
npm install -g @angular/cli

# https://create-react-app.dev 
npm install react-scripts@latest
################################################################################################################################################

# Install VSCode Extensions
code --install-extension ms-dotnettools.csharp
code --install-extension ms-dotnettools.csdevkit
code --install-extension ms-dotnettools.vscodeintellicode-csharp
code --install-extension ms-mssql.mssql
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
code --install-extension DavidAnson.vscode-markdownlint
code --Postman.postman-for-vscode

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

# WSL 2
dism /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
wsl --install
wsl --set-default-version 2
wsl --install -d Ubuntu