---
title       : Are you having enough wealth?
subtitle    : Average wealth per household in the Netherlands
author      : Caroliem
job         : 
framework   : io2012  # {io2012, html5slides, shower, dzslides, ...}
highlighter : prettify  # {highlight.js, prettify, highlight}
hitheme     : solorazid_light      # 
widgets     : [bootstrap, quiz, shiny, interactive]            # {mathjax, quiz, bootstrap, shiny, interactive}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
logo        : logo.png
--- 

## Are you having enough wealth?

In this application you can check how much *wealth*, a dutch household has. 
The dutch statistics institute has created a database with data about the wealth of dutch households.
On of the variables in this datasets is the age of the main breadwinner of the household.
based on the age of the main breadwinner of the household.

This application allows you to check your own wealth and compare it with the average wealth in your age group.

---
## Methodology

The following method is used to create this application:

- From CBS the dataset [Vermogensklassen; particuliere huishoudens naar diverse kenmerken](Http://www.cbs.nl) is downloaded and loaded into R.
- For ease of use the non-descriptive code for age groups is transferred in a factor variable with a meaningful code (for example convert code 6102 to "25 - 30")
- Created a linear model predicting Average wealth with Age as input.

--- &twocol w1:40% w2:60%
## Application
The shiny [applicaton](https://caroliem.shinyapps.io/Shiny/) calculates an amount and plots a graph based on the input of the user:
 
*** =left
**Input:**

- The Age group of the user. 
- The current Wealth of the user.

*** =right
**Output:**
 
- Predicted wealth (using the created linear model)
- Histogram showing the total wealth within the selected age group
- Within the histogram a line is plotted showing the currrent wealth of the user. 

---
## interactive slide

This is a fake implementation of the shiny application pitched in this presentation. 
Your wealth will be calculated based on your age, but the calculation is done by multiplying the age with 1500 euro"
<div class="row-fluid">
  <div class="col-sm-4">
    <form class="well">
      <div class="form-group shiny-input-container">
        <label for="Age">
          <h3>Select Age</h3>
        </label>
        <input id="Age" type="number" class="form-control" value="20"/>
      </div>
    </form>
  </div>
  <div class="col-sm-8">
    <div id="text3" class="shiny-text-output"></div>
    <strong>
      <div id="text2" class="shiny-text-output"></div>
    </strong>
  </div>
</div>

--- &radio
## Interactive slide

Just a little quiz to understand what the present application does?
What is calculated based on the age of the person?

1. Amount of debts
2. _Total Wealth_
3. Income
4. Health

*** .hint
It is about wealth.

*** .explanation
This is an explanation, it calculates the total amount of assets minus the total amount of debts.


