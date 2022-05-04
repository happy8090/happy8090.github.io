function showtime() 
{ 
  var today,hour,second,minute,year,month,date; 
  var strDate ; 
  today=new Date(); 
  var n_day = today.getDay(); 
  var obj_timer=document.getElementById('time');
  var TimeShowLanguage=obj_timer.getAttribute("SiteLanguage");
  switch (n_day) 
  { 
    case 0:{ 
	     if(TimeShowLanguage==1)
	     {
           strDate = "星期日" ;
	     }
	     else
	     {
		  strDate = "Sunday" ;
		 }
      }break; 
      case 1:{ 
	     if(TimeShowLanguage==1)
	     {
           strDate = "星期一" ;
	     }
	     else
	     {
		  strDate = "Monday" ;
		 }
      }break; 
      case 2:{ 
	     if(TimeShowLanguage==1)
	     {
           strDate = "星期二" ;
	     }
	     else
	     {
		  strDate = "Monday" ;
		 }
      }break; 
      case 3:{ 
	     if(TimeShowLanguage==1)
	     {
           strDate = "星期三" ;
	     }
	     else
	     {
		  strDate = "Wednesday" ;
		 }
      }break; 
      case 4:{ 
	     if(TimeShowLanguage==1)
	     {
           strDate = "星期四" ;
	     }
	     else
	     {
		  strDate = "Thursday" ;
		 }
      }break; 
      case 5:{
		 if(TimeShowLanguage==1)
	     {
           strDate = "星期五" ;
	     }
	     else
	     {
		  strDate = "Friday" ;
		 }
      }break; 
      case 6:{ 
	     if(TimeShowLanguage==1)
	     {
           strDate = "星期六" ;
	     }
	     else
	     {
		  strDate = "Saturday " ;
		 } 
      }break; 
      case 7:{ 
         if(TimeShowLanguage==1)
	     {
           strDate = "星期日" ;
	     }
	     else
	     {
		  strDate = "Sunday" ;
		 }
      }break; 
  } 
  year = today.getYear(); 
  month = today.getMonth()+1; 
  date = today.getDate(); 
  hour = today.getHours(); 
  minute =today.getMinutes(); 
  second = today.getSeconds(); 
  if(month<10) month="0"+month; 
  if(date<10) date="0"+date; 
  if(hour<10) hour="0"+hour; 
  if(minute<10) minute="0"+minute; 
  if(second<10) second="0"+second;
  
  var dispay="";
  if(obj_timer.getAttribute("YearMonth")=="true")
  {
    if(obj_timer.getAttribute("YMFormate")!="")
    {
      dispay+=year +obj_timer.getAttribute("YMFormate") + month + obj_timer.getAttribute("YMFormate") + date + " ";
    }
    else
    {
		if(TimeShowLanguage==1)
		{
			dispay+=year + "年" + month + "月" + date + "日 ";
		}
		else
		{
			dispay+=year + "/" + month + "/" + date;
		}
      
    }
  }
  if(obj_timer.getAttribute("week")=="true")
 {
   dispay+=strDate+"  ";
 }
 if(obj_timer.getAttribute("hour")=="true")
 {
   dispay+=hour + ":" + minute + ":" + second;
 }
 obj_timer.innerHTML = dispay;
 setTimeout("showtime();", 1000);
} 
