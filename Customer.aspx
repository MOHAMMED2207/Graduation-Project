<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageHome.master" AutoEventWireup="true" CodeFile="Customer.aspx.cs" Inherits="Custoomerr" %>

<%@ Register src="WUCcustomer.ascx" tagname="WUCcustomer" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:WUCcustomer ID="WUCcustomer1" runat="server" />
    </form>
</asp:Content>

