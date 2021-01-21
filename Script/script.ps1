Get-ChildItem -Path $PSScriptRoot
Write-Host "hello"
[string[]]$fileContent = Get-Content "..\microsoft.yml"
$content = ''
foreach ($line in $fileContent) { $content = $content + "`n" + $line }
$yaml = ConvertFrom-YAML $content
Write-Host ("Account name is " + $yaml.ghaeconfig.accountName + ". Location is " + $yaml.ghaeconfig.location + ". Email is " + $yaml.ghaeconfig.email + ". UserName is " + $yaml.ghaeconfig.userName)
