<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WUCProductReport.ascx.cs" Inherits="WUCProductReport" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<style type="text/css">

    .auto-style1 {
        width: 100%;
    }

 .btnStyle_search {
    background: #4777f5;
    width: 146px;
    padding: 6px;
    height: 35px;
    border: none;
    margin: 0px 4px;
    border-radius: 10px;
    box-shadow: 0px 3px 2px 0px #00000099;
    color: white;
}
   .div_input_icon {
    display: flex;
    width: 30%;
    align-items: center;
}
.icon_search {
    position: absolute;
    font-size: 16px;
    color: #7b7b7b;
    margin: 14px 19px;
}
.inbutStyle_search {
    font-weight: 500;
    background: #ffffff;
    border: #8f8f8f 1px solid;
    padding: 0px 41px;
    border-radius: 10px;
    width: 100%;
    height: 35px;
    letter-spacing: 1px;
}
 </style>

<table class="auto-style1">
    <tr>
        <td>
     
           <asp:Button ID="Button1" runat="server"  Text="Viwe" class="btnStyle_search" CausesValidation="False" OnClick="Button1_Click" />
                <div class="div_input_icon">
                    <i class="fas fa-search icon_search"></i>  
            <asp:TextBox  placeholder="Viwe Your Data"  ID="TextBox1" runat="server"  Class="inbutStyle_search"></asp:TextBox>
                </div>
    
           
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <CR:CrystalReportViewer ID="CrystalReportViewer2" runat="server" AutoDataBind="true" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>


