We need the following packages:

  + zoo, xts
  + quantmod
  + quantstrat
  + TTR
  + FinancialInstrument
  + blotter

If they cannot be installed via `install.packages()` one can build from source.


For instance, to install `quantmod` run the following in the shell
```
svn checkout svn://svn.r-forge.r-project.org/svnroot/quantmod/
cd quantmod/pkg/
R CMD INSTALL quantmod
```

The package `blotter` is contained in the same-named repository
```
svn checkout svn://svn.r-forge.r-project.org/svnroot/blotter/
cd blotter/pkg/
R CMD INSTALL FinancialInstrument 
R CMD INSTALL blotter 
R CMD INSTALL quantstrat
```

The package `PerformanceAnalytics` is contained within `returnanalytics`
```
svn checkout svn://svn.r-forge.r-project.org/svnroot/returnanalytics
cd returnanalytics/pkg/PerformanceAnalytics/
R CMD INSTALL PerformanceAnalytics
