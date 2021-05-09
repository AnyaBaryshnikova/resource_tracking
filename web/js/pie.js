$(document).ready(function(){

    google.charts.load("current", {packages:["corechart"]});
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {
        var data = google.visualization.arrayToDataTable([
            ['Departement', 'Hours'],
            ['департамент 1', 11],
            ['департамент 2', 2],
            ['департамент 3', 2],
            ['департамент 4', 2],
            ['департамент 5', 7],
            ['департамент 6', 9]
        ]);

        var options = {
            title: 'Отделы',
            pieHole: 0.4,
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
    }

});