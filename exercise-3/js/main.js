/* Create a scatter plot of 1960 life expectancy (gdp) versus 2013 life expectancy (life_expectancy).
		The variable "data" is accessible to you, as you read it in from data.js
*/
$(function() {
	// Read in prepped_data file
	d3.csv('data/prepped_data.csv', function(error, allData){
		// Variables that should be accesible within the namespace
		var xScale, yScale, currentData;

		// Track the sex (male, female) and drinking type (any, binge) in variables
		var sex = 'female';
		var type = 'binge';

		// Margin: how much space to put in the SVG for axes/titles
		var margin = {
			left:70,
			bottom:100,
			top:50,
			right:50,
		};

		// Height/width of the drawing area for data symbols
		var height = 600 - margin.bottom - margin.top;
		var width = 1000 - margin.left - margin.right;


		// Append all non-data placeholder elements for you chart (svg, g, axis labels, axes), but do not call the axis functions that render them.


		// Write a function for setting the scales based on the current data selection.



		// Write a function for updating your axis elements (both the axes, and their labels).



		// Write a function to filter down your data to the current selection based on the current sex and type


		// Write a reusable function to perform your data-join. Within this function you should set your scales and update your axes.


		// Assign an event handler to your input elements to set the sex and/or type, filter your data, then update your chart.

	});
});
