// JavaScript Document
//------------------------------修改语言------------------------------
function editLanguage(){
	document.getElementById('siteLanguageList').className="";
}
function cancelEditLanguage(){
	document.getElementById('siteLanguageList').className="hide";
}

//------------------------------显示当前页位�?-----------------------------
function topMenuThisPage(n){
	var topMenuLi=document.getElementById("top").getElementsByTagName("li");
	for(i=0;i<topMenuLi.length;i++){
		topMenuLi[i].className="";
	}
	topMenuLi[n-1].className="thisPage";
}
function leftMenuThisPage(m,n){
	var leftMenuLi=document.getElementById("left").getElementsByTagName("ul")[m-1].getElementsByTagName("li");
	for(i=0;i<leftMenuLi.length;i++){
		leftMenuLi[i].className="";
	}
	leftMenuLi[n-1].className="thisPage";
}
function mainMenuThisPage(n){
	var mainMenuLi=document.getElementById("mainMenu").getElementsByTagName("li");
	for(i=0;i<mainMenuLi.length;i++){
		mainMenuLi[i].className="";
	}
	mainMenuLi[n-1].className="thisPage";
}
//内容管理显示当前�?
function contentMenuThisPage(){
	var leftMenuLi=document.getElementById("left").getElementsByTagName("ul")[0].getElementsByTagName("li");
	var thisLocation=document.location;
	//循环判断当前页链�?
	for(i=0;i<leftMenuLi.length;i++){
		var aUrl=leftMenuLi[i].getElementsByTagName("a")[0].href;
		if(thisLocation==aUrl){
			leftMenuLi[i].className="thisPage";
		}
		else{
			leftMenuLi[i].className="";
		}
	}
}
//内容管理子标签显示当前页
function contentSubMenuThisPage(){
	var leftMenuLi=document.getElementById("left").getElementsByTagName("ul")[0].getElementsByTagName("li");
	var minaMenuA=document.getElementById("mainMenu").getElementsByTagName("ul")[0].getElementsByTagName("li")[0].getElementsByTagName("a")[0].href;
	var thisLocation=minaMenuA;
	//循环判断当前页链�?
	for(i=0;i<leftMenuLi.length;i++){
		var aUrl=leftMenuLi[i].getElementsByTagName("a")[0].href;
		if(thisLocation==aUrl){
			leftMenuLi[i].className="thisPage";
		}
		else{
			leftMenuLi[i].className="";
		}
	}
}

//------------------------------其他函数------------------------------
//添加栏目 选择栏目属�?---栏目添加�?
function radioAttributer(obj){
    if(obj.checked&&obj.value=="901")
	{
		document.getElementById('tr1').className="show";
		document.getElementById('tr2').className="hide";
		document.getElementById('tr3').className="hide";
		document.getElementById('tr4').className="hide";
	}
	else
	{
		document.getElementById('tr1').className="hide";
		document.getElementById('tr2').className="show";
		document.getElementById('tr3').className="show";
		document.getElementById('tr4').className="show";
	}
	if(obj.checked&&obj.value=="2"||obj.checked&&obj.value=="3"||obj.checked&&obj.value=="4")
	{
		document.getElementById('tr4').className="show";
	}
	else
	{
	    document.getElementById('tr4').className="hide";
	}
}

function radioAttributerLoad(){
obj1=document.getElementById("attributerTr").getElementsByTagName("input")[5];
obj2=document.getElementById("attributerTr").getElementsByTagName("input")[1];
obj3=document.getElementById("attributerTr").getElementsByTagName("input")[2];
obj4=document.getElementById("attributerTr").getElementsByTagName("input")[3];
    if(obj1.checked&&obj1.value=="901")
	{
		document.getElementById('tr1').className="show";
		document.getElementById('tr2').className="hide";
		document.getElementById('tr3').className="hide";
		document.getElementById('tr4').className="hide";
	}
	else
	{
		document.getElementById('tr1').className="hide";
		document.getElementById('tr2').className="show";
		document.getElementById('tr3').className="show";
		document.getElementById('tr4').className="show";
	}
	if(obj2.checked&&obj2.value=="2"||obj3.checked&&obj3.value=="3"||obj4.checked&&obj4.value=="4")
	{
		document.getElementById('tr4').className="show";
	}
	else
	{
	    document.getElementById('tr4').className="hide";
	}
}

