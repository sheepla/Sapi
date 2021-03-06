# ð¢ Sapi
 
<div align="right">
    <img src="https://img.shields.io/static/v1?label=Language&message=PowerShell&color=blue&style=flat-square"/>
    <img src="https://img.shields.io/static/v1?label=License&message=MIT&color=blue&style=flat-square"/>
</div>

`Sapi` is a PowerShell module wrapper of Microsoft Speech API (SAPI).

## Features

- Speak any text from PowerShell command line
- Working on plain Windows without any libraries

## Environment

- OS: Supports only Windows, Testing on Windows 10
- PowerShell: Testing on Window PowerShell 5.1 and PowerShell Core 7.0.3

## Usage

### Syntax

```powershell
Invoke-Sapi [-Text] <string> [-Rate <int>] [-Volume <int>] [<CommonParameters>]
```

### Examples

```powershell
Invoke-Sapi -Text "Windowsã§ã³ã³ãã¥ã¼ã¿ã¼ã®ä¸çãåºããã¾ãã"
"Windowsã§ã³ã³ãã¥ã¼ã¿ã¼ã®ä¸çãåºããã¾ãã" | Invoke-Sapi      # from pipeline input
say "Windowsã§ã³ã³ãã¥ã¼ã¿ã¼ã®ä¸çãåºããã¾ãã"                # use alias
```

## Installation

```powershell
# cd to module root dir
cd ~/Documents/PowerShell/Modules        # PowerShell Core
cd ~/Documents/WindowsPowerShell/Modules # Windows PowerShell

# Clone this repository.
git clone https://github.com/sheepla/Sapi.git

# Import this module
Import-Module Sapi
```

If you want to import automatically, append this line to your `$PROFILE` file.

```powershell
Import-Module Sapi
```

## One Liner Edition

```powershell
(New-Object -Com Sapi.SpVoice).Speak("Windowsã§ã³ã³ãã¥ã¼ã¿ã¼ã®ä¸çãåºããã¾ãã")
```
