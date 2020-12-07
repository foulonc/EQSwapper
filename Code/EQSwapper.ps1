### Define parameters
$destinationPath = "C:\Program Files\EqualizerAPO\config\config.txt"
$headphonesPath = "C:\Program Files\EqualizerAPO\config\headphones\"
$headphones = ""
$connectedHeadphone = ""
$answer = ""

function get-headphones {
    ### Retrieve list of all known headphones
    $headphones = @(Get-ChildItem -Path $headphonesPath -Name)
    # for ($count = 0; $count -lt $headphones.Length; $count++ ) {
    #     Write-Host ("{0}: {1}" -f $Count, $headphones[$count].split('.')[-2])
    # }
    # Write-Host `n "Type `"q`" to quit"
    return $headphones
}


function get-connected-headphone {
    ### Ask what headphones are used
    $answer = Read-Host "What headphones are plugged in?"
    if ($answer -eq "q") {
        exit
    }
    $connectedHeadphone = $headphones[$answer]
    return $connectedHeadphone
}

function set-headphone {
    Param(
        [String]
        $answer
    )
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
}


