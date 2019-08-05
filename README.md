[![Build Status](https://dev.azure.com/devops-michael/pwsh_tester/_apis/build/status/pwsh_tester?branchName=master)](https://dev.azure.com/devops-michael/pwsh_tester/_build/latest?definitionId=1&branchName=master)

# Powershell scripts

On this repository, you can find useful Powershell Code-Snippets and Scripts. As well as the installation instructions for PowerShell 6.2.1 core on Linux and Mac OS.

## Installation


Linux:
```bash
# Download packages-microsoft-prod.deb
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb

# Install packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

# Apt update
sudo apt-get update

# Install software-properties-common (add-apt-repository)
sudo apt install -y software-properties-common

# Add repository universe
sudo add-apt-repository universe

# Install Powershell
sudo apt-get install -y powershell

# Execute powershell
pwsh
```

OS X:
```bash
# install powershell
brew cask install powershell

# Execute powershell
pwsh
```


Windows:

Windows comes with pre-installed powershell
```bash
# Run the following command to show installed version
Get-Host
```

## Usage example

```bash
# Clone repository
git clone https://github.com/DigitalDieter/powershell.git

# Change directory to repository
cd powershell

# Execute powershell
pwsh
```

```bash
# Inside windows powershell
PS C:\> ./berliner_wetter.ps1
PS C:\> exit
```

```bash
# Inside linux, mac os powershell
PS > ./berliner_wetter.ps1
PS > exit
```
