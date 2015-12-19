<#
	My Function
#>

function Update-Feed {
	[CmdletBinding()]
	param(
		[ValidateScript({
			# Normalize path to absolute path
			$_ = [IO.Path]::GetFullPath($_)

			if (-not (Test-Path -PathType 'Container' $_)) {
				throw "Path '${_}' does not exist or it in not a directory. Please provide a correct path or omit this parameter in order to use your current location."
			}
			$true
		})]
		[string]$Path = (Get-Location)
	)
	Write-Output "Update feeds for directory: $Path"
}