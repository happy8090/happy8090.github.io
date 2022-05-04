<!--
// 友情链接滚动脚本
//alert(navigator.userAgent);
var rollspeed=30
var myInter;
var ff=navigator.userAgent.indexOf("Firefox")>=0;
function MarqueeV(){
	var ooRollV=document.getElementById("oRollV");
	var ooRollV1=document.getElementById("oRollV1");
	var ooRollV2=document.getElementById("oRollV2");
	if (ooRollV.scrollTop>=(ff ? ooRollV.scrollHeight/2 : ooRollV1.scrollHeight)){
		ooRollV.scrollTop=1;	
	}else{
		ooRollV.scrollTop++;
	}
}
function StartRollV() {
	var ooRollV=document.getElementById("oRollV");
	var ooRollV1=document.getElementById("oRollV1");
	var ooRollV2=document.getElementById("oRollV2");
	if (ooRollV) {
		if (parseInt(ooRollV.style.height)>=ooRollV1.scrollHeight) {
			ooRollV.style.height = ooRollV1.scrollHeight;
			return;
		}
		ooRollV2.innerHTML=ooRollV1.innerHTML;
		myInter=setInterval(MarqueeV,rollspeed);
		ooRollV.onmouseover=function() {clearInterval(myInter)};
		ooRollV.onmouseout=function() {myInter=setInterval(MarqueeV,rollspeed)};
	}
}
function MarqueeH(){
	var ooRollH=document.getElementById("oRollH");
	var ooRollH1=document.getElementById("oRollH1");
	var ooRollH2=document.getElementById("oRollH2");
	if(ooRollH2.offsetLeft-ooRollH.scrollLeft<=0) {
		ooRollH.scrollLeft-=ooRollH1.offsetWidth;
	}else{
		ooRollH.scrollLeft++;
	}
}
function StartRollH() {
	var ooRollH=document.getElementById("oRollH");
	var ooRollH1=document.getElementById("oRollH1");
	var ooRollH2=document.getElementById("oRollH2");
	if (ooRollH) {
		if (parseInt(ooRollH.style.width)>=ooRollH2.offsetLeft) {
			oRollH.style.width = oRollH2.offsetLeft;
			return;
		}
		ooRollH2.innerHTML=ooRollH1.innerHTML;
		myInter=setInterval(MarqueeH,rollspeed);
		ooRollH.onmouseover=function() {clearInterval(myInter)};
		ooRollH.onmouseout=function() {myInter=setInterval(MarqueeH,rollspeed)};
	}
}



-->