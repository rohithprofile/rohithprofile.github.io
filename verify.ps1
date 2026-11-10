# Verification Script for Portfolio Deployment (verify.ps1)
$ErrorActionPreference = "Stop"

$requiredFiles = @(
    "index.html",
    "style.css",
    "main.js",
    "ocean.js",
    "proof.js",
    "assets/Maheshwaram_Rohith_Resume.pdf"
)

foreach ($file in $requiredFiles) {
    $fullPath = Join-Path $PSScriptRoot $file
    if (-not (Test-Path $fullPath)) {
        Write-Error "FAIL: Required file missing: $file"
        exit 1
    }
}

$html = Get-Content (Join-Path $PSScriptRoot "index.html") -Raw
if ($html -notmatch "<title>Rohith Maheshwaram</title>") {
    Write-Error "FAIL: index.html missing expected title tag."
    exit 1
}

Write-Host "PASS: All portfolio assets and HTML entry points verified successfully."
exit 0
