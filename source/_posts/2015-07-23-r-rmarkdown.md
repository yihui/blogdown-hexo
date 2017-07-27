---
title: "Hello R Markdown"
author: "Frida Gomam"
date: 2015-07-23
categories: ["R"]
tags: ["R Markdown", "plot", "regression"]
---



# R Markdown

This is an R Markdown document. Please note this page was **not** rendered using the [**rmarkdown**]( http://rmarkdown.rstudio.com) package or [Pandoc](http://pandoc.org). The R Markdown document is compiled to Markdown through **knitr**, and the Markdown document is rendered to HTML through [Hexo's Markdown renderer](https://github.com/hexojs/hexo-renderer-marked).

You can embed an R code chunk like this:


```r
summary(cars)
##      speed           dist    
##  Min.   : 4.0   Min.   :  2  
##  1st Qu.:12.0   1st Qu.: 26  
##  Median :15.0   Median : 36  
##  Mean   :15.4   Mean   : 43  
##  3rd Qu.:19.0   3rd Qu.: 56  
##  Max.   :25.0   Max.   :120
fit <- lm(dist ~ speed, data = cars)
fit
## 
## Call:
## lm(formula = dist ~ speed, data = cars)
## 
## Coefficients:
## (Intercept)        speed  
##      -17.58         3.93
```

# Including Plots

You can also embed R plots:


```r
par(mar = c(0, 1, 0, 1))
pie(
  c(280, 60, 20),
  c('Sky', 'Sunny side of pyramid', 'Shady side of pyramid'),
  col = c('#0292D8', '#F7EA39', '#C4B632'),
  init.angle = -50, border = NA
)
```

![](/figure/posts/2015-07-23-r-rmarkdown/pie-1.png)
