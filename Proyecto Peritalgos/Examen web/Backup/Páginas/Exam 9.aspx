﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Exam 9.aspx.cs" Inherits="Examen_web.Páginas.Exam_9" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Timer ID="Tiempo" runat="server" Interval="1000" ontick="Tiempo_Tick">
                </asp:Timer>
                <asp:TextBox ID="txthoras" runat="server" Enabled="False" Width="24px">01</asp:TextBox>
                :<asp:TextBox ID="txtmin" runat="server" Enabled="False" Width="24px">59</asp:TextBox>
                :<asp:TextBox ID="txtseg" runat="server" Enabled="False" Width="24px">59</asp:TextBox>
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />
        <asp:Panel ID="Panel41" runat="server">
        <asp:Image ID="Image41" runat="server" />
        <br />
            <asp:Label ID="lblpregunta41" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:RadioButton ID="rdbres1preg41" runat="server" GroupName="preg1" />
            <br />
            <asp:RadioButton ID="rdbres2preg41" runat="server" GroupName="preg1" />
            <br />
            <asp:RadioButton ID="rdbres3preg41" runat="server" GroupName="preg1" />
            <br />
            <asp:RadioButton ID="rdbres4preg41" runat="server" GroupName="preg1" />
        </asp:Panel>
        <br />
        <br />
        <asp:Panel ID="Panel42" runat="server">
        <asp:Image ID="Image42" runat="server" />
        <br />
            <asp:Label ID="lblpregunta42" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:RadioButton ID="rdbres1preg42" runat="server" GroupName="preg2" />
            <br />
            <asp:RadioButton ID="rdbres2preg42" runat="server" GroupName="preg2" />
            <br />
            <asp:RadioButton ID="rdbres3preg42" runat="server" GroupName="preg2" />
            <br />
            <asp:RadioButton ID="rdbres4preg42" runat="server" GroupName="preg2" />
        </asp:Panel>
&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Panel ID="Panel43" runat="server">
        <asp:Image ID="Image43" runat="server" />
        <br />
            <asp:Label ID="lblpregunta43" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:RadioButton ID="rdbres1preg43" runat="server" GroupName="preg3" />
            <br />
            <asp:RadioButton ID="rdbres2preg43" runat="server" GroupName="preg3" />
            <br />
            <asp:RadioButton ID="rdbres3preg43" runat="server" GroupName="preg3" />
            <br />
            <asp:RadioButton ID="rdbres4preg43" runat="server" GroupName="preg3" />
        </asp:Panel>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Panel ID="Panel44" runat="server">
            <asp:Image ID="Image44" runat="server" />
            <br />
            <asp:Label ID="lblpregunta44" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:RadioButton ID="rdbres1preg44" runat="server" GroupName="preg4" />
            <br />
            <asp:RadioButton ID="rdbres2preg44" runat="server" GroupName="preg4" />
            <br />
            <asp:RadioButton ID="rdbres3preg44" runat="server" GroupName="preg4" />
            <br />
            <asp:RadioButton ID="rdbres4preg44" runat="server" GroupName="preg4" />
        </asp:Panel>
        <br />
        <br />
        <asp:Panel ID="Panel45" runat="server">
        <asp:Image ID="Image45" runat="server" />
        <br />
            <asp:Label ID="lblpregunta45" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:RadioButton ID="rdbres1preg45" runat="server" GroupName="preg5" />
            <br />
            <asp:RadioButton ID="rdbres2preg45" runat="server" GroupName="preg5" />
            <br />
            <asp:RadioButton ID="rdbres3preg45" runat="server" GroupName="preg5" />
            <br />
            <asp:RadioButton ID="rdbres4preg45" runat="server" GroupName="preg5" />
        </asp:Panel>
        <br />
        <asp:Button ID="btn_siguiente" runat="server" onclick="Button1_Click" 
            Text="Siguiente" />
        <br />
    
    </div>
    </form>
</body>
</html>
