    function reflash3(){
       var url_get = 'http://192.168.0.186:8088/superset/dashboard_json/1/'
        $.get(url_get).done(function(response){
                console.log(response)
               // response.slices.forEach(function(val,index,arr){
                    var url = 'http://192.168.0.186:8088/superset/explore_json/table/'
                        var table_id = response.slices[0].form_data.datasource.split('__')[0]
                        console.log(table_id)
                        url = url + table_id + '?form_data=' + JSON.stringify(response.slices[0].form_data)
                        console.log(url)
                        $.get(url).done(function(response){
                            console.log(response)
        							echarts.dispose(document.getElementById("pie1"))
                					 var myCharts= echarts.init(document.getElementById('pie1'))                
			                         myCharts.setOption({
			                         			    legend: {
												        data:['高度(km)与气温(°C)变化关系']
												    },
												    tooltip: {
												        trigger: 'axis',
												        formatter: "Temperature : <br/>{b}km : {c}°C"
												    },
												    grid: {
												        left: '3%',
												        right: '4%',
												        bottom: '3%',
												        containLabel: true
												    },
												    xAxis: {
												        type: 'value',
												        axisLabel: {
												            formatter: '{value} °C'
												        }
												    },
												    yAxis: {
												        type: 'category',
												        axisLine: {onZero: false},
												        axisLabel: {
												            formatter: '{value} km'
												        },
												        boundaryGap: false,
												        data: ['0', '10', '20', '30', '40', '50', '60', '70', '80']
												    },
												    series: [
												        {
												            name: '高度(km)与气温(°C)变化关系',
												            type: 'line',
												            smooth: true,
												            lineStyle: {
												                normal: {
												                    width: 3,
												                    shadowColor: 'rgba(0,0,0,0.4)',
												                    shadowBlur: 10,
												                    shadowOffsetY: 10
												                }
												            },
												            data:[15, -50, -56.5, -46.5, -22.1, -2.5, -27.7, -55.7, -76.5]
												        }
												    ]
			           				 },true)
                        })
                        
             //   })
        })
    }