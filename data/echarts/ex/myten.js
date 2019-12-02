    function reflash10(){
       var url_get = 'http://192.168.0.186:8088/superset/dashboard_json/15/'
        $.get(url_get).done(function(response){
//         console.log(response)
               // response.slices.forEach(function(val,index,arr){
                    var url = 'http://192.168.0.186:8088/superset/explore_json/table/'
                        var table_id = response.slices[0].form_data.datasource.split('__')[0]
                        console.log(table_id)
                        url = url + table_id + '?form_data=' + JSON.stringify(response.slices[0].form_data)
                       
                        $.get(url).done(function(response){
//                      console.log(response)
                        	ones4 = []
                        	twos4 = []
                        
                        	            response.data.forEach(function(val,index, arr){
							             twos4.push(val.x)   
							                              ones4.push({
											                    'value':Number(val.y)/1000,
											                    'name': val.x
											               })
							            })
                        	            
//                      	            
//              					names1 = response.data[0].x
//              					names2 = response.data[1].x
//              					names3 = response.data[2].x
//              					names4 = response.data[3].x
//              					arrs1 = [names1,names2,names3,names4]
//              					datas1 = Number(response.data[0].y)/1000
//              					datas2 = Number(response.data[1].y)/1000
//              					datas3 = Number(response.data[2].y)/1000
//              					datas4 = Number(response.data[3].y)/1000
                			charts10(ones4)
                        })
                        
             
        })
    }
    



                			function charts10(a){
                					echarts.dispose(document.getElementById("pie5"))
                					myCharts= echarts.init(document.getElementById('pie5'))
			                         myCharts.setOption({
			                         					backgroundColor:'rgba(49,49,49,0.3)',
			                         					title: {
												        text: '设计款式（类型）总汇',
												        left: 'left'
												   		 },
													    tooltip: {
													        trigger: 'item',
													        formatter: "{a} <br/>{b}: {c} ({d}%)"
													    },
													    legend: {
													        orient: 'vertical',
													        x: 'left',
													        y:'center',//bottom:'left'始终有一边不行
													        data:twos4
//													        data:['直接访问','邮件营销','联盟广告','视频广告']
													    },
													    series: [
													        {
													            name:'访问来源',
													            type:'pie',
													            radius: ['50%', '70%'],
													            avoidLabelOverlap: false,
													            label: {
													                normal: {
													                    show: false,
													                    position: 'center'
													                },
													                emphasis: {
													                    show: true,
													                    textStyle: {
													                        fontSize: '30',
													                        fontWeight: 'bold'
													                    }
													                }
													            },
													            labelLine: {
													                normal: {
													                    show: false
													                }
													            },
													            data:a,
//													            data:[
//													                {value:a, name:names1},
//													                {value:b, name:names2},
//													                {value:c, name:names3},
//													                {value:d, name:names4},
//													            ]
													        }
													    ]
			           				 },true)
			                }