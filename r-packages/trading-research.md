Core R
------

Install latest R from the CRAN repository. In Ubuntu run
```
echo "deb http://stat.ethz.ch/CRAN/bin/linux/ubuntu/ `lsb_release -c -s`"
```
and make sure this line is in `/etc/apt/sources.list`

Packages
--------

We need the following packages:

  + zoo, xts, foreach
  + TTR
  + PerfomanceAnalytics
  + FinancialInstrument
  + quantmod
  + quantstrat
  + blotter
  + rmarkdown
  + devtools
  + ggplot2

## Basic packages
```
install.packages(c("zoo", "xts"))
install.packages(c("foreach", "ggplot2"))
install.packages(c("knitr", "rmarkdown"))
install.packages(c("devtools"))

install.packages(c("FinancialInstrument", "TTR", "quantmod"))
install.packages(c("blotter", "quantstrat", "xtsExtra"), repos="http://R-Forge.R-project.org")

install.packages(c("RCurl")) # merge.list
install.packages(c("RUnit"))
```

## Installation with Devtools

Once `devtools` are installed one can do
```
devtools::install_github("hadley/lineprof")
```

## Manual Installation

If a package is not available otherwise or a development version is
required one install the packages.

For instance, to install `quantmod` run the following in the shell
```
git clone https://github.com/joshuaulrich/quantmod.git
R CMD INSTALL quantmod
```
