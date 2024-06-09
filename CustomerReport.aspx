<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageHome.master" AutoEventWireup="true" CodeFile="CustomerReport.aspx.cs" Inherits="_Default" %><%@ Register src="WUCcustemerReport.ascx" tagname="WUCcustemerReport" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:WUCcustemerReport ID="WUCcustemerReport1" runat="server" />
    </form>
</asp:Content>

