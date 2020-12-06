# What is EQSwapper?

EQ Swapper uses Equalizer APO to equalize all audio output by Windows.
[Equalizer APO](https://sourceforge.net/projects/equalizerapo/) is required for this.
You can either manually change the equalizer settings via the GUI, but I am to lazy.

#Usage
[Jaakkopasanen AutoEQ](https://github.com/jaakkopasanen/AutoEq/tree/master/results) made a list of headphones

## Download the Equalizer file for your headphones

Choose the ParametricEQ.TXT
[For Example:](https://github.com/jaakkopasanen/AutoEq/tree/master/results/oratory1990/harman_in-ear_2019v2/1MORE%20Quad%20Driver)
![jaakkopasanen](2020-12-06 16_36_18-AutoEq_results_oratory1990_harman_in-ear_2019v2_1MORE Quad Driver at master · ja.png)

## Save the EQ file

Save the ParametricEQ.TXT file to "C:\Program Files\EqualizerAPO\config\headphones\" [^1]

[^1]:
    This path can be changed in the script line 3:
    `$headphonesPath = "C:\Program Files\EqualizerAPO\config\headphones\"`

## When swapping headphones

Run the script and select the currently connected headphones
![Jaakkopasanen](examples/2020-12-06 16_35_02-EQSwapper.ps1 - Shortcut.png)
