<#
    .DESCRIPTION
        Writes a right justified pyramid to the Console
    .NOTES
        Author: Saurav Sahu
        Date:   December 9, 2016
#>
function Write-RightPyramid {
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