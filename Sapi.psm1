
function Invoke-Sapi
{
    param
    (
        [Parameter(ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$false, Position=1, Mandatory=$true)]
        [String] $Text,

        [Parameter(ValueFromPipeline=$false, ValueFromPipelineByPropertyName=$false, Mandatory=$false)]
        [Int32] $Rate = 0,

        [Parameter(ValueFromPipeline=$false, ValueFromPipelineByPropertyName=$false, Mandatory=$false)]
        [Int32] $Volume = 100
    )

    $sapi = New-Object -ComObject "Sapi.SpVoice"
    $sapi.Rate = $Rate
    $sapi.Volume = $Volume
    $sapi.Speak($Text) | Out-Null
}

#function Save-SapiVoice
#{
#    param
#    (
#        [Parameter(ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$false, Mandatory=$true, Position=1)]
#        [String] $Text,
#
#        [Parameter(ValueFromPipeline=$false, ValueFromPipelineByPropertyName=$false, Mandatory=$true, Position=2)]
#        [String] $Path,
#
#        [Parameter(ValueFromPipeline=$false, ValueFromPipelineByPropertyName=$false, Mandatory=$false)]
#        [Int32] $Rate = 0,
#
#        [Parameter(ValueFromPipeline=$false, ValueFromPipelineByPropertyName=$false, Mandatory=$false)]
#        [Int32] $Volume = 100
#    )
#
#    $sapi = New-Object -ComObject "Sapi.SpVoice"
#    $stream = New-Object -ComObject "Sapi.SpFileStream"
#
#    $sapi.Rate = $Rate
#    $sapi.Volume = $Volume
#    $sapi.AudioOutputStream = $stream
#
#    $stream.Open($Path, 3)
#    $sapi.Speak($Text)
#
#    $stream.Close
#}

Set-Alias -Name say -Value Invoke-Sapi
