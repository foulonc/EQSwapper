### Define parameters
$destinationPath = "C:\Program Files\EqualizerAPO\config\config.txt"
$headphonesPath = "C:\Program Files\EqualizerAPO\config\headphones\"
$headphones = ""

function get-headphones {
    ### Retrieve list of all known headphones
    $headphones = @(Get-ChildItem -Path $headphonesPath -Name)
    return $headphones
}
function set-headphone {
    Param(
        [String]
        $selectedHeadphone
    )
    $sourcePath = Join-Path -Path $headphonesPath -ChildPath $selectedHeadphone
    try { 
        ### copy selected headphone file to "C:\Program Files\EqualizerAPO\config\config.txt"
        Write-Host "copying " $sourcePath " to " $destinationPath
        Copy-Item $sourcePath -Destination $destinationPath
        Write-Host $selectedHeadphone "EQ used."
        start-sleep -s 1
    }
    catch {
        Write-Host "An error occurred:"
        Write-Host $_
    }
}


