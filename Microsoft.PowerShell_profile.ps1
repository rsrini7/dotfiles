Import-Module -Name Terminal-Icons
Import-Module posh-git

oh-my-posh init pwsh | Invoke-Expression

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
#Set-PSReadLineOption -PredictionViewStyle ListView

# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Env
$env:GIT_SSH = "C:\Windows\system32\OpenSSH\ssh.exe"

Remove-Alias ls
Set-Alias ls lsd
Set-Alias whr where.exe
#Set-Alias which Get-Command
Set-Alias u ubuntu
Set-Alias g git
Set-Alias grep findstr
Set-Alias vim nvim
Set-Alias vi nvim
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'


# Utilities
function ws {set-location C:\Users\Srini\ws}

function gcode {
  $url = $args[0]
  $folder = Split-Path $url -Leaf
  $folder = $folder -replace ".git"
  if(Test-Path $folder){
	Write-Output "Opening existing folder"
	code $folder
  }else{
	git clone $url && code $folder
  }
}

function sd {
  $path = 'C:\Users\rsrin\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json'
   ((Get-Content -path $path) -replace '"startingDirectory":.*', ("`"startingDirectory`": `"$pwd`"") -replace "\\", "\\") | Set-Content -Path $path
}

function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

function docmd { cmd /c $args }
function ll { & ls -ltr }
function la { & ls -ltra }
