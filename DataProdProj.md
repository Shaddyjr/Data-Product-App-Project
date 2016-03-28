<style>
.reveal p{
   font-size: 40px;
}
.reveal pre{
  font-size: 12px;
}
.reveal small{
  font-size: 25px;
}
.reveal a{
  font-size: 35px;
}
.reveal EA{
   font-size: 30px;
}
</style>

Coursera Data Product Project
========================================================
author: Shaddyjr
date: 3/27/16
transition: concave
***
![plot of chunk Title](DataProdProj-figure/Title-1.png)
Predicting Manner of Death

The Data
========================================================
Every year the Center for Disease Control and Prevention (CDC) releases the country's most detailed report on death in the United States under the National Vital Statistics Systems. This [mortality dataset](http://www.cdc.gov/nchs/deaths.htm) is a record of every death in the country for the year 2014, which includes detailed information about causes of death and the demographic background of the deceased.

```
        Manner of Death % of total
1        Self-Inflicted      78.29
2               Natural      13.84
3              Accident       5.04
4               Suicide       1.64
5              Homocide       0.64
6   Could not determine       0.41
7 Pending Investigation       0.14
```

Exploratory Analysis
========================================================
class: EA
![plot of chunk Graphs](DataProdProj-figure/Graphs-1.png)
***
<EA>The Data show a number of interesting trends, such as the dependence of "Manner of Death" on Education level.</EA>

<EA>Although there was a lot of data, it was difficult to fit predictive models to outcomes such as Age of Death and Main Cause of Death.</EA>

<EA>However, the outcome of "Manner of Death" did show some promise, which is what I went with for this project.</EA>


Forming a Predictive Model
========================================================
The best model (most accurate) was an LDA trained to predict Manner of Death on 4 predictors: Education Level, Marital Status, Race, and Sex.

<small>The LDA Model</small>

```
 Accuracy 
0.7703201 
```

```
                             Sensitivity Specificity Balanced Accuracy
Class: Accident               0.26121372   0.9501822         0.6056980
Class: Could not determine    0.05882353   0.9958943         0.5273589
Class: Homocide               0.12558140   0.9957815         0.5606814
Class: Natural                0.38643371   0.8672787         0.6268562
Class: Pending Investigation  0.00000000   0.9985934         0.4992967
Class: Self-Inflicted         0.79343869   0.4472999         0.6203693
Class: Suicide                0.08333333   0.9836163         0.5334748
```

Final Thoughts, Links and References
========================================================
class: small
<small>       The data for "manner of death" is heavily skewed toward "Self-Inflicted" with ~78% of total cases. "Natural" deaths come in second at ~14%. So, the 77% accuracy of the model is unsurprising: even guessing "Self-Inflicted" every time would yield ~78% accuracy. </small>

<small>       With that said, given all possible permutations of inputs, the LDA model does predict for all possible outcomes.</small>

- [Shinyapp Link](https://shaddyjr.shinyapps.io/DeathApp/)
- [Github for project](https://github.com/Shaddyjr/Data-Product-App-Project)

References:
- http://www.cdc.gov/nchs/data/dvs/red_form.pdf
- https://www.kaggle.com/cdc/mortality
- http://www.cdc.gov/nchs/deaths.htm

