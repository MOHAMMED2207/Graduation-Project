<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageHome.master" AutoEventWireup="true" CodeFile="PaymentType.aspx.cs" Inherits="PammentType" %>

<%@ Register src="WUCpayment.ascx" tagname="WUCpayment" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <uc1:WUCpayment ID="WUCpayment1" runat="server" />
</form>
</asp:Content>

