#!bin/usr/R
# Thomas J. Leeper
# Aarhus University
# February 25, 2013

# SIMPLE MEAN-COMPARISON PERMUTATION TEST WITH MISSING DATA

simpleperm <- function(y, x, iter=1000, useNA="complete"){
	data <- data.frame(cbind(as.numeric(factor(x)),y))
	diffs <- rep(NA,iter)
	
	# define function
	perm <- function(a){
		temp <- sample(a, length(a), replace=FALSE)
		diff <- mean(temp[x==1])-mean(temp[x==2])
		return(diff)
	}
	# execute permutation, per parameters
	if(useNA=="complete"){
		data <- na.omit(data)
		for(i in 1:iter)
			diffs[i] <- perm(data$y)
	}
	else if(useNA=="sample.mean.impute"){
		m <- mean(data$y, na.rm=TRUE)
		data$y <- sapply(data$y, FUN=function(a) {if(is.na(a)) return(m)})
		for(i in 1:iter)
			diffs[i] <- perm(data$y)
	}
	else if(useNA=="group.mean.impute"){
		m <- by(data$y, data$x, FUN=mean, na.rm=TRUE)
		data$y <- mapply(data$y, data$x, FUN=function(a,b) {
			if(is.na(a) & b==1)
				return(m[1])
			else if(is.na(a) & b==2)
				return(m[2])
			})
		for(i in 1:iter)
			diffs[i] <- perm(data$y)
	}
	else if(useNA=="random.sample"){
		data$y <- sapply(data$y, FUN=function(a){
			if(is.na(a))
				return(sample(na.omit(data$y),1,replace=FALSE))
			})
		for(i in 1:iter)
			diffs[i] <- perm(data$y)
	}
	else if(useNA=="random.group"){
		data$y <- mapply(data$y, data$x, FUN=function(a,b){
			if(is.na(a) & b==1)
				return(sample(na.omit(data$y[data$x==1]),1,replace=FALSE))
			else if(is.na(a) & b==2)
				return(sample(na.omit(data$y[data$x==2]),1,replace=FALSE))
			})
		for(i in 1:iter)
			diffs[i] <- perm(data$y)
	}
	else if(useNA=="random.sample.permute"){
		perm <- function(a){
			temp <- sample(a, length(a), replace=FALSE)
			temp <- sapply(temp, FUN=function(a){
				if(is.na(a))
					return(sample(na.omit(temp),1,replace=FALSE))
				})
			diff <- mean(temp[x==1])-mean(temp[x==2])
			return(diff)
		}	
		for(i in 1:iter)
			diffs[i] <- perm(data$y)
	}
	else if(useNA=="random.group.permute"){
		perm <- function(a){
			temp <- sample(a, length(a), replace=FALSE)
			temp <- mapply(temp, data$x, FUN=function(a,b){
				if(is.na(a) & b==1)
					return(sample(na.omit(data$y[data$x==1]),1,replace=FALSE))
				else if(is.na(a) & b==2)
					return(sample(na.omit(data$y[data$x==2]),1,replace=FALSE))
				})
			diff <- mean(temp[x==1])-mean(temp[x==2])
			return(diff)
		}	
		for(i in 1:iter)
			diffs[i] <- perm(data$y)
	}
	return(diffs)
}

message("Please download this file from https://github.com/leeper/expResults")