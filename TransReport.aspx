<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageHome.master" AutoEventWireup="true" CodeFile="TransReport.aspx.cs" Inherits="TransReport" %>

<%@ Register src="WUCTransReport.ascx" tagname="WUCTransReport" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:WUCTransReport ID="WUCTransReport1" runat="server" />
    </form>
</asp:Content>

