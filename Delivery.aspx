<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageHome.master" AutoEventWireup="true" CodeFile="Delivery.aspx.cs" Inherits="Deliveert" %>

<%@ Register src="WUCdelivery.ascx" tagname="WUCdelivery" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:WUCdelivery ID="WUCdelivery1" runat="server" />
    </form>
</asp:Content>