//添加友情链接 选择类型----友情链接添加�?
function radioFriendLink(obj){
    if(obj.checked&&obj.value=="true")
	{
		document.getElementById('tr1').className="show";
		document.getElementById('tr2').className="show";
	}
	else
	{
		document.getElementById('tr1').className="show";
		document.getElementById('tr2').className="hide";
	}
}
//添加友情链接 选择类型 初始�?
function radioFriendLinkLoad(){
	obj=document.getElementById("typeTr").getElementsByTagName("input")[0];
    if(obj.checked&&obj.value=="false")
	{
		document.getElementById('tr1').className="show";
		document.getElementById('tr2').className="hide";
	}
	else
	{
		document.getElementById('tr1').className="show";
		document.getElementById('tr2').className="show";
	}
}

//更改自定义属性数�?---在线购物栏目配置�?
function attributeTrShow(obj){
	var num = obj.options[obj.selectedIndex].value;
	for(i=0;i<15;i++){
		if(i<num){
			document.getElementById('attributeTr'+String(i)).className="";
		}
		else{
			document.getElementById('attributeTr'+String(i)).className="hide";
		}
	}
}
//初始化自定义属性数�?---在线购物栏目配置�?
function attributeTrLoad(){
	var obj=document.getElementById("trNum").getElementsByTagName("select")[0];
	var num = obj.options[obj.selectedIndex].value;
	for(i=0;i<15;i++){
		if(i<num){
			document.getElementById('attributeTr'+String(i)).className="";
		}
		else{
			document.getElementById('attributeTr'+String(i)).className="hide";
		}
	}
}
//初始化自定义属性表�?---在线购物栏目产品添加�?
function attributeTrLabelShow(){
	var obj=document.getElementById("attributeTr0").getElementsByTagName("input")[1];
	var num = obj.value;
	for(i=0;i<15;i++){
		if(i<num){
			document.getElementById('attributeTr'+String(i)).className="";
		}
		else{
			document.getElementById('attributeTr'+String(i)).className="hide";
		}
	}
}

//初始化自定义属性表�?---反馈回复�?
function fieldTrLabelShow(){
	var obj=document.getElementById("attributeTr0").getElementsByTagName("input")[0];
	var num = obj.value;
	for(i=0;i<15;i++){
		if(i<num){
			document.getElementById('attributeTr'+String(i)).className="";
		}
		else{
			document.getElementById('attributeTr'+String(i)).className="hide";
		}
	}
}
//
function IndexChange(str)
{
  var content=document.getElementById("ctl00_MidContent_tbbox");
  content.text=str;
  content.value=str;

}
function ShowTB(selectindex)
{
var emali=document.getElementById("emali");
var key=document.getElementById("key");
var username=document.getElementById("username");
var partnertId=document.getElementById("partnerid");
if(selectindex==1)
{
 emali.style.display='none'; 
    key.style.display='';
    username.style.display='';
    partnertId.style.display='none';

}

  if(selectindex==2)
  {
  emali.style.display=''; 
    key.style.display='';
    username.style.display='none';
    partnertId.style.display='';
  }
  
  if(selectindex==3)
  {
  
  emali.style.display='none'; 
     key.style.display='';
     username.style.display='';
   partnertId.style.display='none';

  }
 
  if(selectindex==4)
  {
  
  emali.style.display='none'; 
    key.style.display='';
    username.style.display='';
    partnertId.style.display='none';

  }

  if(selectindex==5)
  {
  emali.style.display='none';
    key.style.display='none';
    username.style.display='';
    partnertId.style.display='none'
  }
  
}
function IndexChange(str)
{
  var content=document.getElementById("ctl00_MidContent_tbbox");
  content.text=str;
  content.value=str;

}