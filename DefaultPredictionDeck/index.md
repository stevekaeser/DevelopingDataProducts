---
title       : Predicting the Likelihood to Default
subtitle    : An Overview
author      : Steve Kaeser
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Overview

As credit card debt is at an all-time high, it is important for banks to understand the risk of offering credit to a person and then not being able to recover the debt.  This presentation will review a simple application that has been created to determine a person's likelihood to default on a credit card debt.

--- .class #id 

## The Model

The simple prediction model for this application is based solely on the age and amount of money spent in the past 30 days on the credit. Using these two pieces of information, a binary logistic regression is calulated in R to generate the default risk:


```r
(1/(1+exp(-(spend/15000 - age/99)))) * 100
```

As an example, let's look at the default settings in the application where age is 21 and the amount spent in the last 30 days is $100.



Based on the formula above, the likelihood of a customer with those paramaters defaulting would be __44.88%__.

--- .class #id 

## The App

I have created an application in Shiny that can be accessed from the following url <a href="https://stevekaeser.shinyapps.io/DefaultPrediction/">https://stevekaeser.shinyapps.io/DefaultPrediction/</a>.  Below is a screenshot of what you will see when you first open the application.

<img width=100% src="assets/img/screenshot.png">

--- .class #id 

## Conclusion

As you can see, the application takes two values, age and amount spent, to determine whether a customer may default on their credit card debt. This is a very simplistic prediction algorithm that is primarily intended as a starting point for a discussion on what data needs to be collected for determining a customer's likelihood to default.

