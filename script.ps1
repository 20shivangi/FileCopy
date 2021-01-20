[string[]]$fileContent = Get-Content "$PSScriptRoot\sample.yml"
$content = ''
foreach ($line in $fileContent) { $content = $content + "`n" + $line }
$yaml = ConvertFrom-YAML $content
Write-Host ("Account name is " + $yaml.ghaeconfig.account + ". Location is " + $yaml.ghaeconfig.location + ". Instance size is " + $yaml.ghaeconfig.instanceSize + ". Ring is " + $yaml.ghaeconfig.ring)
