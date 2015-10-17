## A script that runs Biometry.pdf through pdftk.exe to
## remove the ability to print the document, and saves the
## result in Biometry_noPrint.pdf.  The user is allowed to
## copy contents to the clipboard.

## This creates the pdftk command line code.
dir <- "C:/aaaWork/Web/GitHub/NCMTH207/book/"
fn <- "Biometry"
eng <- paste0(dir,"pdftk.exe")
inp <- paste0(dir,fn,".pdf")
out <- paste0("output ",dir,fn,"_noPrint.pdf")
pw <- paste("owner_pw mth207")
allows <- "allow CopyContents"
( tmp <- paste(eng,inp,out,pw,allows,"verbose") )

## This executes that code from within R
system(tmp,show.output.on.console=TRUE)
