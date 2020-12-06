### Define parameters
$destinationPath = "C:\Program Files\EqualizerAPO\config\config.txt"
$headphonesPath = "C:\Program Files\EqualizerAPO\config\headphones\"

do {
    ### Retrieve list of all known headphones
    [System.Console]::Clear()
    $headphones = Get-ChildItem -Path $headphonesPath -Name
    for ($count = 0; $count -lt $headphones.Length; $count++ ) {
        Write-Host $count":" $headphones[$count]
    }
    Write-Host `n "Type `"q`" to quit"

    ### Ask what headphones are used
    $usedHeadphones = Read-Host "What headphones are plugged in?"
    if ($usedHeadphones -eq "q") {
        exit
    }
    $connectedHeadphone = $headphones[$usedHeadphones]

    ### copy selected headphone file to "C:\Program Files\EqualizerAPO\config\config.txt"
    $sourcePath = Join-Path -Path $headphonesPath -ChildPath $connectedHeadphone
    
    try { 
        Copy-Item $sourcePath -Destination $destinationPath
        Write-Host $connectedHeadphone "EQ used."
        start-sleep -s 1
    }
    catch {
        Write-Host "An error occurred:"
        Write-Host $_
    }
 

}while ($usedHeadphones -ne "q")


