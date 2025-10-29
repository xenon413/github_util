# Remove all GitHub credentials from Windows Credential Manager
# used when swiching github account in vscode if didn't set up

$credentials = cmdkey /list | Select-String "git:https://github.com"

foreach ($cred in $credentials) {
    $target = ($cred -split ": ")[1]
    Write-Host "Deleting credential for $target..."
    cmdkey /delete:$target
}