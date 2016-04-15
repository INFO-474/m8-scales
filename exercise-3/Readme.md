## Exercise 3: Visualizing State Level Drinking Patterns

This exercise is a more robust opportunity to visualize data using D3. The data for this challenge contains estimates for alcohol consumption patterns at the U.S. state level in 2012. More specifically, for each state, the data represents the percentage of the population that reported drinking. The two measures of interest are:

> **Any Drinking**: At least one drink of any alcoholic bevarage in the past 30 days

> **Binge Drinking**: The consumption of more than four drinks for women or five drinks for men on a single occasion at least once in the past 30 days

Estimates are provided for males and females separately. The data, which contains county level information, comes from [this study](http://www.healthdata.org/research-article/drinking-patterns-us-counties-2002-2012) at the [Institute for Health Metrics and Evaluation](http://www.healthdata.org/), and was downloaded [here](http://www.healthdata.org/us-health/data-download) (I've already downloaded it and performed some formatting for you). Here is an [interactive visualization](http://vizhub.healthdata.org/us-health-map/) of the study results. As usual, once you fork and clone this repository, instructions will appear in the `index.html` file. Unlike previous exercises, this exercise details high-level requirements rather than writing out step-by-step instructions.

Your final product should look like this

![exercise 3 complete bar chart of state drinking rates](imgs/complete.png)

The following resources may be helpful:

- [Quantitative Scales](https://github.com/mbostock/d3/wiki/Quantitative-Scales) _(d3 wiki)_
- [Categorical Colors](https://github.com/mbostock/d3/wiki/Ordinal-Scales#categorical-colors) _(d3 wiki)_
- [Scale Tutorial](http://alignedleft.com/tutorials/d3/scales) _(aligned left)_
- [Scale Overview](http://www.jeromecukier.net/blog/2011/08/11/d3-scales-and-color/) _(Jerome Cukier)_
- [D3 min Function](https://github.com/mbostock/d3/wiki/Arrays#d3_min) _(d3 wiki)_
- [D3 set values](https://github.com/mbostock/d3/wiki/Arrays#set_values) _(d3 wiki)_
- [D3 SVG Axes](https://github.com/mbostock/d3/wiki/SVG-Axes) _(d3 wiki)_
- [D3 Margin Convention](https://bl.ocks.org/mbostock/3019563) _(bl.ock example)_
