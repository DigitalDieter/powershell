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

# inside powershell PS >  ./berliner_wetter.ps1 
./berliner_wetter.ps1 

# for exiting powershell
exit
```

```pwsh
./berliner_wetter.ps1 
```


#####
<code></code><code>PowerShell
&lt;#
.Synopsis
   Short description
.DESCRIPTION
   Long description
.EXAMPLE
   Example of how to use this cmdlet
.EXAMPLE
   Another example of how to use this cmdlet
#&gt;
function Verb-Noun
{
    [CmdletBinding()]

    [OutputType([int])]

    Param
    (
        # Param1 help description
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        $Param1,

        # Param2 help description
        [int]
        $Param2
    )

    Begin
    {
    }

    Process
    {
    }

    End
    {
    }
}
</code><code></code>

PS C:\> New-AwesomeCommand -With -All -Arguments
