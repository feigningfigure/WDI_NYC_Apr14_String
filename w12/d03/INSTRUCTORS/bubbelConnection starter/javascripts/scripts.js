
Array.prototype.sample = function(){
	var randomNum = Math.floor(this.length * Math.random());
	return this[randomNum]
};


function projectData(data){

	// Select our campsite
	var svg = d3.select('svg');

	//Check to see if we need new circles, and then build them if so
	var circle = svg.selectAll('circle')
		.data(data)
		.enter()
		.append('circle');

		//Update visualization
		var circle = svg.selectAll('circle')
			.data(data)
			.transition()
				.duration(700)
					.attr('r', function(d){ return d*2+'px' })
					.attr('cx', function(){ return (Math.random()*100)+'%' })
					.attr('cy', function(){ return (Math.random()*75)+'%' })
					.style('fill', function(){return crayola.sample().hex})
					.style('opacity', function(){ return Math.random() })

		svg.selectAll('circle')
			.data(data)
			.exit()
			.remove();
}


window.onload = function(){

	d3.select('svg')
		.attr('width', '100%')
		.attr('height', '100%')
		.style('border', '2px solid black');


		setInterval(function(){
			var data = [ Math.random()*100, Math.random()*200, Math.random()*120, Math.random()*1800, Math.random()*160 ]
			projectData(data)
		}, 750)
}
