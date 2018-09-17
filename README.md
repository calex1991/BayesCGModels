# CGCode
Code for construction of chain graph models for formant data

## Description of files ##

Here is a brief description of all the code files in the folder

- ChordalGraph.R - This file has code to compute the model density values for the undirected graph between responses
- DoubleMHMultReffs.R - This is the model selection code for the undirected graph between responses (when 4 or greater)
- GWishGen.cpp - C++ code for a sampler used in the graphical model
- MixModelFunctions.R - Contains functions used within the sampler for the mixed effects model
- ModelCode.R - The demonstration code used to run the full model. Use this template when trying out your own data
- PlotGM.R - The plotting function used to create one graph
- PlotGraph.R - Plotting command to produce our numerous best graphical models from the sampler. 
- SimplifiedSampler.R - The main model code used to compute the model
- Summary.R - The summary function used to summarise the model output.
