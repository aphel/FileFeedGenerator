# FileFeedGenerator Notes
I use this file to document how different features and functions are implemented and for a little bit of brainstorming.

## Build Script


## Function (Cmdlet) Breakdown
There is virtually no code has been written when I am writing this section. I am just trying to work out what the skeleton of the Powershell module (first iteration) would be like.

### Update-Feed
The main entry point into the module functionality. By default it iterates through all the folders under the current path and generates feed for the chosen file type (by default it is *.mp3).
