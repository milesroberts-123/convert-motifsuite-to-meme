# convert-motifsuite-to-meme
Use regular expressions to convert the PWM-format used by MotifSuite to MEME motif format.

[MotifSuite](http://bioinformatics.intec.ugent.be/MotifSuite/Index.htm) is an excellent motif discovery tool for DNA sequences. Some of it's programs, like FuzzyClustering and MotifSampler, output motifs in a position-weight-matrix format described [here](http://bioinformatics.intec.ugent.be/MotifSuite/pwmformat.php). This script will allow anyone to convert a file containing one or more of these matricies into the [MEME motif format](http://meme-suite.org/doc/meme-format.html?man_type=web), allowing for easy exchanges between both MotifSuite and MEME suite tools.

## USAGE

This script has two required arguments -i and -o. -i denotes the name of the input file containing the PWM-formatted matricies output by a MotifSuite tool

`./pwm_to_meme.bash -i example_motifs.txt -o example_motifs.meme`
