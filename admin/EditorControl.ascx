<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EditorControl.ascx.cs" Inherits="WangQi.ERP.Web.admin.EditorControl" %>
<link rel="STYLESHEET" type="text/css" href="wbTextBox/edit.css">
<div id="mainPanel">
	<!----------Web Wiz Forums Rich Text Editor  (WYSIWYG) --------------------->
	<script src="wbTextBox/edit.js" type="text/javascript"></script>
	<%Response.Write("<input  id=\"Body\" name=\"Body\" type=\"hidden\" value='"+m_strText+"'>");%>
	<table ID='WBTB_Container' class="WBTB_Body" width="<%=m_width%>" height="<%=m_height%>" cellpadding="3" cellspacing="0"
		border="0">
		<tr id="WBTB_Toolbars">
			<td>
				<table cellpadding="0" cellspacing="0">
					<tr class="yToolbar">
						<td>
							<select ID="WBTB_formatSelect" class="WBTB_TBGen" onchange="WBTB_doSelectClick('FormatBlock',this)"
								style="FONT: icon; WIDTH: 80px">
								<option selected>段落格式</option>
								<option VALUE="<P>">
								Normal
								<option VALUE="<H1>">
								Heading 1
								<option VALUE="<H2>">
								Heading 2
								<option VALUE="<H3>">
								Heading 3
								<option VALUE="<H4>">
								Heading 4
								<option VALUE="<H5>">
								Heading 5
								<option VALUE="<H6>">
								Heading 6
								<option VALUE="<H7>">
								Heading 7
								<option VALUE="<PRE>">
								Formatted
								<option VALUE="<ADDRESS>">Address</option>
							</select>
							<select language="javascript" class="WBTB_TBGen" id="FontName" onchange="WBTB_format('fontname',this[this.selectedIndex].value);">
								<option class="heading" selected>
								字体
								<option value="宋体">
								宋体
								<option value="黑体">
								黑体
								<option value="楷体_GB2312">
								楷体
								<option value="仿宋_GB2312">
								仿宋
								<option value="隶书">
								隶书
								<option value="幼圆">
								幼圆
								<option value="新宋体">
								新宋体
								<option value="细明体">
								细明体
								<option value="Arial">
								Arial
								<option value="Arial Black">
								Arial Black
								<option value="Arial Narrow">
								Arial Narrow
								<option value="Bradley Hand ITC">
								Bradley Hand ITC
								<option value="Brush Script&#9;MT">
								Brush Script MT
								<option value="Century Gothic">
								Century Gothic
								<option value="Comic Sans MS">
								Comic Sans MS
								<option value="Courier">
								Courier
								<option value="Courier New">
								Courier New
								<option value="MS Sans Serif">
								MS Sans Serif
								<option value="Script">
								Script
								<option value="System">
								System
								<option value="Times New Roman">
								Times New Roman
								<option value="Viner Hand ITC">
								Viner Hand ITC
								<option value="Verdana">
								Verdana
								<option value="Wide Latin">
								Wide Latin
								<option value="Wingdings">Wingdings</option>
							</select>
							<select language="javascript" class="WBTB_TBGen" id="FontSize" onchange="WBTB_format('fontsize',this[this.selectedIndex].value);">
								<option class="heading" selected>
								字号
								<option value="1">
								1
								<option value="2">
								2
								<option value="3">
								3
								<option value="4">
								4
								<option value="5">
								5
								<option value="6">
								6
								<option value="7">7</option>
							</select>
							<select class="WBTB_TBGen" onchange="WBTB_InsertSymbol(this[this.selectedIndex].innerText);this.selectedIndex=0;">
								<option selected>符号</option>
								<option value="&amp;#162;">¢</option>
								<option value="&amp;#163;">£</option>
								<option value="&amp;#165;">¥</option>
								<option value="&amp;#166;">¦</option>
								<option value="&amp;#169;">©</option>
								<option value="&amp;#174;">®</option>
								<option value="&amp;#176;">°</option>
								<option value="&amp;#177;">±</option>
								<option value="&amp;#183;">·</option>
								<option value="&amp;#171;">«</option>
								<option value="&amp;#187;">»</option>
								<option value="&amp;#188;">¼</option>
								<option value="&amp;#189;">½</option>
								<option value="&amp;#190;">¾</option>
								<option value="&amp;#247;">÷</option>
								<option value="&amp;#8224;">†</option>
								<option value="&amp;#8225;">‡</option>
								<option value="&amp;#8364;">€</option>
								<option value="&amp;#8482;">™</option>
							</select>
						</td>
						<td class="WBTB_Btn" TITLE="插入Flash" LANGUAGE="javascript" onclick="WBTB_forswf()">
							<img class="WBTB_Ico" src="wbTextBox/images/swf.gif" WIDTH="16" HEIGHT="16" unselectable="on">
						</td>
						<td class="WBTB_Btn" TITLE="插入Windows Media" LANGUAGE="javascript" onclick="WBTB_forwmv()">
							<img class="WBTB_Ico" src="wbTextBox/images/wmv.gif" WIDTH="16" HEIGHT="16" unselectable="on">
						</td>
						<td class="WBTB_Btn" TITLE="插入Real Media" LANGUAGE="javascript" onclick="WBTB_forrm()">
							<img class="WBTB_Ico" src="wbTextBox/images/rm.gif" WIDTH="16" HEIGHT="16" unselectable="on">
						</td>
					</tr>
				</table>
				<table cellpadding="0" cellspacing="0">
					<tr class="yToolbar">
						<td class="WBTB_Btn" TITLE="字体颜色" LANGUAGE="javascript" onclick="WBTB_foreColor();">
							<img class="WBTB_Ico" src="wbTextBox/images/fgcolor.gif" WIDTH="16" HEIGHT="16" unselectable="on">
						</td>
						<td class="WBTB_Btn" TITLE="字体背景颜色" LANGUAGE="javascript" onclick="WBTB_backColor();">
							<img class="WBTB_Ico" src="wbTextBox/images/fbcolor.gif" WIDTH="16" HEIGHT="16" unselectable="on">
						</td>
						<td class="WBTB_Btn" TITLE="替换" LANGUAGE="javascript" onclick="WBTB_replace()">
							<img class="WBTB_Ico" src="wbTextBox/images/replace.gif" WIDTH="16" HEIGHT="16">
						</td>
						<!--------------------------------------插入图片--------------------------------------------------
						<td class="WBTB_Btn" TITLE="插入图片" LANGUAGE="javascript" onclick="WBTB_UserDialog('InsertImage');">
							<img class="WBTB_Ico" src="wbTextBox/images/img.gif" WIDTH="16" HEIGHT="16" unselectable="on">
						</td>
						-------------------------------------------------------------------------------------------------->
						<td class="WBTB_Btn" TITLE="插入URL图片" LANGUAGE="javascript" onclick="WBTB_UrlImage()">
							<img class="WBTB_Ico" src="wbTextBox/images/img.gif" WIDTH="16" HEIGHT="16" unselectable="on">
						</td>
						<td class="WBTB_Btn" TITLE="上传图片" LANGUAGE="javascript" onclick="WBTB_uploadImage('<%=m_ImageMaxSize.ToString()%>')">
							<img class="WBTB_Ico" src="wbTextBox/images/img.gif" WIDTH="16" HEIGHT="16" unselectable="on">
						</td>
						<td class="WBTB_Btn" TITLE="插入水平线" LANGUAGE="javascript" onclick="WBTB_format('InsertHorizontalRule')">
							<img class="WBTB_Ico" src="wbTextBox/images/hr.gif" WIDTH="16" HEIGHT="16" unselectable="on">
						</td>
						<td>
							<img src="wbTextBox/images/separator.gif">
						</td>
						<td class="WBTB_Btn" TITLE="加粗" LANGUAGE="javascript" onclick="WBTB_format('bold');">
							<img class="WBTB_Ico" src="wbTextBox/images/bold.gif" WIDTH="16" HEIGHT="16" unselectable="on">
						</td>
						<td class="WBTB_Btn" TITLE="斜体" LANGUAGE="javascript" onclick="WBTB_format('italic');">
							<img class="WBTB_Ico" src="wbTextBox/images/italic.gif" WIDTH="16" HEIGHT="16" unselectable="on">
						</td>
						<td class="WBTB_Btn" TITLE="下划线" LANGUAGE="javascript" onclick="WBTB_format('underline');">
							<img class="WBTB_Ico" src="wbTextBox/images/underline.gif" WIDTH="16" HEIGHT="16" unselectable="on">
						</td>
						<td class="WBTB_Btn" TITLE="上标" LANGUAGE="javascript" onclick="WBTB_format('superscript');">
							<img class="WBTB_Ico" src="wbTextBox/images/superscript.gif" WIDTH="16" HEIGHT="16" unselectable="on">
						</td>
						<td class="WBTB_Btn" TITLE="下标" LANGUAGE="javascript" onclick="WBTB_format('subscript');">
							<img class="WBTB_Ico" src="wbTextBox/images/subscript.gif" WIDTH="16" HEIGHT="16" unselectable="on">
						</td>
						<td class="WBTB_Btn" TITLE="删除线" LANGUAGE="javascript" onclick="WBTB_format('strikethrough');">
							<img class="WBTB_Ico" src="wbTextBox/images/strikethrough.gif" WIDTH="16" HEIGHT="16"
								unselectable="on">
						</td>
						<td class="WBTB_Btn" TITLE="取消格式" LANGUAGE="javascript" onclick="WBTB_format1('RemoveFormat');">
							<img class="WBTB_Ico" src="wbTextBox/images/removeformat.gif" WIDTH="16" HEIGHT="16"
								unselectable="on">
						</td>
						<td>
							<img src="wbTextBox/images/separator.gif">
						</td>
						<td class="WBTB_Btn" TITLE="左对齐" NAME="Justify" LANGUAGE="javascript" onclick="WBTB_format('justifyleft');">
							<img class="WBTB_Ico" src="wbTextBox/images/aleft.gif" WIDTH="16" HEIGHT="16" unselectable="on">
						</td>
						<td class="WBTB_Btn" TITLE="居中" NAME="Justify" LANGUAGE="javascript" onclick="WBTB_format('justifycenter');">
							<img class="WBTB_Ico" src="wbTextBox/images/center.gif" WIDTH="16" HEIGHT="16" unselectable="on">
						</td>
						<td class="WBTB_Btn" TITLE="右对齐" NAME="Justify" LANGUAGE="javascript" onclick="WBTB_format('justifyright');">
							<img class="WBTB_Ico" src="wbTextBox/images/aright.gif" WIDTH="16" HEIGHT="16" unselectable="on">
						</td>
						<td>
							<img src="wbTextBox/images/separator.gif">
						</td>
						<td class="WBTB_Btn" TITLE="插入超级链接" LANGUAGE="javascript" onclick="WBTB_UserDialog('CreateLink')">
							<img class="WBTB_Ico" src="wbTextBox/images/wlink.gif" WIDTH="18" HEIGHT="18" unselectable="on">
						</td>
						<td class="WBTB_Btn" TITLE="去掉超级链接" LANGUAGE="javascript" onclick="WBTB_format1('Unlink');">
							<img class="WBTB_Ico" src="wbTextBox/images/unlink.gif" WIDTH="16" HEIGHT="16" unselectable="on">
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td height="100%"><input type="hidden" id="richtext" name="richtext"> <iframe class="WBTB_Composition" ID="WBTB_Composition" onblur="WBTB_CopyData('Body');" MARGINHEIGHT="5"
					MARGINWIDTH="5" width="100%" height="500"></iframe>
			</td>
		</tr>
		<tr>
			<td>
				<TABLE CELLPADDING="0" CELLSPACING="0" BORDER="0" width='100%'>
					<TR>
						<TD width='10'>&nbsp;</TD>
						<TD CLASS="WBTB_TabOn" id="WBTB_TabDesign" onClick="if (WBTB_bTextMode) {WBTB_setMode();}"
							unselectable="on" width='30'><IMG unselectable="on" SRC="wbTextBox/images/mode.design.gif" ALIGN="absMiddle" width="21"
								height="20">&nbsp;Design</TD>
						<td style="WIDTH:10px"></td>
						<TD CLASS="WBTB_TabOff" id="WBTB_TabHtml" onClick="if (!WBTB_bTextMode) {WBTB_setMode();}"
							unselectable="on" width='30'><IMG unselectable="on" SRC="wbTextBox/images/mode.html.gif" ALIGN="absMiddle" width="21"
								height="20">&nbsp;HTML</TD>
						<td style="WIDTH:10px">
						</td>
						<TD CLASS="WBTB_TabOff" id="WBTB_TabView" onClick="WBTB_View();" unselectable="on" width='30'>
							<IMG unselectable="on" SRC="wbTextBox/images/mode.view.gif" ALIGN="absMiddle" width="20"
								height="20">&nbsp;VIEW
						</TD>
						<!------------
						<TD align='right'><a href="javascript:WBTB_Size(-300)"><img src="wbTextBox/images/minus.gif" unselectable="on" border='0'></a>
							<a href="javascript:WBTB_Size(300)"><img src="wbTextBox/images/plus.gif" unselectable="on" border='0'></a></TD>
						
						--------------->
						<TD width='100%'></TD>
					</TR>
				</TABLE>
			</td>
		</tr>
	</table>
</div>
<script language="javascript">WBTB_InitDocument('Body','gb2312');</script>
<!----------Web Wiz Forums Rich Text Editor  (WYSIWYG) --------------------->
