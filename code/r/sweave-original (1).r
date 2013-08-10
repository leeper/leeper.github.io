#!bin/usr/R
# Sweave Compilation Shell Script
# Thomas J. Leeper
# Created 2011-08-12

# Copyright (C) 2011  Thomas J. Leeper
# This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.
# This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

shell('tasklist /fi "imagename eq acrord32.exe"') #search for running pdf viewer
shell('if "%ERRORLEVEL%"=="0" taskkill /fi "imagename eq acrord32.exe"') #close pdf viewer if running

#Original code that accessed file list via shell script
#shell('dir *.rnw /o:-d > filenames.txt') #saves DOS directory to text file
#filenames=unlist(strsplit(readLines("filenames.txt")[6]," ")) #saves most recent .rnw file in directory as "filename" variable
#filename=filenames[length(filenames)]
#filename=substr(filename,1,nchar(filename)-4) #removes dot and 3-character file extension from filename
#shell('del filenames.txt') #deletes filename file

#new code that extracts filename using built-in R functions
x=file.info(list.files(pattern=".rnw")) #store file list for current directory as x
filename=rownames(x[with(x,order(x$mtime,decreasing=TRUE)),])[1] #retrieve file name of most recently modified .rnw
filename=substr(filename,1,nchar(filename)-4)

commandArgs()
wd=substr(commandArgs()[4],8,nchar(commandArgs()[4])-9) #extracts directory from shell commandArgs
setwd(wd) #set working directory
#sink("execute.log",split=FALSE) #Optional save shell script output
s=Sweave(paste(wd,filename,".rnw",sep="")) #Sweave
system(paste('pdflatex ',filename,".tex",sep="")) #Compile LaTeX
system(paste('bibtex ',filename,sep="")) #Compile Bibliography
system(paste('pdflatex ',filename,".tex",sep="")) #Compile LaTeX
system(paste('pdflatex ',filename,".tex",sep="")) #Compile LaTeX

Sweave(paste(filename,".rnw",sep=""),driver=Rtangle(),output=paste(filename,"-tangle.r",sep="")) #Rtangle
shell.exec(paste(filename,".pdf",sep="")) #Open PDF

#Optional arguments
#shell(paste("del ",filename,".aux",sep="")) #delete LaTeX .aux file

#sink()
