<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageHome.master" AutoEventWireup="true" CodeFile="productReoport.aspx.cs" Inherits="Default2" %>

<%@ Register src="WUCProductReport.ascx" tagname="WUCProductReport" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:WUCProductReport ID="WUCProductReport1" runat="server" />
    </form>
</asp:Content>

