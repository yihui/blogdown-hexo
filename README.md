# blogdown-hexo

A sample website based on [**blogdown**](https://github.com/rstudio/blogdown) and [Hexo](https://hexo.io). It is briefly documented at https://bookdown.org/yihui/blogdown/hexo.html.

The site was created via `hexo init blogdown-hexo`. I added `.Rprofile`, `R/build.R`, `R/build_one.R`, and a sample post `source/_posts//2015-07-23-r-rmarkdown.Rmd`. The site is built and deployed automatically via [Netlify](https://www.netlify.com). Below are the settings on Netlify:

![hexo-netlify](https://user-images.githubusercontent.com/163582/28689730-2fdbb386-72dc-11e7-83e0-b0bdafed4786.png)

To build and preview the site locally, you need to install **blogdown**:

```r
devtools::install_github("rstudio/blogdown")
blogdown::serve_site()
```

To use pandoc rather than knitr to render the markdown (will process citations), change line 6 of R/build.R to:

```r
  if (blogdown:::Rscript(shQuote(c('R/build_one_pandoc.R', io))) != 0) {
```
