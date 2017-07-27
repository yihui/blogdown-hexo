# blogdown-hexo

A sample website based on [**blogdown**](https://github.com/rstudio/blogdown) and [Hexo](https://hexo.io). It is briefly documented at https://bookdown.org/yihui/blogdown/hexo.html.

The site was created via `hexo init blogdown-hexo`. I added `.Rprofile`, `R/build.R`, `R/build_one.R`, and a sample post `source/_posts//2015-07-23-r-rmarkdown.Rmd`. The site is built and deployed automatically via [Travis CI](https://travis-ci.org/yihui/blogdown-hexo). To build and preview the site locally, you need to install **blogdown**:

```r
devtools::install_github("rstudio/blogdown")
blogdown::serve_site()
```
