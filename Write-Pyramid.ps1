function Write-LeftPyramid {
    <#
    .DESCRIPTION
        Writes a left justified pyramid to the Console
    .NOTES
        Author: Saurav Sahu
        Date:   December 9, 2016    
    #>
    Param (
        [Parameter(Mandatory=$true)][UInt32]$Lines,
        [Parameter(Mandatory=$false)][String]$Pattern='*'
    )
    for ($i = 1; $i -le $Lines; $i++) {
        for ($j = 0; $j -lt $i; $j++) {
            Write-Host $Pattern -NoNewline
        }
        Write-Host ''
    }
}

function Write-RightPyramid {
    <#
    .DESCRIPTION
        Writes a right justified pyramid to the Console
    .NOTES
        Author: Saurav Sahu
        Date:   December 9, 2016
    #>
    Param (
        [Parameter(Mandatory=$true)][UInt32] $Lines,
        [Parameter(Mandatory=$false)][String]$Pattern = '*'
    )
    for ($i = 1; $i -le $Lines; $i++) {
        for ($j = 0; $j -lt ($Lines - $i); $j++) {
            Write-Host ' ' -NoNewline
        }
        for ($k = 0; $k -lt $i; $k++) {
            Write-Host $Pattern -NoNewline
        }
        Write-Host ''
    }
}

function Write-CenterPyramid {
    <#
    .DESCRIPTION
        Writes a center aligned pyramid to the Console
    .NOTES
        Author: Saurav Sahu
        Date:   December 9, 2016
    #>
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