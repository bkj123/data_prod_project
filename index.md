---
title       : Coursera Creating Data Products Course Project
subtitle    : 
author      : Brian K. Jones (bkj123)
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

<h1>Introduction</h1>
This presentation covers the course project for John Hopkins Data Science class on Creating Data Products on Coursera.  It describes the application and how to use it.

--- .class #id
<h1>Description</h1>
This shiny application calculates a monthly loan payment based on 3 inputs:
 - a loan amount'
 - an annual interest rate
 - the length of the loan in years

--- .class #id
<h1>Instructions</h1>
1. On the left side of the screen, under the Inputs heading, enter...
 - the loan amount
 - the annual interest rate
 - the length of the loan
note: values can be typed into each input box or they can be incremented with the up and down arrows on the right side of each input box

2. Click the Go button

3. View the calculated monthly payment amount under the Output heading above

--- .class #id 
<h1>Calculation Example</h1>
A $150,000 loan amount at 6% annual interest over 15 years (180 months) has a monthly payment of $1,265.79.

The R code below shows how this is calculated:

```r
150000*(1+.005)^180*(.005)/((1.005)^180-1)
```

```
## [1] 1265.785
```

