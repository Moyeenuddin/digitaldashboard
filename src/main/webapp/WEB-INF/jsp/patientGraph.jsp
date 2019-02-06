<!DOCTYPE html>
<html>
<head>
    <title>Digital Dashboard</title>
    <script src="../js/jquery-2.2.1.min.js"></script>
    <script src="../js/kendo.all.min.js"></script>
    <script>
        var dt = new Date();
        document.getElementById("datetime").innerHTML = dt.toLocaleString();
    </script>
    <link rel="stylesheet" href="../css/kendo.material.mobile.min.css">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/kendo.common-material.min.css">
    <link rel="stylesheet" href="../css/kendo.material.min.css">
</head>
<body>
<div style="margin: 30px;">
<center><h1>Digital Dashboard</h1></center>
<br>
  <div class="row" style="border: 2px solid black">
    <div class="col-md-4" style="border-right: 2px solid black; padding: 20px;">
	    <div class="demo-section k-content wide">
        <div id="chart1"></div>
		<br>
		<center><h3>Indoor Patient on: 26-01-2019</h3></center>
		</div>
	</div>
    <div class="col-md-4" style="border-right: 2px solid black; padding: 20px;">
		<div class="demo-section k-content wide">
        <div id="chart2"></div>
		<br>
		<center><h3>Outdoor Patient</h3></center>
		</div>
	</div>
    <div class="col-md-4" style="padding: 20px;">
	<div class="demo-section k-content wide">
        <div id="chart3"></div>
		<br>
		<center><h3>OT Patient</h3></center>
	</div>
  </div>
</div>
</div>
    <script>
        function createChart() {
            $("#chart1").kendoChart({
                seriesDefaults: {
                    type: "column"
                },
				dataSource: {
					data:[
							{key: "Indoor Patient(Admitted)", value: "500", usercolor: "#668cff"},
							{key: "Dengue Patient", value: "230", usercolor: "#bfff80"},
							{key: "Tuberculosis Patient", value: "400", usercolor: "#99ffff"},
						]},
                series: [{
                     field: "value",
					 categoryField: "key",
					 colorField: "usercolor",
					 labels: {
						visible: true,
						position: "top",
						padding: {
							top: -24
						}
					
					}
                }],
                valueAxis: {
                    line: {
                        visible: false
                    },
                    axisCrossingValue: 0
                },
                categoryAxis: {
                    line: {

                        visible: false
                    }
                }  
            });
			   $("#chart2").kendoChart({
                seriesDefaults: {
                    type: "column"
                },
				dataSource: {
					data:[
							{key: "Live Patient Update", value: "500", usercolor: "#9999ff"},
							{key: "Month-end Patient ", value: "3230", usercolor: "#ffb3ff"},
							{key: "Year-end Patient ", value: "22830", usercolor: "#d9b3ff"},
						]},
                series: [{
                     field: "value",
					 categoryField: "key",
					 colorField: "usercolor",
					 labels: {
						visible: true,
						position: "top",
						padding: {
							top: -24
						}
					}
                }],
                valueAxis: {
                    line: {
                        visible: false
                    },
                    axisCrossingValue: 0
                },
                categoryAxis: {
                    line: {
                        visible: false
                    }
                }  
            });
			
			   $("#chart3").kendoChart({
                seriesDefaults: {
                    type: "column"
                },
				dataSource: {
					data:[
							{key: "Emergency OT", value: "700", usercolor: "#4dd2ff"},
							{key: "Surgical OT", value: "530", usercolor: "#80b3ff"},
							{key: "Post-operative OT", value: "900", usercolor: "#75a3a3"},
						]},
                series: [{
                     field: "value",
					 categoryField: "key",
					 colorField: "usercolor",
					 labels: {
						visible: true,
						position: "top",
						padding: {
							top: -24
						}
					}
                }],
                valueAxis: {
                    line: {
                        visible: false
                    },
                    axisCrossingValue: 0
                },
                categoryAxis: {
                    line: {
                        visible: false
                    }
                }  
            });
        }

        $(document).ready(createChart);
        $(document).bind("kendo:skinChange", createChart);
    </script>
</body>
</html>
