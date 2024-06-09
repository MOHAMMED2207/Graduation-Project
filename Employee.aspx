<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Employee.aspx.cs" Inherits="Employee" %>

<%@ Register src="WUEmployee.ascx" tagname="WUEmployee" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <uc1:WUEmployee ID="WUEmployee1" runat="server" />
    </form>
</asp:Content>

