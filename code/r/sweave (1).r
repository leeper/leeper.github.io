#!bin/usr/R
# Sweave Compilation Shell Script
# Thomas J. Leeper
# Created 2011-08-12
# Updated 2012-08-29

# Copyright (C) 2012  Thomas J. Leeper
# This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.
# This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

sink("execute.log",split=FALSE,type = c("output", "message")) #Optional save shell script output

shell('tasklist /fi "imagename eq acrord32.exe"') #search for running Adobe Reader
shell('if "%ERRORLEVEL%"=="0" taskkill /fi "imagename eq acrord32.exe"') #close Adobe Reader, if running

# extract filename using built-in R functions
x=file.info(list.files(pattern=".rnw")) #store file list for current directory as x
filename=rownames(x[with(x,order(x$mtime,decreasing=TRUE)),])[1] #retrieve file name of most recently modified .rnw
filename=substr(filename,1,nchar(filename)-4)

wd=paste(getwd(),"/",sep="")
s=Sweave(paste(wd,filename,".rnw",sep="")) #Sweave
system(paste('pdflatex ',filename,".tex",sep="")) #Compile LaTeX
system(paste('bibtex ',filename,sep="")) #Compile Bibliography
system(paste('pdflatex ',filename,".tex",sep="")) #Compile LaTeX
system(paste('pdflatex ',filename,".tex",sep="")) #Compile LaTeX

Sweave(paste(filename,".rnw",sep=""),driver=Rtangle(),output=paste(filename,"-tangle.r",sep="")) #Rtangle
shell.exec(paste(filename,".pdf",sep="")) #Open PDF

sink()

# Optional arguments
#shell(paste("del ",filename,".aux",sep="")) #delete LaTeX .aux file
#shell(paste("del ","execute.log",sep="")) #delete Sweave processing log