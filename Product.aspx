<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageHome.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Prooo" %><%@ Register src="WUCPrpdouct.ascx" tagname="WUCPrpdouct" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:WUCPrpdouct ID="WUCPrpdouct1" runat="server" />
    </form>
</asp:Content>

