﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNewProjectCategory.aspx.cs" Inherits="USTA.WebApplication.Teacher.AddNewProjectCategory" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script type="text/javascript" src="../javascript/jquery-1.4.min.js"></script>
        <script type="text/javascript" src="../javascript/validate/jquery.validate.js"></script>
    <script type="text/javascript" src="../javascript/validate/cmxforms.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#form1").validate();
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>添加新类目</div>
        <div>
            <table width="90%">
                <tr>
                    <td width="30%">类目名称：</td>
                    <td width="70%">
                        <asp:TextBox ID="CatagoryName" runat="server" Width="100" CssClass="required"></asp:TextBox>
                        <asp:HiddenField ID="hf_CategoryId" runat="server"/>
                    </td>
                </tr>
                <tr>
                    <td width="30%">父类目：</td>
                    <td width="70%">
                        <asp:DropDownList ID="RootCategoryList" runat="server" AutoPostBack="true" OnSelectedIndexChanged="RootCategoryList_Changed">
                            <asp:ListItem Value="0">新建一级类目</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="SubCategoryList" runat="server" Visible="false" ></asp:DropDownList>
                        <asp:Literal ID="literal_CategoryPath" runat="server" Visible="false"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td width="30%" valign="top">类目说明：</td>
                    <td width="70%">
                        <asp:TextBox ID="CategoryDesc" runat="server" Columns="40" Rows="3" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" width="100%">
                        <asp:Button ID="btn_AddProjectCategory" runat="server" OnClick="btn_AddProjectCategory_Click" Text="添加类目"/>
                    </td>
                </tr>            
            </table>
        </div>
    </div>
    </form>
</body>
</html>
