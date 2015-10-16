#GEE TEST
#install GEE packages
#install.packages('gee')
install.packages('geepack')
#install QIC package
install.packages('MuMIn')     

#library(gee)
library(geepack)
library(MuMIn)




library(geepack)
#Explore data
data(ohio)
head(ohio)
tail(ohio)
str(ohio)
summary(ohio)


#GEE model
fm1=geeglm(resp~age*smoke, id=id, data=ohio, family=binomial, corstr='exchangeable', scale.fix=TRUE)
fm2=update(fm1, corstr='ar1')
fm3=update(fm1, corstr='unstructured')



#Build a model selection table and Calculate QIC
library(MuMIn)
model.sel(fm1, fm2, fm3, rank=QIC)


