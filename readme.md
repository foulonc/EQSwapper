# What is EQSwapper?

EQ Swapper uses Equalizer APO to equalize all audio output by Windows.
[Equalizer APO](https://sourceforge.net/projects/equalizerapo/) is required for this.
You can either manually change the equalizer settings via the GUI, but I am to lazy.

#Usage
[Jaakkopasanen AutoEQ](https://github.com/jaakkopasanen/AutoEq/tree/master/results) made a list of headphones

## Download the Equalizer file for your headphones

Choose the ParametricEQ.TXT
[For Example:](https://github.com/jaakkopasanen/AutoEq/tree/master/results/oratory1990/harman_in-ear_2019v2/1MORE%20Quad%20Driver)
![jaakkopasanen](https://ibb.co/hHg1zhm)

## Save the EQ file

Save the ParametricEQ.TXT file to "C:\Program Files\EqualizerAPO\config\headphones\" [^1]

[^1]:
    This path can be changed in the script line 3:
    `$headphonesPath = "C:\Program Files\EqualizerAPO\config\headphones\"`

## When swapping headphones

Run the script and select the currently connected headphones
![Jaakkopasanen](https://ibb.co/drJMQcq)
