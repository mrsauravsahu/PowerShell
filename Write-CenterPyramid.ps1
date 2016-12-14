<#
    .DESCRIPTION
        Writes a center aligned pyramid to the Console
    .NOTES
        Author: Saurav Sahu
        Date:   December 9, 2016
#>
function Write-CenterPyramid {
    Param (
        [Parameter(Mandatory=$true)][UInt32]$Lines,
        [Parameter(Mandatory=$false)][Char]$Pattern = '*'
    )
    
    function Write-Spaces($Length) {
        for ($i = 0; $i -lt $Length; $i++) {
            Write-Host ' ' -NoNewline
        }
    }

    function Write-Chars($char, $Length) {
        for ($i = 0; $i -lt $Length; $i++) {
            Write-Host $char -NoNewline
        }
    }

    $spacesWidth = [UInt32] [Math]::Floor((((2 * $Lines) - 1) / 2))
    $charsWidth = 1
    for ($i = 0; $i -lt $Lines; $i++) {
        Write-Spaces $spacesWidth
        Write-Chars $Pattern ($charsWidth)
        Write-Spaces $spacesWidth

        $spacesWidth--
        $charsWidth += 2
        Write-Host ''
    }
}