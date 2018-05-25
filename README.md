# siggen tools on Pi Boards

**How to properly install and operate siggen on Pi boards (NanoPi, Raspberry Pi ..) ?**

siggen debian package is a set of tools for imitating a laboratory Signal Generator, generating audio signals out of Linux's /dev/dsp audio device. There is support for mono and/or stereo and 8 or 16 bit samples. The tools include:

* soundinfo: display some of the programming capabilities of the
sound system support for the mixer device /dev/mixer and the DSP device. Also shows some of the ioctl calls in action.

* signalgen: a command line signal generator where details are specified
from the command line for generating sine, cos, square, triangle, sawtooth, pulse, noise waves. Frequency, sample rate, relative amplitude etc. can be specified through command line options. The signal is played continuously until the program is stopped. There are options to save the basic raw digital samples raw to file or to a WAVE format file.

* swgen: a command line sweep generator. Both the sweeping and
swept waveforms can be specified, along with the sweeping frequency and the swept frequency range. Otherwise similar to sgen above.

* siggen: an Ncurses screen based Signal Generator for two separate
channels. On stereo audio cards the two channels are played on separate outputs. On mono cards the two channels are digitally mixed onto the one output. Type of waveform, frequency, amplitude, sample rate etc are specified/changed via a screen menu. It plays continuously. Changes to parameters take effect nearly immediately.

![siggen](https://raw.githubusercontent.com/epsilonrt/siggen-onpi/master/images/siggen.png)

* sweepgen: an Ncurses screen based Sweep generator (see swgen and
siggen above).

![sweepgen](https://raw.githubusercontent.com/epsilonrt/siggen-onpi/master/images/sweepgen.png)

* tones: a command line program to generate several successive tones
of varying frequency, and optional differing waveforms, durations and intensities. The sequence of tones can be either played once, or repetitively or the samples can be written to a file in raw or WAV format. This could make the basis of an auto-dialer for tone phones.

* smix: a simple command line program for getting and setting the
mixer settings.

* fsynth: an Ncurses based fourier synthesis realtime generator.

![fsynth](https://raw.githubusercontent.com/epsilonrt/siggen-onpi/master/images/fsynth.png)

## What is the problem ?

But if you try to run one of these programs on NanoPi you will get the following message 

    $ siggen
    [siggen] No such file or directory : /dev/dsp

:-(

## Solution 

from <https://wiki.debian.org/SoundFAQ> (Q: How to enable ALSA OSS emulation?)

    sudo apt-get install siggen alsa-oss
    git clone git@github.com:epsilonrt/siggen-onpi.git
    cd siggen-onpi
    sudo make install
