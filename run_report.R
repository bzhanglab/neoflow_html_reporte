library("rmarkdown")
run_reporter=function(x,out_dir="./",prefix="test"){
    rmd <- "report.rmd"
    x <- normalizePath(x)
    work_dir <- dirname(x)
    cat("Input file:",x,"\n")
    cat("Work dir:",work_dir,"\n")
	out_file <- paste0(out_dir,"/report.html")
    render(rmd,params = list(input_dir=x,out_dir=out_dir,prefix=prefix),output_file = basename(out_file),
           output_dir = work_dir,
           intermediates_dir = work_dir,
           knit_root_dir = getwd(),
           )
}
