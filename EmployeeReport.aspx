<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageHome.master" AutoEventWireup="true" CodeFile="EmployeeReport.aspx.cs" Inherits="_Default" %>

<%@ Register src="WUCEmployeereport.ascx" tagname="WUCEmployeereport" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:WUCEmployeereport ID="WUCEmployeereport1" runat="server" />
    </form>
</asp:Content>

