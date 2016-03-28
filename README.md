# Module 8: D3 Scales

## Overview
In this module, we'll explore how **scales** allow you to translate from a _data space_ to a _visual space_. As you know, your datasets will rarely (never) be in pixels. Scales will provide you with functions that allow you to express your data in pixels, regardless of the **domain** of your data.

It's important to distinguish between **scales** and **axes**. For the the sake of this (and other) modules, **scales** will refer to _functions_ that translate between the data space and visual space. **Axes** are visual representations of scales, in that they allow your audience to translate from a visual space back into a data space. Not surprisingly, you'll need to use your scales to build your axes.

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Contents**

- [Resources](#resources)
- [Conceptual Overview](#conceptual-overview)
- [Linear Scales](#linear-scales)
- [Ordinal Scales](#ordinal-scales)
- [Color Scales](#color-scales)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Resources
Here are a few resources to help you better understand and use scales.

- [Quantitative Scales](https://github.com/mbostock/d3/wiki/Quantitative-Scales) _(d3 wiki)_
- [Ordinal Scales](https://github.com/mbostock/d3/wiki/Ordinal-Scales) _(d3 wiki)_
- [Categorical Colors](https://github.com/mbostock/d3/wiki/Ordinal-Scales#categorical-colors) _(d3 wiki)_
- [Scale Tutorial](http://alignedleft.com/tutorials/d3/scales) _(aligned left)_
- [Scale Overview](http://www.jeromecukier.net/blog/2011/08/11/d3-scales-and-color/) _(Jerome Cukier)_



## Conceptual Overview
As described above, D3 scales are functions that allow you to translate between the **domain** of your data and your visual **range**. In previous modules, we often used data values directly for positioning elements in the DOM

```javascript
svg.selectAll('circle') // select all circles in the svg
 .data(data, function(d){return d.id}) // bind the data to your selection
 .attr('r', 5) // set a constant radius of 5
 .attr('cx', function(d) {return d.x}) // specify the x attribute using the x value
 .attr('cy', function(d) {return d.y}); // specify the y attribute using the y value
```

However, depending on your dataset, your `x` and `y` values will either be very small (.000001) or very larger (1E23). **Scales** will allow you to take in a data-value and return a pixel-value. In pseudo-code:

```javascript
var scale = function(data-value) {
  // calculate pixel-value
  return pixel-value;
};
```

It would be somewhat trivial to write linear transformations yourself, but there's no point in re-inventing the wheel. Regardless of your implementation, there are a few pieces of information you'll need to build a scale:

>**Domain of data**: In order to calculate the visual output, you'll need to know that possible set of values covered in your data-variable. In the case of quantitative (continuous) variables, this could be defined using a minimum and maximum value of your dataset. For ordinal data, you'll need to provide additional information about the possible set of values present in your data.

>**Range of Output**: In order to create proper visual representations of your data, you'll need to establish the desired output range of your scale. In other words, you need to decide the set of possible pixels that express your underlying dataset. As with your domain, this could be expressed with a minimum and maximum for continuous data, and the set of possible values for ordinal/nominal data (there are a few options for this).

As you know, in JavaScript, functions are actually objects. The implication of this is that the scale functions (objects) you create using D3 will have various properties that allow you to describe the behaviors of the scale. As described [on the wiki](https://github.com/mbostock/d3/wiki/Ordinal-Scales):

>You can call the scale like any other function, and the scale has additional methods that change its behavior. Like other classes in D3, scales follow the method chaining pattern where setter methods return the scale itself, allowing multiple setters to be invoked in a concise statement.


## Quantitative Scales
Quantitative scales allow you to translate between a continuous _data-domain_ and a continuous _output-range_. 


## Ordinal Scales


## Color Scales
