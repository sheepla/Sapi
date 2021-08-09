# 📢 Sapi
 
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
Invoke-Sapi -Text "Windowsでコンピューターの世界が広がります。"
"Windowsでコンピューターの世界が広がります。" | Invoke-Sapi      # from pipeline input
say "Windowsでコンピューターの世界が広がります。"                # use alias
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
(New-Object -Com Sapi.SpVoice).Speak("Windowsでコンピューターの世界が広がります。")
```
