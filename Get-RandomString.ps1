<#
.Synopsis
   Returns a random String.
.DESCRIPTION
   Returns a random string consisting of uppercase alphabets. If paramter 'Length' is provided, a string of that length is returned, else, a length is randomly chosen in the range of 0 to 999 (inclusive) is chosen.
.EXAMPLE
   > Get-RandomString
   UUERIEVJIVJDSIVJSDOVJ
   A random string is returned of length in the range 0, 999.
.EXAMPLE
   > Get-RandomString 10
   VNSLRUGPSI
   A random string is returned consisting of 10 Uppercase characters
#>
function Get-RandomString
{
    [CmdletBinding()]
    Param
    (
        # Param1 help description
        [Parameter(Mandatory=$false,
                   ValueFromPipeline=$true,
                   Position=0)]
                   [System.UInt32]$Length = [System.UInt32]((New-Object System.Random).Next(1000))
    )

    $random = New-Object System.Random
    $string = ''
    1..$Length | ForEach-Object { $string += ([System.Char]((65) + $random.Next(26))).ToString() }
    return $string

}