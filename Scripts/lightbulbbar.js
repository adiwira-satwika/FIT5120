

    var data1 = [
            {group: "CFLs", value: 3.76 },
            {group: "Halogen", value: 4.11 },
            {group: "Fluorescent tubes", value: 0.68 },
            {group: "LED", value: 0.42 },
            {group: "Incandescent", value: 1.67 },
            {group: "Other type", value: 0.30 }

];

var data2 = [
            {group: "CFLs", value: 3.49 },
            {group: "Halogen", value: 3.68 },
            {group: "Fluorescent tubes", value: 0.68 },
            {group: "LED", value: 0.44 },
            {group: "Incandescent", value: 1.80 },
            {group: "Other type", value: 0.31 }
];

var data3 = [
            {group: "CFLs", value: 3.24 },
            {group: "Halogen", value: 4.02 },
            {group: "Fluorescent tubes", value: 0.74 },
            {group: "LED", value: 0.50 },
            {group: "Incandescent", value: 1.73 },
            {group: "Other type", value: 0.23 }
];

var data4 = [
            {group: "CFLs", value: 3.46 },
            {group: "Halogen", value: 1.79 },
            {group: "Fluorescent tubes", value: 1.19 },
            {group: "LED", value: 0.53 },
            {group: "Incandescent", value: 1.71 },
            {group: "Other type", value: 0.17 }
];

var data5 = [
            {group: "CFLs", value: 2.62 },
            {group: "Halogen", value: 1.63 },
            {group: "Fluorescent tubes", value: 1.69 },
            {group: "LED", value: 0.00 },
            {group: "Incandescent", value: 1.35 },
            {group: "Other type", value: 0.63 }
];

var data6 = [
            {group: "CFLs", value: 3.43 },
            {group: "Halogen", value: 2.87 },
            {group: "Fluorescent tubes", value: 0.86 },
            {group: "LED", value: 0.31 },
            {group: "Incandescent", value: 1.14 },
            {group: "Other type", value: 0.25 }
];

var data7 = [
            {group: "CFLs", value: 3.23 },
            {group: "Halogen", value: 2.03 },
            {group: "Fluorescent tubes", value: 1.63 },
            {group: "LED", value: 0.43 },
            {group: "Incandescent", value: 0.83 },
            {group: "Other type", value: 0.11 }
];

// set the dimensions and margins of the graph
        var margin = {top: 30, right: 30, bottom: 70, left: 60 },
        width = 460 - margin.left - margin.right,
        height = 400 - margin.top - margin.bottom;

    // append the svg object to the body of the page
    var svg = d3.select("#my_dataviz")
        .append("svg")
        .attr("width", width + margin.left + margin.right)
        .attr("height", height + margin.top + margin.bottom)
        .append("g")
        .attr("transform",
            "translate(" + margin.left + "," + margin.top + ")");

    // X axis
    var x = d3.scaleBand()
        .range([0, width])
            .domain(data1.map(function (d) { return d.group; }))
    .padding(0.2);
svg.append("g")
    .attr("transform", "translate(0," + height + ")")
    .call(d3.axisBottom(x))

// Add Y axis
var y = d3.scaleLinear()
    .domain([0, 5])
    .range([height, 0]);
svg.append("g")
    .attr("class", "myYaxis")
    .call(d3.axisLeft(y));
        $("svg").css({top: 2250, left: 550, position: 'absolute' });

    // A function that create / update the plot for a given variable:
        function update(data) {

            var u = svg.selectAll("rect")
        .data(data)

    u
        .enter()
        .append("rect")
        .merge(u)
        .transition()
        .duration(1000)
                .attr("x", function (d) { return x(d.group); })
                .attr("y", function (d) { return y(d.value); })
    .attr("width", x.bandwidth())
                .attr("height", function (d) { return height - y(d.value); })
    .attr("fill", "#69b3a2")
}


update(data1)

