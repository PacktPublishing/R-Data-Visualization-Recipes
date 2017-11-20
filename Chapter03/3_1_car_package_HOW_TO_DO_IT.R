## STEP 1: PERFORM car PACKAGE INSTALLATION CHECK
if(!require(car)){ install.packages('car') }
## STEP 2: CHECK DATA SET DOCUMENTATION
library(car)
?Salaries
## STEP 3: CHECK FIRST FEW ROWS AND OBJECT TYPE
head(Salaries)
class(Salaries)