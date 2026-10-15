$ErrorActionPreference = 'Stop'

$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$exe = Join-Path $root 'app\ChatGPT.exe'
$dataRoot = Join-Path $root 'Data'
$browserProfile = Join-Path $dataRoot 'browser-profile'
$codexHome = Join-Path $dataRoot 'codex-home'

if (-not [Environment]::Is64BitOperatingSystem -or $env:PROCESSOR_ARCHITECTURE -ne 'AMD64') {
    throw '此包仅适用于 x64 Windows。'
}

$build = [int](Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion').CurrentBuildNumber
if ($build -lt 19045) {
    throw "需要 Windows 10 22H2（内部版本 19045）或更高版本；当前为 $build。"
}

if (-not (Test-Path -LiteralPath $exe -PathType Leaf)) {
    throw "缺少程序文件：$exe"
}

New-Item -ItemType Directory -Path $browserProfile, $codexHome -Force | Out-Null
$env:CODEX_HOME = $codexHome

Start-Process -FilePath $exe -WorkingDirectory (Split-Path -Parent $exe) -ArgumentList @("--user-data-dir=`"$browserProfile`"")
Write-Host "已启动 ChatGPT。数据目录：$dataRoot"
