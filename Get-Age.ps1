<#
    .DESCRIPTION
        Calculates a Person's Age with the provided Birth Date
    .NOTES
        Author: Saurav Sahu
        Date:   January 19, 2017
#>
function Get-Age {
    Param (
        [Parameter(Mandatory=$true)][DateTime]$BirthDate
    )

    $today = [DateTime]::Now
    $age = [DateTime] ($today - $BirthDate).Ticks
    return $age.Year
}