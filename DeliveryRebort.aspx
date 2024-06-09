<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageHome.master" AutoEventWireup="true" CodeFile="DeliveryRebort.aspx.cs" Inherits="DeliveryRebort" %>

<%@ Register src="WUCDeliveryRebort.ascx" tagname="WUCDeliveryRebort" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:WUCDeliveryRebort ID="WUCDeliveryRebort1" runat="server" />
    </form>
</asp:Content>

