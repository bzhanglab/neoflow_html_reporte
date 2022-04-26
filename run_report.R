library("rmarkdown")
run_reporter=function(x,out_dir="./",prefix="test",min_n_sample_name=50){
    rmd <- "report.rmd"
    x <- normalizePath(x)
    out_dir <- normalizePath(out_dir)
    work_dir <- dirname(x)
    cat("Input file:",x,"\n")
    cat("Work dir:",work_dir,"\n")
	out_file <- paste0(out_dir,"/report.html")
    render(rmd,params = list(input_dir=x,out_dir=out_dir,prefix=prefix,min_n_sample_name=min_n_sample_name),
	   output_file = basename(out_file),
           output_dir = work_dir,
           intermediates_dir = work_dir,
           knit_root_dir = getwd(),
           )
}
