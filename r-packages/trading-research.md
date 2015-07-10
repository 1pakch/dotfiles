Core R
------

Install latest R from the CRAN repository
http://stat.ethz.ch/CRAN/bin/linux/ubuntu/

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
install.packages(c("zoo", "xts", "foreach", "ggplot2", "devtools", "rmarkdown"))
```

## Installation with Devtools

Install `zoo`, `xts`, `foreach` Then install `devtools`. Then
```
devtools::install_github("joshuaulrich/TTR")
devtools::install_github("joshuaulrich/quantmod")
devtools::install_github("R-Finance/PortfolioAnalytics")
pkgs = paste("pkg/", c("FinancialInstrument", "blotter", "quantstrat"), sep="")
lapply(pkgs,
    function (pkg) {devtools::install_github("rforge/blotter", subdir=pkg)}
)
```

## Manual Installation

If they cannot be installed via `install.packages()` one can build from source.

For instance, to install `quantmod` run the following in the shell
```
git clone https://github.com/joshuaulrich/quantmod.git
R CMD INSTALL quantmod
```

For `TTR` fo the same

The package `PerformanceAnalytics` is contained within `returnanalytics`
```
svn checkout svn://svn.r-forge.r-project.org/svnroot/returnanalytics
cd returnanalytics/pkg/
R CMD INSTALL PerformanceAnalytics
```

The package `blotter` is contained in the same-named repository
```
svn checkout svn://svn.r-forge.r-project.org/svnroot/blotter/
cd blotter/pkg/
R CMD INSTALL FinancialInstrument 
R CMD INSTALL blotter 
R CMD INSTALL quantstrat
```

