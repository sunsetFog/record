
    function reflash(){
       var url_get = 'http://192.168.0.186:8088/superset/dashboard_json/9/'
        $.get(url_get).done(function(response){
           
               // response.slices.forEach(function(val,index,arr){
                    var url = 'http://192.168.0.186:8088/superset/explore_json/table/'
                        var table_id = response.slices[0].form_data.datasource.split('__')[0]
//                      console.log(table_id)
                        url = url + table_id + '?form_data=' + JSON.stringify(response.slices[0].form_data)
                       
                        $.get(url).done(function(response){
//                      	console.log(response)
                        	onew = []
                        	twow = []
                        	            response.data[0].values.forEach(function(val,index, arr){
							               onew.push(val.x)
							               twow.push(val.y) 
							            })
                        	

//              					nameonef = response.data[0].values[0].x
//              					nametwof = response.data[0].values[1].x
//              					namethreef = response.data[0].values[2].x
//              					namefourf = response.data[0].values[3].x
////            					var arrone = [nameone,nametwo,namethree,namefour]
//      			
//              					 dataone = response.data[0].values[0].y
//              					 datatwo = response.data[0].values[1].y
//              					 datathree = response.data[0].values[2].y
//              					 datafour = response.data[0].values[3].y
//              					 arrtwo = [dataone,datatwo,datathree,datafour]

                			charts(twow)
                        })
                        
             //   })
        })
    }
    



                			function charts(h){
                					echarts.dispose(document.getElementById("pie1"))
                					myCharts= echarts.init(document.getElementById('pie1'))
			                         myCharts.setOption({
			                         			backgroundColor:'rgba(49,49,49,0.3)',
											    color: ['#3398DB'],
											    tooltip : {
											        trigger: 'axis',
											        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
											            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
											        }
											    },
											    grid: {
											        left: '3%',
											        right: '4%',
											        bottom: '3%',
											        containLabel: true
											    },
											    xAxis : [
											        {
											            type : 'category',
//											            data : [nameone, nametwo, namethree, namefour],
											            data : onew,
											            axisTick: {
											                alignWithLabel: true
											            }
											        }
											    ],
											    yAxis : [
											        {
											            type : 'value'
											        }
											    ],
											    series : [
											        {
											            name:'直接访问',
											            type:'bar',
											            barWidth: '60%',
											            data:h
											        }
											    ]
			           				 },true)
			                }