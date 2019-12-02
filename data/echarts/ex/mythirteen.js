    function reflash13(){
       var url_get = 'http://192.168.0.186:8088/superset/dashboard_json/21/'
        $.get(url_get).done(function(response){
//         console.log(response)
               // response.slices.forEach(function(val,index,arr){
                    var url = 'http://192.168.0.186:8088/superset/explore_json/table/'
                        var table_id = response.slices[0].form_data.datasource.split('__')[0]
                        console.log(table_id)
                        url = url + table_id + '?form_data=' + JSON.stringify(response.slices[0].form_data)
                       
                        $.get(url).done(function(response){
                        console.log(response)
                        var hhh = response.data[0][2]
//                      alert(hhh)
                        	ones6 = []
                        	twos6 = []
                        
                        	            response.data.forEach(function(val,index, arr){
//							             twos6.push(val.x)   
							                              ones6.push({
											                    'value':Number(val[2])/1000,
											                    'name': val[0]
											               })
							            })
//                      	            alert(ones6)
                			charts13()
                        })
                        
             //   })
        })
    }
    



                			function charts13(){
                					echarts.dispose(document.getElementById("pie8"))
                					myCharts= echarts.init(document.getElementById('pie8'))
			                         myCharts.setOption({
			                         			backgroundColor:'rgba(49,49,49,0.3)',
											    title: {
											        text: "",
											        subtext: "",
											        left: "center",
											        textStyle: {
											            color: "#fff",
											            fontSize: 18
											        },
											    },
											
											    backgroundColor: new echarts.graphic.RadialGradient(0, 0, 1, [{
											        offset: 0,
											        color: 'rgba(49,49,49,0.3)'
											    }, {
											        offset: 1,
											        color: 'rgba(49,49,49,0.3)'
											    }]),
											    tooltip: {
											        trigger: 'item',
											        formatter: "{a} <br/>{b}:({d}%)"
											    },
											    series: [{
											        name: '二级指标',
											        type: 'pie',
											        radius: ['32%', '60%'],
											        label: {
											            normal: {
											                position: 'inner'
											            }
											        },
											        data:ones6
											    }, {
											        name: '三级指标',
											        type: 'pie',
											        radius: ['62%', '70%'],
											        label: {
											            normal: {
											                position: 'outer'
											            }
											        },
											        data: ones6
											    }]
			           				 },true)
			                }