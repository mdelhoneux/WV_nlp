# WV NLP Project

## Introduction

Doing an NLP project for the WV course comes with a set of specific
challenges and this wiki is an attempt at helping you meet these
challenges. It is a living document which I plan to update through the
year and for future editions of the course. Your feedback on it is
always appreciated! You can open an issue in this repository or send me an email. 
Let's make this project as enjoyable as possible for everyone involved!

## Literature

Your topic descriptions contain key references that will give you an
idea of what the project will be about, identifying the current
state-of-the-art and finding what research questions you can ask about
it based on it. They are essential readings for your *literatuurstudie*
as well as for the *probleemstelling*. Since this is most likely your
first encounter with Natural Language Processing, they will likely not
be easy to read without doing some background reading first. For this, I
recommend the [Jurafsky and Martin textbook](https://web.stanford.edu/~jurafsky/slp3/). The chapters most
likely to be of use to you are:

* [Chapter 7](https://web.stanford.edu/~jurafsky/slp3/7.pdf): Neural Networks and Neural Language Models
* [Chapter 8](https://web.stanford.edu/~jurafsky/slp3/8.pdf): (only up to 8.3) Sequence Labeling for Parts of Speech and Named Entities (if your focus will be on POS tagging or NER)
* [Chapter 10](https://web.stanford.edu/~jurafsky/slp3/10.pdf): Transformers and Pretrained Language Models
* [Chapter 11](https://web.stanford.edu/~jurafsky/slp3/11.pdf): Fine-tuning and Masked Language Models

Complementary readings for where that textbook may be unclear:

*   [Neural networks for NLP by Yoav Goldberg](https://u.cs.biu.ac.il/~yogo/nnlp.pdf) (this is very long so there is no need to go through it all but it can clarify parts that are unclear in the textbook)
*   [The illustrated transformer by Jay Alammar](https://jalammar.github.io/illustrated-transformer/)

These are a whole lot of pages and you don't need to read them in
detail. Just try to skim them so that you can make sense of the other
readings.

## Tools

If you are working with [Universal Dependencies](https://universaldependencies.org), if you would like to
first get acquainted with the task, you might want to first try using
[Stanza](https://stanfordnlp.github.io/stanza/). It is a tool relatively
easy to use and can get you started knowing what input files and output
files should look like, what results you can expect from baseline
models, etc. It is not trivial to modify or configure however. For
experiments, with Universal Dependencies or other tasks, I tend to
recommend [MaChAmp](https://github.com/machamp-nlp/machamp), a tool that
is configurable with config files in the *json* format. More info on [this page](docs/machamp.md).
Both Kushal and me have experience working with this tool so don't hesitate to ask for our
help.

MaChAmp, as well as pretty much all current alternative state-of-the-art
NLP tools, work with large transformer models which are difficult to fit
on CPUs. I do not recommend running these models on your laptop (except
maybe for debugging purposes). Rather, I recommend to use the [flemish supercomputer](https://www.vscentrum.be/user-portal). The first thing to
do is to request an account (see linked page). This will ask you why you
need it and I may need to approve it but normally if you just say that
you need it for a course project that requires you to use large
transformers, this will be automatic. Give my name if they want to ask
me for further details.

Once you have an account you can look at how to use it by clicking on
the [user documentation page](https://docs.vscentrum.be/). This page
assumes some knowledge that you might not have so it is easy to get lost
at this point. **Do not let yourself get stuck - it is easy to waste a lot of time here**. Ask for help! To me or to Kushal who is more familiar with the cluster than me.

You login to the cluster via [ssh](https://www.openssh.com/). The user documentation has information about how to do that, depending on your OS.
If you run Windows, you will need to download [PuTTY](https://www.putty.org/). Note that PuTTY is a bit of a pain and doing this from Linux or macOS would make your life easier.

Then you need to install software. The best way to do this is via a
[conda](https://conda.io/projects/conda/en/latest/index.html) environment. Again, the user documentation explains how to do this [here](https://docs.vscentrum.be/software/python_package_management.html#install-python-packages-using-conda)

Finally you will need to run jobs through [slurm](https://slurm.schedmd.com/documentation.html) scripts. Information on how to do that is [here](https://docs.vscentrum.be/jobs/running_jobs.html). Example script [here](source/slurm_example.sh).

## Timeline

The official timeline only requires you to do the *literatuurstudie*
(October/November) and the *probleemstelling* (November/December) in the
first semester. This means that there is no strict requirement to get
started with code/implementations. However, due to the nature of the
work, you can expect to need more than a month to get your first
experiment running as there are several tools you need to learn to use
(ssh/conda/slurm/machamp). Once you have your first experiment run, you
should be able to run many more and that's where it gets interesting. In
March, you are expected to do a poster presentation and this requires
presenting preliminary results. It can be difficult to meet this
deadline if you start trying to run code at the beginning of the second
semester. I recommend having as a goal to have one experiment run by
mid-December, before you start studying for exams. I therefore recommend
to start with this mid-November, in parallel with the
*probleemstelling*.

Overall, this is my suggested timeline:
* October: read the textbook and papers and work on the *literatuurstudie*
* November: 
    * read the papers and find other related papers, identify research questions for the *probleemstelling*
    * Get a VSC account
    * Figure out how to login to your VSC account
    * Install software you need
* December:
    * Finalize and present the *probleemstelling*
    * Work out how to run an experiment with slurm
* January:
    * I expect you are busy with exams here
* February:
    * Get baseline experiments
    * Work on the poster
* March:
    * More experiments, hopefully ones that answer your research questions now
* April:
    * Final presentation.
    * Further experiments if needed
* May:
    * Paper + reviewing others papers + revising final version of your paper after getting reviews on your own
