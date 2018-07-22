
portfolio <- read.csv("D:/Amiya/Technical/Learning/REVA/Portfolio.csv",sep="|")

dim(portfolio) # 20310 observations and 32 variables
str(portfolio)

names(portfolio)
head(portfolio)

summary(portfolio)

#Missing Values Sumamry


colSums(sapply(portfolio, is.na))

colSums(sapply(portfolio[,.SD, .SDcols = cat_var], is.na))

install.packages("DataExplorer")
library(DataExplorer)
PlotMissing(portfolio)
DataExplorer::HistogramContinuous(portfolio)
DensityContinuous(portfolio)
BarDiscrete(portfolio)
DataExplorer::GenerateReport(portfolio)

write.csv(portfolio,"D:/Amiya/Technical/Learning/REVA/R-Portfolio.csv")

missing_data <- PlotMissing(portfolio)
dim(missing_data)

complete.cases(portfolio)

#Drop empty rows 
portfolio_comp <- na.omit(portfolio)
dim(portfolio_comp)
PlotMissing(portfolio_comp)

head(portfolio_comp)
tail(portfolio_comp)

GenerateReport
write.csv(portfolio_comp,"D:/Amiya/Technical/Learning/REVA/R-Portfolio.csv")

