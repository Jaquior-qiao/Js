//530.js
$(function(){
	//页面加载后向服务器Menushow.do发起ajax get请求
	$.get(
		"Menushow.do",
		//收到服务器响应后的回掉处理函数
		function(data){
			//alert(data);
			console.log(data);
			var obj=eval("("+data+")");  //将json字符串转为为js对象
			for(var i=0;i<obj.length;i++){
				var str="<li><a href='#'>"+obj[i].textword+"</a></li>";
				var num=obj[i].foreignid-1;
				//alert(num);
				$("li.l1").children("ul.menu_box:eq("+num+")").append(str);
			}
		}
	);
	//页面加载后向服务器Pictureshow.do发起ajax get请求
	$.get(
		"Picturehow.do",
		//收到服务器响应后的回掉处理函数
		function(data){
			//alert(data);
			console.log(data);
			var obj=eval("("+data+")");  //将json字符串转为为js对象
			for(var i=0;i<obj.length;i++){
				var str="<li><img src="+obj[i].url+" style='width:1270px;'> </li>";
				console.log(str);
				var num=obj[i].foreignid-1;
				$("div.pic ul").append(str);
			}
		}
	);

	$("#sno").blur(
		function(){
			$.get(
				"checkSnoSame.do?sno="+$(this).val(),
				/*{
					sno:$(this).val()
				},*/
				function(data){
					if(data=="Y")
					{
						$("#sno").next("span").html(
							"<font color=red>学号已存在!</font>");
						$("#sno").val("");
					}
					else{
						$("#sno").next("span").html(
							"<font color=green>该学号可使用!</font>");				
					}
					
				}
			);
		}
	);
	
});
