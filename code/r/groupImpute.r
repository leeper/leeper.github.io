# FUNCTION TO NAIVELY IMPUTE MISSING DATA, ESPECIALLY FOR EXPERIMENTS WITH MISSING DATA
# RANDOMLY IMPUTES MISSING VALUES FROM THE DISTRIBUTION OF TREATMENT GROUP VALUES
# THIS RELIES ON NO COVARIATE INFORMATION, BUT PRESERVES TREATMENT GROUP MEANS AND VARIANCES

# Copyright (C) 2011  Thomas J. Leeper
# This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.
# This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.


# dataframe is the name of a dataframe containing treatment and outcome data
# tr is the name of the treatment group variable
# vars is a vector of variables that should have NAs imputed

groupImpute <- function(dataframe,tr,vars){
	# function to randomly impute missing data by sampling from within-condition values
	
	df <- dataframe # store dataframe as working df
	conditions <- eval(parse(text=paste("names(table(df$",quote(tr),"))",sep=""))) # vector of condition labels
	
	# check to see if condition labels are numeric
	x <- eval(parse(text=paste("is.numeric(df$",quote(tr),")",sep="")))
	if(x==TRUE)
		conditions <- as.numeric(conditions)
	
	# variable positions in df
	vars <- match(vars,names(df))
	
	# imputation loops (condition > row > variable)
	# need to change this to apply/functions
	for(i in 1:length(conditions)){
		data.temp <- eval(parse(text=paste("subset(df,",tr,"==conditions[i])",sep=""))) # within-condition subset of df
		rows <- as.numeric(rownames(data.temp)) # list of within-condition rows
		for(j in 1:length(rows)){
			for(k in 1:length(vars)){
				x <- eval(parse(text=paste("is.na(df[",rows[j],",",vars[k],"])",sep=""))) # check missingness
				if(x==TRUE){
					df[rows[j],vars[k]] <- sample(data.temp[,vars[k]],1) # random sample impute; store random draw in df
					#cat(x,"\n") # check on imputation
					#cat(conditions[i],rows[j],vars[k],"\n") # check on loops
					#cat(dim(df),"\n")
				}
			}
		}
	}
	return(df)
}

message("Please download this code from https://github.com/leeper/expResults")