
    function reflash8(){
       var url_get = 'http://192.168.0.186:8088/superset/dashboard_json/9/'
        $.get(url_get).done(function(response){
               
               // response.slices.forEach(function(val,index,arr){
                    var url = 'http://192.168.0.186:8088/superset/explore_json/table/'
                        var table_id = response.slices[4].form_data.datasource.split('__')[0]
                       
                        url = url + table_id + '?form_data=' + JSON.stringify(response.slices[4].form_data)
                  
                        $.get(url).done(function(response){
                        	ones2 = []
                        	twos2 = []
                        	threes2 = []
                        	fours2 = []
                        	            response.data[0].values.forEach(function(val,index, arr){
							               twos2.push(Number(val.y)/1000) 
										             	var timestamp31ss = Number(val.x)/1000;
														var newDateass = new Date();
														newDateass.setTime(timestamp31ss * 1000);
														yyiss = newDateass.toLocaleDateString(); 
														ones2.push(yyiss)														
							            }) 
									            response.data[1].values.forEach(function(val,index, arr){
									               threes2.push(Number(val.y)/1000) 												
									            }) 
									            response.data[2].values.forEach(function(val,index, arr){
									               fours2.push(Number(val.y)/1000) 												
									            }) 
									            
                			charts8(twos2,threes2,fours2)
                        })
                        
             //   })
        })
    }
    



                			function charts8(a,b,c){
                					echarts.dispose(document.getElementById("pie3"))
                					myCharts= echarts.init(document.getElementById('pie3'))
			                         myCharts.setOption({
			                         	backgroundColor:'rgba(49,49,49,0.3)',
													    tooltip : {
													        trigger: 'axis',
													        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
													            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
													        }
													    },
													    legend: {
													        orient: 'vertical',
													        left: 'left',
													        top: 'middle',
													        itemGap: 20,
													        data:['grouped','stacked','advertising']
													    },
													    grid: {
													        width: '85%',
													        height: '90%',
													        left: '15%',
													        right: '4%',
													        bottom: '3%',
													        containLabel: true
													    },
													    xAxis : [
													        {
													            type : 'category',
													            data : ones2
													        }
													    ],
													    yAxis : [
													        {
													            type : 'value'
													        }
													    ],
													    series : [
													        {
													            name:'grouped',
													            type:'bar',
													            stack: '广告',//stack:''分散显示
													            data:a
													        },
													        {
													            name:'stacked',
													            type:'bar',
													            stack: '广告',
													            data:b
													        },
													        {
													            name:'advertising',
													            type:'bar',
													            stack: '广告',
													            data:c
													        }
													        
													    ]
			           				 },true)
			                }