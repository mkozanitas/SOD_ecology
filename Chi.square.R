#clear workspace
rm(list=ls())

#set working directory
setwd("~/R projects/SOD_ecology")

#packages needed 
install.packages("CGPfunctions")  ##graphs
install.packages("lsr")  ##cramersV
install.packages("dplyr")  ##subsetting 

library(CGPfunctions)
library(lsr)
library(dplyr)


bay.data <- read.csv("Bay.Final.csv")
attach(bay.data) #allows R to find column titles

#create data frame 
Pram<-table (PLOT, RESULT.PEAK.12) # do this with each time point to get totals
ftable(Pram)
summary(Pram)


##garbae code below is broken_moved chi2.csv's to a new folder< and they are all not set up right anyway. Need to add some kind of expected outcome_ or better yet use a different test. 


hotVcold <- read_csv("chi.2.hs.cs.csv")
attach(hotVcold)
x2hvc<- table (HS,total.pram)
ftable(x2hvc)
summary(x2hvc)
cramersV(x2hvc)
margin.table(x2hvc,1)
margin.table(x2hvc,2)
prop.table(x2hvc)
prop.table(x2hvc,1)
prop.table(x2hvc,2)

chi2.all <- read_csv("chi2.all.csv")
attach(chi2.all)
chi2.allc<- table (pram.total,status)
ftable(chi2.all)
summary(chi2.all)

chi2.allc<- table (status, pram.total)
