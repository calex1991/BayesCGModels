# Model Code Demo
# Filename: ModelCode.R
# Date: 27/05/18
# Author: CA

##         ##
# Libraries #
##         ##

##            ##
# Source Files #
##            ##
source("SimplifiedSampler.R")
source("PlotGraph.R")
source("Summary.R")

##            ##
# Load in Data #
##            ##
vowels <- levels(data$Target.keywords)
#for(vowel in vowels)  {
# Load in data
load("Recoded Data.RData")
  
vowels <- levels(data$Target.keywords)
vowel <- "goat"
data <- subset(data,Target.keywords==vowel)
  
  
# Specify terms for selection
model <- F1.mean+F2.mean + F3.mean~ gender + Decade + Age + Preceding.POA + Following.POA 
random <- ~Speaker+Target.transcript

## Simplified sample
model.1 <- Simplified_sampler(data,model,random,interactions =3,param.ex=TRUE,nesting=TRUE,iterations=2500)
#model.1 <- Simplified_sampler(data,model,random,interactions =3,param.ex=TRUE,iterations=25000)

Summarise(model.1)
#pdf(paste0(vowel,"_Model_Lobanov",".pdf"))
PlotGraph(model.1,mult.models = TRUE)
dev.off()
#}

bets <- NULL
for(i in 1:2500) 
  bets[i] <- model.1$beta[[i]][[3]][3]

layout(matrix(c(1,1,2,3), 2, 2, byrow = TRUE))
