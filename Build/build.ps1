function Start-TestShell {
    powershell.exe -NoExit -NoProfile `
    -Command {
        Import-Module .\FileFeedGenerator
        function prompt {
            Write-Host -NoNewline `
                -ForegroundColor 'Red' `
                "$($pwd.Path.Substring($pwd.Path.LastIndexOf('\'))) TEST";
            return '> '
        }
    }
}

Start-TestShell