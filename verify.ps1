# Verification Script for Portfolio Enhancements (verify.ps1)
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
if ($html -notmatch 'you can call me.*Rooo') {
    Write-Error "FAIL: index.html missing requested 'Rooo' moniker."
    exit 1
}

if ($html -notmatch 'id="about"' -or $html -notmatch 'id="projects"' -or $html -notmatch 'id="contact"') {
    Write-Error "FAIL: Required section IDs missing from index.html."
    exit 1
}

Write-Host "PASS: All portfolio assets, moniker 'Rooo', and semantic structure verified successfully."
exit 0
