
    function reflash12(){
       var url_get = 'http://192.168.0.186:8088/superset/dashboard_json/17/'
        $.get(url_get).done(function(response){
//         console.log(response)
               // response.slices.forEach(function(val,index,arr){
                    var url = 'http://192.168.0.186:8088/superset/explore_json/table/'
                        var table_id = response.slices[0].form_data.datasource.split('__')[0]
                        console.log(table_id)
                        url = url + table_id + '?form_data=' + JSON.stringify(response.slices[0].form_data)
                       
                        $.get(url).done(function(response){
//                      console.log(response)
                        dataq1 = response.data.records[0].x
                        dataq2 = response.data.records[5].x
                        dataq3 = response.data.records[10].x
                        dataq4 = response.data.records[15].x
                        dataq5 = response.data.records[20].x
                        arrq = [dataq1,dataq2,dataq3,dataq4,dataq5]
//                      alert(arrq)
                        var dataqy1 = response.data.records[0].y
                        var dataqy2 = response.data.records[1].y
                        var dataqy3 = response.data.records[2].y
                        var dataqy4 = response.data.records[3].y
                        var dataqy5 = response.data.records[4].y
                        arrqy = [dataqy1,dataqy2,dataqy3,dataqy4,dataqy5]
                        datashu1 = response.data.records[0].v
                        datashu2 = response.data.records[1].v
                        datashu3 = response.data.records[2].v
                        datashu4 = response.data.records[3].v
                        datashu5 = response.data.records[4].v
                        

                			charts12()
                        })
                        
            
        })
    }
    



                			function charts12(){
                					echarts.dispose(document.getElementById("pie7"))
                					myCharts= echarts.init(document.getElementById('pie7'))
                					
model = {
    yCates: arrqy,
    xCates: [dataq1, dataq2, dataq3, dataq4, dataq5],
    data: [
        // [yCateIndex, xCateIndex, value]
        [0,0,datashu1],[0,1,datashu2],[0,2,datashu3],[0,3,datashu4],[0,4,datashu5],
        [1,0,1],[1,1,2],[1,2,4],[1,3,8],[1,4,2],
        [2,0,2],[2,1,3],[2,2,8],[2,3,6],[2,4,7],
        [3,0,3],[3,1,7],[3,2,5],[3,3,1],[3,4,6],
        [4,0,3],[4,1,2],[4,2,7],[4,3,8],[4,4,9],
        [5,0,2],[5,1,2],[5,2,3],[5,3,4],[5,4,7],
        [6,0,6],[6,1,5],[6,2,3],[6,3,1],[6,4,2]
    ]
};

data = model.data.map(function (item) {
    return [item[1], item[0], item[2] || '-'];
});

			                         myCharts.setOption({
			                         	backgroundColor:'rgba(49,49,49,0.3)',
													    tooltip: {
													        position: 'top'
													    },
													    animation: false,
													    grid: {
//													    	width:'100%',
													        height: '50%',
													        y: '10%'
													    },
													    xAxis: {
													        type: 'category',
													        data: model.xCates
													    },
													    yAxis: {
													        type: 'category',
													        data: model.yCates
													    },
													    visualMap: {
													        min: 1,
													        max: 10,
													        calculable: true,
													        orient: 'horizontal',
													        left: 'center',
													        bottom: '10%'
													    },
													    series: [{
													        name: 'Punch Card',
													        type: 'heatmap',
													        data: data,
													        label: {
													            normal: {
													                show: true
													            }
													        },
													        itemStyle: {
													            emphasis: {
													                shadowBlur: 10,
													                shadowColor: 'rgba(0, 0, 0, 0.5)'
													            }
													        }
													    }]
			           				 },true)
			                }