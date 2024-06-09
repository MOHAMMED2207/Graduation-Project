<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageHome.master" AutoEventWireup="true" CodeFile="Trans.aspx.cs" Inherits="Trans" %>

<%@ Register src="WUCtransprtation.ascx" tagname="WUCtransprtation" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:WUCtransprtation ID="WUCtransprtation1" runat="server" />
    </form>
</asp:Content>

