//打开购物车
function CartOpen(id,language){
    //window.location.reload();
    window.location.href=location.href;
    var url="../Cart.aspx?id="+id+"&Language="+language;
     var features="width="+screen.width-100+",height="+screen.height/2+",scrollbars=yes,resizable=yes"
	var features="width=700,height=500,scrollbars=yes,resizable=yes"
	var cartWindow = window.open(url,"cart",features,true);
	cartWindow.focus(); 
	 return false; 
}
function CartLink(id,language){
	var url="../Cart.aspx?id="+id+"&Language="+language;
	var features="width="+screen.width-100+",height="+screen.height/2+",scrollbars=yes,resizable=yes"
	var features="width=700,height=500,scrollbars=yes,resizable=yes"
	var cartWindow = window.open(url,"cart",features,true);
	cartWindow.focus(); 
}
//提交订单页模拟回发
function DeliverySubmit(cmd){
    var hiddenField=document.getElementById("DeliverySubmitButtonSpan").getElementsByTagName("input")[1];
	hiddenField.value="1";
    eval(cmd);
}
//提交订单页回发后还原单选的选择
function DeliveryRadiochecked(){
    if(!(document.getElementById("DeliveryRepeaterTd")==null)){
        var deliveryRadio=document.getElementById("DeliveryRepeaterTd").getElementsByTagName("input");
        var hiddenFieldStr=document.getElementById("DeliverySubmitButtonSpan").getElementsByTagName("input")[1].value;

        for(var i=0;i<deliveryRadio.length;i++){
            if(deliveryRadio[i].value==hiddenFieldStr){
                deliveryRadio[i].checked=true;
                return;
            }
        }
    }
}
//提交信息之前设置标识
function MessageSubmit(){
    if(!(document.getElementById("messageSubmitSpan")==null)){
        var isMessageSubmit=document.getElementById("messageSubmitSpan").getElementsByTagName("input")[0];
        isMessageSubmit.value=1;
    }
}
//加入收藏
function AddFavorite(){
	var sTitle=document.title;
	var sURL=document.location.href;
	try
    {
        window.external.addFavorite(sURL, sTitle);
    }
    catch (e)
    {
        try
        {
            window.sidebar.addPanel(sTitle, sURL, "");
        }
        catch (e)
        {
        }
    }
}
//查看投票结果
function ShowVoteOpen(id,language){
    var url="../ShowVoteResult.aspx?id="+id+"&Language="+language;
     var features="width="+screen.width-100+",height="+screen.height/2+",scrollbars=yes,resizable=yes"
	var features="width=700,height=500,scrollbars=yes,resizable=yes"
	var cartWindow = window.open(url,"cart",features,true);
	cartWindow.focus(); 
	 return false; 
}
//派送方式选项变更触发的事件
function DeliveryClientSubmit(id,money_unit)
{ 
     var money=id+".00";
     var deliverymoney=document.getElementById("DeliveryMoney");
     deliverymoney.innerText=money_unit+money;
    
}
//添加类型的交替
function radio(obj){
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
//搜索类别的变化
function load(value){

var panel1=document.getElementById('Search1_Product');
var panel2=document.getElementById('Search1_News');
var panel3=document.getElementById('Search1_Pic');
if(value==0)
{
 panel1.style.display='' ;
 panel2.style.display='none';
 panel3.style.display='none';
}
else
{
if(value==1)
{
panel1.style.display='none';
 panel2.style.display='';
 panel3.style.display='none';
}
else
{
panel1.style.display='none';
 panel2.style.display='none';
 panel3.style.display='';

}
}
}
//搜索类别初始化
function load(){
var ddl=document.getElementById('Search1_ddlCategory');
var panel1=document.getElementById('Search1_Product');
var panel2=document.getElementById('Search1_News');
var panel3=document.getElementById('Search1_Pic');
if(ddl.value==0)
{
 panel1.style.display='' ;
 panel2.style.display='none';
 panel3.style.display='none';
}
else
{
if(ddl.value==1)
{
panel1.style.display='none';
 panel2.style.display='';
 panel3.style.display='none';
}
else
{
panel1.style.display='none';
 panel2.style.display='none';
 panel3.style.display='';
}
}
}

document.writeln("<script language =\"javascript\" type=\"text/javascript\" src=\"/js/WebResource1.js\"></script>");
document.writeln("<script language =\"javascript\" type=\"text/javascript\" src=\"/js/WebResource2.js\"></script>");
document.writeln("<script type=\"text/javascript\" language=\"JavaScript\" src=\"/js/calendarDateInput.js\"></script> ");


