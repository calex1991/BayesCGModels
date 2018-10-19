# Model Code Demo
# Filename: ModelCode.R
# Author: CA

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

# Load in data
load("Recoded Data.RData")
  
vowels <- levels(data$Target.keywords)
vowel <- "goat"
data <- subset(data,Target.keywords==vowel)
  
  
# Specify terms for selection
model <- F1.mean+F2.mean+F3.mean~ gender + Decade + Age + Preceding.POA + Following.POA 
random <- ~Speaker+Target.transcript

## Simplified sample
model.1 <- Simplified_sampler(data,model,random,interactions =2,param.ex=TRUE,nesting=TRUE,iterations=500,Graphs=FALSE)

Summarise(model.1)

PlotGraph(model.1,mult.models =FALSE)
