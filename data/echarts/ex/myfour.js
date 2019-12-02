    function reflash4(){
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
        							echarts.dispose(document.getElementById("pie2"))
                					 var myCharts= echarts.init(document.getElementById('pie2'))                
			                         myCharts.setOption({
												    angleAxis: {
												    },
												    radiusAxis: {
												        type: 'category',
												        data: ['周一', '周二', '周三', '周四'],
												        z: 10
												    },
												    polar: {
												    },
												    series: [{
												        type: 'bar',
												        data: [1, 2, 3, 4],
												        coordinateSystem: 'polar',
												        name: 'A',
												        stack: 'a'
												    }, {
												        type: 'bar',
												        data: [2, 4, 6, 8],
												        coordinateSystem: 'polar',
												        name: 'B',
												        stack: 'a'
												    }, {
												        type: 'bar',
												        data: [1, 2, 3, 4],
												        coordinateSystem: 'polar',
												        name: 'C',
												        stack: 'a'
												    }],
												    legend: {
												        show: true,
												        data: ['A', 'B', 'C']
												    }
			           				 },true)
                        })
                        
             //   })
        })
    }