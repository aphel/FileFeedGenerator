<#
    My Function
#>

function Update-Feed {
  [CmdletBinding()]
  param([ValidateScript({
          # Normalize path to absolute path
          $_ = [IO.Path]::GetFullPath($_)

          if (-not (Test-Path -PathType 'Container' $_)) {
            throw "Path '${_}' does not exist or it in not a directory. Please provide a correct path `
            or omit this parameter in order to use your current location."
          }
          $true
    })]

    [string]$Path = (Get-Location)
  )
  
  begin {
    Write-Output "Update feeds for directory: $Path"
  }
  
  process {
    # get directories containing audio files
    $mp3Directories = Get-ChildItem $Path -Directory |
      Where-Object { (Get-ChildItem -Path $_.FullName -Filter '*.mp3').Length -gt 0 }
    
    #Write-Host 'Generate RSS stream for the following podcast: ' + $mp3Directories.PSChildName
  }
  
  end {}
}

