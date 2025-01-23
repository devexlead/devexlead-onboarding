# Install NodeJS
nvm install lts
nvm use lts

# Install Angular CLI
npm install -g @angular/cli

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

# WSL 2
dism /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
wsl --install
wsl --set-default-version 2
wsl --install -d Ubuntu

# Configure Oh-My-Posh
# Install-Module PSReadLine -Force; 
# if (!(Test-Path $PROFILE)) { New-Item -Type File -Path $PROFILE -Force }; 
# Add-Content $PROFILE "`n# Initialize Oh My Posh and configure PSReadLine`noh-my-posh init pwsh --config `"$env:POSH_THEMES_PATH\jandedobbeleer.omp.json`" | Invoke-Expression`nImport-Module PSReadLine`nSet-PSReadLineOption -PredictionSource History`nSet-PSReadLineOption -PredictionViewStyle ListView`nSet-PSReadLineOption -EditMode Windows"; 
# Invoke-Expression 'oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\jandedobbeleer.omp.json" | Invoke-Expression'; 
# if (-not (Get-Module -Name PSReadLine)) { Import-Module PSReadLine }
# Set-PSReadLineOption -PredictionSource History; 
# Set-PSReadLineOption -PredictionViewStyle ListView; 
# Set-PSReadLineOption -EditMode Windows

# $fontUrl = "https://github.com/ryanoasis/nerd-fonts/raw/3b93c9963710a840f12c3f3e4e6f6240e39cbbdc/patched-fonts/CascadiaCode/Regular/complete/Caskaydia%20Cove%20Nerd%20Font%20Complete%20Regular.otf"
# $fontFileName = "Caskaydia Cove Nerd Font Complete Regular.otf"
# $fontFilePath = "$env:TEMP\$fontFileName"
# $fontsFolder = "$env:LOCALAPPDATA\Microsoft\Windows\Fonts"

# # Download the font
# Write-Host "Downloading Nerd Font..." -ForegroundColor Cyan
# Invoke-WebRequest -Uri $fontUrl -OutFile $fontFilePath

# # Install the font
# Write-Host "Installing Nerd Font..." -ForegroundColor Cyan
# Copy-Item -Path $fontFilePath -Destination $fontsFolder -Force

# Write-Host "Please follow the instructions below to set the font in Windows Terminal." -ForegroundColor Yellow
# Write-Host "1. Open Windows Terminal."
# Write-Host "2. Click the dropdown arrow next to the '+' tab button and select 'Settings'."
# Write-Host "3. Choose the profile you want to modify (e.g., PowerShell)."
# Write-Host "4. Under the 'Appearance' section, set 'Font face' to 'Caskaydia Cove Nerd Font Complete'."
# Write-Host "5. Click 'Save' to apply the changes."