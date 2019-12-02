    function reflash11(){
       var url_get = 'http://192.168.0.186:8088/superset/dashboard_json/16/'
        $.get(url_get).done(function(response){
//           console.log(response)
           titles = response.dashboard_title
               // response.slices.forEach(function(val,index,arr){
                    var url = 'http://192.168.0.186:8088/superset/explore_json/table/'
                        var table_id = response.slices[0].form_data.datasource.split('__')[0]
                        console.log(table_id)
                        url = url + table_id + '?form_data=' + JSON.stringify(response.slices[0].form_data)
                       
                        $.get(url).done(function(response){
//                        console.log(response)
                        	ones5 = []
                        	twos5 = []
                        
                        	            response.data.data.forEach(function(val,index, arr){
                        	            	var yu1s = Number(val[0])/1000;
											var su1s = new Date();
											su1s.setTime(yu1s * 1000);  
											var ss1s=su1s.toDateString()
											var arrw1s = [ss1s.substring(3,7),ss1s.substring(10)]
											xi1s = arrw1s.join('') 
							             ones5.push(xi1s) 
							             twos5.push(Number(val[1])/1000)
		
							            })                        

                			charts11()
                        })
                        
             //   })
        })
    }
    



                			function charts11(){
                					echarts.dispose(document.getElementById("pie6"))
                					myCharts= echarts.init(document.getElementById('pie6'))
			                         myCharts.setOption({
			                         			backgroundColor:'rgba(49,49,49,0.3)',
											    title: {
											        text: titles
											    },
											    xAxis: {
											        data: ones5
											    },
											    yAxis: {},
											    series: [{
											        type: 'line',
											        data:twos5
											    }]
			           				 },true)
			                }