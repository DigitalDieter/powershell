# Powershell scripts


Collection of useful Powershell Code-Snippets and Scripts.

![](header.png)

## Installation


Linux:
```bash
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb

sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get update
sudo add-apt-repository universe

sudo apt-get install -y powershell
pwsh
```

OS X:
```bash
brew cask install powershell
pwsh
```


```bash
python -m pip install -r requirements.txt

```

Windows:

```sh
edit autoexec.bat
```

## Usage example

```bash
# clone repository
git clone https://github.com/DigitalDieter/powershell.git
# change directory to repository
cd powershell
# execute powershell
pwsh
# inside powershell PS >  ./berliner_wetter.ps1 
./berliner_wetter.ps1 
# for exiting powershell
exit
```
