/** 
XmlHttp瀵硅薄
鐢ㄦ硶: XmlHttp.call("get","1.jsp",null,callback);
callback鐨勫啓娉�
蹇呴』鏈変竴涓�鍙傛暟,鐢ㄤ簬鎺ユ敹xmlhttp瀵硅薄: 
function callback(xmlhttp){  
	alert(xmlhttp.responseText);  
}
渚嬪瓙:
   XmlHttp.call("POST","http://127.0.0.1:8080/test/4.jsp",null,fun);
 function fun(xmlhttp){
	alert(xmlhttp.responseText);
}
*/


var XmlHttp=new function(){
	this.init=function(){
		var xmlhttp=false;
		try{
			xmlhttp=new XMLHttpRequest();
		}catch(trymicrosoft){
			try {
			xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");		
			} catch (othermicrosoft) {
				try {
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");		
				} catch (failed) {
				xmlhttp = false;
				}
			}
		}
		if(!xmlhttp){
			alert("鍒涘缓request閿欒,璇风◢鍊欓噸璇�");
			return;
		}
		return xmlhttp;
	}
	
	this.call=function(method,url,content,callback){
		var xmlhttp=this.init();
			xmlhttp.open(method,url);
			if(content!=null && content!=""){
				xmlhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded"); 
				xmlhttp.send(content);
			}else{
				xmlhttp.send(null);
			}
			xmlhttp.onreadystatechange=function(){
				if(xmlhttp.readyState==4&&xmlhttp.status==200){
					//alert(xmlhttp.responseText+xmlhttp);
					callback(xmlhttp);
				}
			}
	}
	this.test=function(a){
		return 'ab:'+a;
	}
}
/**
*  js request瀵硅薄
* 浣滅敤:鑾峰彇url浼犳潵鐨勫弬鏁�
* 鐢ㄦ硶:xx.jsp?aciton=abc; 鍒橰equest.action鐨勫�涓篴bc
* version 1,鏍规嵁key鑾峰彇value,Request.value("name");
* version 2,Request.length;  //璇锋眰鍙傛暟鐨勪釜鏁�
* version 3,Request.names;  //鑾峰彇keys鏁扮粍
* version 4,Request.values; //鑾峰彇values鏁扮粍
*/
  var xmlRequest=new function(){
   var names=[]; //鍙傛暟鍚嶅垪琛�
   var values=[]; //鍙傛暟鍊煎垪琛�
	var queryString=location.search.substr(1);
	var params=queryString.split("&");
	  for(var i=0;i<params.length;i++){
		var param=params[i].split("=");
			names[names.length]=param[0];
			values[values.length]=param[1];
	  }
	this.names=names;
	this.values=values;
	this.length=params.length;
	/*function getParameter
	  null :鏃犳灞炴�
	*/
	this.value=function(name){
		for(i=0;i<names.length;i++){
			if(names[i]==name){
				return values[i];
			}
		}
		return null;
	}
  }