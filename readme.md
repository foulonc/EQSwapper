# What is EQSwapper?

EQ Swapper uses Equalizer APO to equalize all audio output by Windows.
[Equalizer APO](https://sourceforge.net/projects/equalizerapo/) is required for this.
You can either manually change the equalizer settings via the GUI, but I am to lazy.

#Usage
[Jaakkopasanen AutoEQ](https://github.com/jaakkopasanen/AutoEq/tree/master/results) made a list of headphones

## Download the Equalizer file for your headphones

Choose the ParametricEQ.TXT
[For Example](https://github.com/jaakkopasanen/AutoEq/tree/master/results/oratory1990/harman_in-ear_2019v2/1MORE%20Quad%20Driver)
![jaakkopasanen](https://i.ibb.co/J2cFJ0s/2020-12-06-16-36-18-Auto-Eq-results-oratory1990-harman-in-ear-2019v2-1-MORE-Quad-Driver-at-master-ja.png 'Download Headphone EQ setting')

## Save the EQ file

Save the ParametricEQ.TXT file to "C:\Program Files\EqualizerAPO\config\headphones\" [^1]

[^1]:
    This path can be changed in the script line 3:
    `$headphonesPath = "C:\Program Files\EqualizerAPO\config\headphones\"`

## When swapping headphones

Run the script and select the currently connected headphones

![Jaakkopasanen](https://i.ibb.co/NsnCL3P/2020-12-06-16-35-02-EQSwapper-ps1-Shortcut.png 'Select headphone')

### to build an exe

simply copy paste EQSwapper.ps1 and CreateForm.ps1 in 1 file: combined.ps1
run [PS2EXE](https://github.com/MScholtes/PS2EXE) to create an EXE
`Invoke-PS2EXE .\combined.ps1 .\EQSwapper.exe`
