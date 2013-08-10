# FUNCTIONS TO COPY AND PASTE FROM CLIPBOARD
# ctrlc COPIES AN R OBJECT (PERHAPS A COMPLEX OUTPUT FROM xtable) TO THE CLIPBOARD
# ctrlV EVALUATES THE CONTENTS OF THE CLIPBOARD (PERHAPS A LONG SET OF CODE) IN R, WITHOUT PRINTING

# Copyright (C) 2012 Thomas J. Leeper
# This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.
# This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.


# copy an R object to the clipboard
ctrlc <- function(obj, format = 1){
	if(is.character(obj))
		.Internal(writeClipboard(obj, format))			# characters or character vectors are copied as text
	else if(is.matrix(obj) || is.data.frame(obj))
		write.table(obj, file="clipboard")				# matrices and dataframes are copied as tables
	else if(is.list(obj) || is.double(obj))
		.Internal(writeClipboard(paste(obj), format))	# lists are copied as slightly modified text
	else
		stop("Object cannot be copied to clipboard")
}

## example:
## a <- c(1,2,3)
## ctrlc(a)

# evaluate an R expression pasted from clipboard (can be multiple lines of code)
ctrlv <- function() eval(parse(text=readClipboard(format=1,raw=FALSE)), envir=.GlobalEnv)

## example:
## ctrlv()
