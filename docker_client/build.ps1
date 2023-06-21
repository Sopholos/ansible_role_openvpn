#!/usr/bin/pwsh
param(
    [parameter(Mandatory=$true)][string]$name
)

$ErrorActionPreference = "Stop"

$scriptDir = Split-Path $PSCommandPath

Set-Location $scriptDir

# docker build -t openvpn-client .
docker build -t $name .

if ($LASTEXITCODE -ne 0) { throw "docker build exited with code $LASTEXITCODE." }