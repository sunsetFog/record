//物流部月(周)汇报 
//网址----http://echarts.baidu.com/demo.html#area-stack
function reflash9(){
       var url_get = 'http://192.168.0.186:8088/superset/dashboard_json/8/'
        $.get(url_get).done(function(response){
//              console.log(response)
               // response.slices.forEach(function(val,index,arr){
                    var url = 'http://192.168.0.186:8088/superset/explore_json/table/'
                        var table_id = response.slices[3].form_data.datasource.split('__')[0]
                        console.log(table_id)
                        url = url + table_id + '?form_data=' + JSON.stringify(response.slices[3].form_data)
//                      console.log(url)
                        $.get(url).done(function(response){
                        	ones3 = []
                        	twos3 = []
                        	threes3 = []
                        	fours3 = []
                        	            response.data[0].values.forEach(function(val,index, arr){
							               twos3.push(Number(val.y)/1000) 
										             	var timestamp31sss = Number(val.x)/1000;
														var newDateasss = new Date();
														newDateasss.setTime(timestamp31sss * 1000);
														yyisss = newDateasss.toLocaleDateString(); 
														ones3.push(yyisss)														
							            }) 
									            response.data[1].values.forEach(function(val,index, arr){
									               threes3.push(Number(val.y)/1000) 												
									            }) 
									            response.data[2].values.forEach(function(val,index, arr){
									               fours3.push(Number(val.y)/1000) 												
									            }) 
									            
                			charts9(twos3,threes3,fours3)
                        })

        })
    }
    



                			function charts9(a,b,c){
                					echarts.dispose(document.getElementById("pie4"))
                					myCharts= echarts.init(document.getElementById('pie4'))
			                         myCharts.setOption({
			                         	backgroundColor:'rgba(49,49,49,0.3)',
														    title: {
														        text: '库存占比'
														    },
														    tooltip : {
														        trigger: 'axis',
														        axisPointer: {
														            type: 'cross',
														            label: {
														                backgroundColor: '#6a7985'
														            }
														        }
														    },
														    legend: {
														        data:['stacked','stream','expanded']
														    },
														    toolbox: {
														        feature: {
														            saveAsImage: {}
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
														            boundaryGap : false,
														            data : ones3
														        }
														    ],
														    yAxis : [
														        {
														            type : 'value'
														        }
														    ],
														    series : [
														        {
														            name:'stacked',
														            type:'line',
														            stack: '总量',
														            areaStyle: {normal: {}},
														            data:a
//														            data:[120, 132, 101, 134, 90, 230]
														        },
														        {
														            name:'stream',
														            type:'line',
														            stack: '总量',
														            areaStyle: {normal: {}},
														            data:b
//														            data:[220, 182, 191, 234, 290, 330]
														        },
														        {
														            name:'expanded',
														            type:'line',
														            stack: '总量',
														            areaStyle: {normal: {}},
														            data:c
//														            data:[150, 232, 201, 154, 190, 330]
														        }
														    ]
			           				 },true)
			                }