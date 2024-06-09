<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageHome.master" AutoEventWireup="true" CodeFile="PaymentTypeReporot.aspx.cs" Inherits="PayReporot" %>

<%@ Register src="WUCPamentReport.ascx" tagname="WUCPamentReport" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:WUCPamentReport ID="WUCPamentReport1" runat="server" />
    </form>
</asp:Content>

