var eventUtil={
			//添加句柄
			addHandler:function (element,type,handler) {
			//element相当于btn2,type此时用的是click类型的，没有on，handler是相当于handler
				if (element.addEventListener){//DOM2级处理程序
					element.addEventListener(type,handler,false);
				}else if(element.attachEvent){//IE事件处理程序
					element.attachEvent('on'+type,handler);//注意要加on,因为默认传递过来的type相当于click那种类型的
				}else {//DOM0级事件处理程序
					element['on'+type]=handler;
					//注意不可以用element.'on'+type,其实element.onclick===element['onclick']
				}
			},
			//删除句柄
			removeHandler:function (element,type,handler) {
				if (element.removeEventListener) {
					element.removeEventListener(type,handler,false);
				}else if (element.detachEvent) {
					element.detachEvent('on'+type,handler);
				}else{
					element['on'+type]=null;
				}
			},
			getEvent:function(event){
				return event?event:window.event;//获取这个事件的对象前面的式子针对的是非IE浏览器，后面的式子针对的是IE浏览器
			},
			getType:function(event) {//获取事件类型
				return event.type;
			},
			getElement:function(event) {//获取事件目标，即这个事件是来自哪个元素
				return event.target||event.srcElement;
			},
			preventDefault:function(event){
				if (event.preventDefault) {//以属性的形式进行判断
					event.preventDefault();
				}else{
					event.returnVlaue=false;//false就表示阻止事件默认行为
				}
			},
			stopPropagation:function(event){
				if (event.stopPropagation) {
					event.stopPropagation();
				}else{
					event.cancleBubble=true;//true就表示阻止事件冒泡
				}
			}


}