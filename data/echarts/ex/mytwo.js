
    function reflash2(){
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
												    title : {
												        text: '某站点用户访问来源',
												        subtext: '纯属虚构',
												        x:'center'
												    },
												    tooltip : {
												        trigger: 'item',
												        formatter: "{a} <br/>{b} : {c} ({d}%)"
												    },
												    legend: {
												        orient: 'vertical',
												        left: 'left',
												        data: ['直接访问','邮件营销','联盟广告','视频广告','搜索引擎']
												    },
												    series : [
												        {
												            name: '访问来源',
												            type: 'pie',
												            radius : '55%',
												            center: ['50%', '60%'],
												            data:[
												                {value:335, name:'直接访问'},
												                {value:310, name:'邮件营销'},
												                {value:234, name:'联盟广告'},
												                {value:135, name:'视频广告'},
												                {value:1548, name:'搜索引擎'}
												            ],
												            itemStyle: {
												                emphasis: {
												                    shadowBlur: 10,
												                    shadowOffsetX: 0,
												                    shadowColor: 'rgba(0, 0, 0, 0.5)'
												                }
												            }
												        }
												    ]
			           				 },true)
                        })
                        
             //   })
        })
    }