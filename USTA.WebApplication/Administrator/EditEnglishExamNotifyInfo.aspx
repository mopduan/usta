﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditEnglishExamNotifyInfo.aspx.cs" Inherits="USTA.WebApplication.Administrator.EditEnglishExamNotifyInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="masterHead" runat="server">
    <title></title>
    <script type="text/javascript" src="../javascript/jquery-1.4.min.js"></script>
<script type="text/javascript" src="../javascript/ui/My97DatePicker/WdatePicker.js"></script>
    <!--Validate-->
    <script type="text/javascript" src="../javascript/validate/jquery.validate.js"></script>
    <script type="text/javascript" src="../javascript/validate/cmxforms.js"></script>
    <script type="text/javascript" src="../javascript/Common.js"></script>
    <script charset="utf-8" type="text/javascript" src="/kindeditor/kindeditor.js"></script>
    <script charset="utf-8" type="text/javascript" src="/kindeditor/lang/zh_CN.js"></script>
    <script charset="utf-8" type="text/javascript" src="/javascript/kindeditorInit.js"></script>
    <script type="text/javascript">
        KindEditor.ready(function (K) {
            initKindEditor(K, 'Textarea1', "100%", "260px");
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <table width="100%" class="tableAddStyle"> <tr>
                    <td width="100px" class="border">
                        请选择通知所面向的培养地：
                    </td>
                    <td class="border">
                        <asp:DropDownList ID="ddlLocale" runat="server">
                </asp:DropDownList>
                    </td>
                </tr>
        <tr>
            <td class="border">
                标题：
            </td>
            <td class="border">
                <asp:TextBox ID="txtTitle" runat="server" CssClass="required" Width="400px">
                </asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="border">
                内容：
            </td>
        </tr>
        <tr>
            <td colspan="2" class="border">
                <textarea id="Textarea1" cols="100" rows="8" runat="server" clientidmode="Static"></textarea>
            </td>
        </tr><tr><td class="border">截止日期：</td><td class="border"><input type="text" id="datepicker" runat ="server" onclick="WdatePicker({startDate:'%y-%M-01 00:00:00',dateFmt:'yyyy-MM-dd HH:mm:ss',alwaysUseStartDate:true})" class="required"/></td></tr>  
        <tr>
            <td colspan="2" class="border">
                <span id="spanAttachment" runat="server"></span>
            </td>
        </tr>
        <tr>
            <td class="border">
                修改或添加附件
            </td>
            <td class="border">
            </td>
        </tr>
        <tr>
            <td colspan="2" class="border">
                <!--upload start-->
                <input id="Button3" type="button" value="添加一个附件" onclick="addIframe(<%=fileFolderType %>);" />&nbsp;&nbsp;<b>上传文件大小不超过</b><%=ConfigurationManager.AppSettings["uploadFileLimit"] %>
                <div id="iframes">
                    <asp:Literal ID="ltlAttachment" runat="server"></asp:Literal></div>
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="2" class="border">
                <asp:Button ID="btnUpdate" runat="server" Text="修改" OnClick="btnUpdate_Click" OnClientClick="return checkKindValue('Textarea1');" />
                <asp:HiddenField ID="hidAttachmentId" ClientIDMode="Static" runat="server" Value="" />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <script type="text/javascript">
        $(document).ready(function() {
            $("#form1").validate();
            
         uploadInfo.iframeCount=<%=iframeCount %>;
        });
        
    </script>
    </form>
</body>
</html>