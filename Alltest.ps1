$prg = "hello.ps1"

foreach ($file in (Get-Childitem solution*.psi)) {
    Write-Host -ForegroundColor Yellow "Testing $(Split-Path -Leaf $file)"
    Remove-Item $prg -ErrorAction SilentlyContinue
    Copy-Item $file $prg
    Invoke-Pester .\test.ps1 -Output Detailed
    ""
}