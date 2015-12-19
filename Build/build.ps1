function Start-TestShell {
    powershell.exe -NoExit -NoProfile `
    -Command {
        # Import the module and verify it is imported
        Import-Module .\FileFeedGenerator
        Get-Module FileFeedGenerator

        Update-Feed -Path .\poc

        function prompt {
            Write-Host -NoNewline `
                -ForegroundColor 'Red' `
                "$($pwd.Path.Substring($pwd.Path.LastIndexOf('\'))) TEST";
            return '> '
        }
    }
}

Start-TestShell