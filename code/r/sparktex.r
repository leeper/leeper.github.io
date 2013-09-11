# GENERATES SPARKLINE OR SPARKSPIKES(BARPLOT) USING LaTeX sparklines PACKAGE

# Copyright (C) 2011  Thomas J. Leeper
# This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.
# This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.


## y is a vector of data values (should be in the range 0-1.75, else see sparklines documentation)
## x is an optional horizontal spacing of data values
## width is the width of the sparkline in pt
## type is either "sparkline" for a lineplot or "sparkspike" for a barplot
## rectangle is an optional two-element vector specifying the lower and upper bounds of a rectangle the width of the sparkline
## linewidth is an optional value specifying the width of the sparkspikes or the width of the sparkline for this particular sparkline; this value can also be set globally
## sparkdot is an optional argument which, if specified, should consist of a list of three-element vectors, where the elements are - respectively - an x value, a y value, and a color

## to change color of sparkline or sparkspike, see sparklines documentation to specify global values

message("`sparktex` is now available as a package on CRAN: http://cran.r-project.org/web/packages/sparktex/index.html")

sparktex <- function(y,x=NULL,width=NULL,type="sparkline",rectangle=NULL,linewidth=NULL,sparkdot=NULL) {
	if(!is.null(rectangle) && !length(rectangle)==2)
		stop("rectangle must be vector of length 2")
	if(is.null(x)) {
		buffer <- .95/(length(y)+1)
		x <- round(seq(buffer,1-buffer,length.out=length(y)),4)
	}
	if(is.null(width)) {
		if(length(y)<10)
			width <- length(y)
		else
			width <- 10
	}
	if(!is.null(linewidth)){
		if(type=="sparkline")
			cat("{\\setlength{\\sparklinethickness}{",linewidth,"px}\n",sep="")
		if(type=="sparkspike")
			cat("{\\setlength{\\sparkspikewidth}{",linewidth,"px}\n",sep="")
	}
	cat("\\begin{sparkline}{",width,"}","\n",sep="")
	if(!is.null(rectangle))
		cat("\\sparkrectangle",rectangle[1],rectangle[2],"\n",sep=" ")
	if(type=="sparkline"){
		cat("\\spark")
		for(i in 1:length(y)){
			cat("\n",x[i],y[i],sep=" ")
		}
		cat(" /","\n")
	}
	else if(type=="sparkspike"){
		for(i in 1:length(y)){
			cat("\\sparkspike ",x[i],y[i],"\n",sep=" ")
		}
	}
	if(!is.null(sparkdot)){
		for(i in 1:length(sparkdot)){
			cat("\\sparkdot",sparkdot[[i]][1],sparkdot[[i]][2],sparkdot[[i]][3],"\n",sep=" ")
		}
	}
	cat("\\end{sparkline}",sep="")
	if(!is.null(linewidth))
		cat("}\n")
	else
		cat("\n")
}

message("'sparktex' is now available as a package on CRAN")
