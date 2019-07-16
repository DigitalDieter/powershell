[![Build Status](https://dev.azure.com/devops-michael/pwsh_tester/_apis/build/status/pwsh_tester?branchName=master)](https://dev.azure.com/devops-michael/pwsh_tester/_build/latest?definitionId=1&branchName=master)

# Powershell scripts

On this repository, you can find useful Powershell Code-Snippets and Scripts. As well as the installation instructions for PowerShell 6.2.1 core on Linux and Mac OS.

## Installation


Linux:
```bash
# download packages-microsoft-prod.deb
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb

# install packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

# apt update
sudo apt-get update

# install software-properties-common (add-apt-repository)
sudo apt install -y software-properties-common

# add repository universe
sudo add-apt-repository universe

# install Powershell
sudo apt-get install -y powershell

# execute powershell
pwsh
```

OS X:
```bash
# install powershell
brew cask install powershell

# execute powershell
pwsh
```


Windows:

Windows commes with pre-installed powershell
```bash
# run the following command to show installed version
Get-Host
```

## Usage example

```bash
# clone repository
git clone https://github.com/DigitalDieter/powershell.git

# change directory to repository
cd powershell

# execute powershell
pwsh
```

```bash
# inside windows powershell
PS C:\> ./berliner_wetter.ps1
PS C:\> exit
```

```bash
# inside linux, mac os powershell
PS > ./berliner_wetter.ps1
PS > exit
```
