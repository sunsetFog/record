    function reflash7(){
       var url_get = 'http://192.168.0.186:8088/superset/dashboard_json/9/'
        $.get(url_get).done(function(response){
                
               // response.slices.forEach(function(val,index,arr){
                    var url = 'http://192.168.0.186:8088/superset/explore_json/table/'
                        var table_id = response.slices[1].form_data.datasource.split('__')[0]
                        console.log(table_id)
                        url = url + table_id + '?form_data=' + JSON.stringify(response.slices[1].form_data)
                
                        $.get(url).done(function(response){
                        	ones = []
                        	twos = []
                        	threes = []
                        	            response.data[0].values.forEach(function(val,index, arr){
							               twos.push(Number(val.y)/1000) 
										             	var timestamp31s = Number(val.x)/1000;
														var newDateas = new Date();
														newDateas.setTime(timestamp31s * 1000);
														yyis = newDateas.getFullYear(); 
														ones.push(yyis)														
							            }) 
									            response.data[1].values.forEach(function(val,index, arr){
									               threes.push(Number(val.y)/1000) 												
									            }) 

                			charts7(twos,threes)
                        })
                        
             //   })
        })
    }
    



                			function charts7(h,k){
                					echarts.dispose(document.getElementById("pie2"))
                					myCharts2= echarts.init(document.getElementById('pie2'))
			                         myCharts2.setOption({
			                         	backgroundColor:'rgba(49,49,49,0.3)',
			                         			    title: {
												        text: '设计款式（类型）总汇',
												        left: 'left'
												    },
												    tooltip: {
												        trigger: 'item',
												        formatter: '{a} <br/>{b} : {c}'
												    },
												    legend: {
												        left: 'right',
												        data: ['designone', 'designtwo']
												    },
												    xAxis: {
												        type: 'category',
												        name: 'x',
												        splitLine: {show: true},
												        data: ones
												    },
												    grid: {
												        left: '3%',
												        right: '4%',
												        bottom: '3%',
												        containLabel: true
												    },
												    yAxis: {
												        type: 'log',
												        name: 'y'
												    },
												    series: [
												        {
												            name: 'designone',
												            type: 'line',
												            data: h
												        },
												        {
												            name: 'designtwo',
												            type: 'line',
												            data: k
												        }
												    ]
									
			           				 },true)
			                }