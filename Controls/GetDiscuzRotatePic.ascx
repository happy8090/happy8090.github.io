<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GetDiscuzRotatePic.ascx.cs" Inherits="WangQi.ERP.Web.Controls.GetDiscuzRotatePic" %>
<%if (Discuz.Aggregation.AggregationFacade.BaseAggregation.GetRotatePicData() != null && Discuz.Aggregation.AggregationFacade.BaseAggregation.GetRotatePicData() != "")
      {%>	
			<div class="sidebox" style="padding:1px;">
				<script type='text/javascript'>
				var imgwidth = 317;
				var imgheight = 209;
				</script>	
				<!--图片轮换代码开始-->
				<script type='text/javascript' src="bbs/templates/default/rotatepic.js">
				</script>
				<script type='text/javascript'>
				var data = { };	
				<%=Discuz.Aggregation.AggregationFacade.BaseAggregation.GetRotatePicData().ToString() %>;
				var ri = new MzRotateImage();
				ri.dataSource = data;
				ri.width = 317;
				ri.height = 209;
				ri.interval = 3000;
				ri.duration = 2000;
				document.write(ri.render());				
				</script>
				<!--图片轮换代码结束-->
			</div>
     <%}%>
