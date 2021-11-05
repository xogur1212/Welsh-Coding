let labelData=new Array();
let dataData=new Array();
let map=new Map();

let set ; 

let uniqueArr ;
let dayPrice=0;

$.ajax({
	url:"ChartData.do",
	success:function(resultData){
		console.log(resultData);
		$.each(resultData.orderList,function(i,item){
			 const productInsertDate= new Date(item.orderDate);
			 let price=0;
			console.log("date",productInsertDate.getMonth()+1 +"." +productInsertDate.getDate())
			labelData.push(productInsertDate.getMonth()+1 +"." +productInsertDate.getDate());
			$.each(item.productOrderDetailList,function(innerI,InnerItem){
				price+=InnerItem.productList[0].productPrice;
			})
			
			console.log("price",price);
			let date=productInsertDate.getMonth()+1 +"." +productInsertDate.getDate();
			
			console.log("dayPrice",dayPrice);
			dayPrice=map.get(date);
			if(dayPrice===undefined){
				dayPrice=0;
			}
			
			map.set(date,dayPrice+price);	
			
			
		})
		set=new Set(labelData);
		uniqueArr= [...set];
		console.log(map);
		for(let [key,value] of map){
			dataData.push(value);
		}
		var ctx = document.getElementById('myChart').getContext('2d');
var myChart = new Chart(ctx, {
    type: 'line',
    data: {
		labels: uniqueArr,
        //labels: ['1월', '2월', '3월', '4월', '5월', '6월'],
        datasets: [{
            label: '일별매출',
            data: dataData,
//data: [12, 19, 3, 5, 2, 3],	
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    }
});

		
		
     
	}
})


