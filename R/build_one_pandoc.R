# Use RMarkdown render function so as to process citations

local({
  # fall back on '/' if baseurl is not specified
  baseurl = blogdown:::get_config2('root', '/')
  optsknit <- list(base.url = baseurl, base.dir = normalizePath('source'))


  # input/output filenames are passed as two additional arguments to Rscript
  a = commandArgs(TRUE)
  d = gsub('^source/_?|[.][a-zA-Z]+$', '', a[1])

  options(digits = 4)

  optschunk <- list(fig.path   = sprintf('figure/%s/', d),
                    cache.path = sprintf('cache/%s/', d))

  outformat <- rmarkdown::output_format(
    knitr = rmarkdown::knitr_options(opts_chunk = optschunk, opts_knit = optsknit),
    pandoc = rmarkdown::pandoc_options(to = "markdown_strict+yaml_metadata_block", args = c( '-s'))
  )
  rmarkdown::render(paste0(getwd(),'/', a[1]), output_format=outformat,
                    output_file=paste0(getwd(),'/../../',a[2]), quiet = FALSE,
                    encoding = 'UTF-8', envir = .GlobalEnv)

})
