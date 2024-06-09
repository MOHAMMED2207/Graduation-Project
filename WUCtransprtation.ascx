<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WUCtransprtation.ascx.cs" Inherits="WUCtransprtation" %>
<style type="text/css">
        

    .Continer{
        margin:70px auto
    }
    .heder {
    padding: 39px;
    display: flex;
    width: 100%;
    justify-content: space-around;
}


.hedelement_search {
    align-items: center;
    display: flex;
    justify-content: flex-end;
    width: 100%;
}


  .h1_hed {
    color: #3d3d3d;
    display: flex;
    justify-content: center;
}


.all_devv {
    display: flex;
    flex-direction: column;
    padding: 40px 0px;
    box-shadow: 0px 0px 5px 1px #0000007a;
}
    .text_style {
    margin: 0px 14px;
    font-size: 19px;
    font-weight: 500;
    color: black;
}
  .btnStyle {
    background: #4777f5;
    width: 286px;
    padding: 6px;
    border: none;
    margin: 4px;
    border-radius: 10px;
    box-shadow: 0px 3px 2px 0px #00000099;
    color: white;
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
   .btnStyle_search:hover{
      background:  #5b698f;
      transition:all .4s ease

  }
  .btnStyle:hover{
      background:  #5b698f;
      transition:all .4s ease

  }
  input{
    outline:none;
}
 .inbutStyle {
    background: #ffffff;
    border: #8f8f8f 1px solid;
    padding: 6px 22px;
    border-radius: 10px;
    width: 100%;
}
.inbutStyle_search {
    font-weight: 500;
    background: #ffffff;
    border-bottom: #8f8f8f 3px solid;
    padding: 0px 41px;
    border-radius: 10px;
    border-left: 0px;
    outline: none;
    width: 100%;
    height: 35px;
    letter-spacing: 1px;
    border-right: 0px;
    border-top: 0px;
}
 .validationStyle {
    color: #ff0000;
    font-size: 14px;
    letter-spacing: 2px;
    font-weight: 600;
}
 
.row_Dataa {
    padding: 0px 35px;
    display: flex;
    align-items: baseline;
    justify-content: space-between;
    width: 100%;
    margin: 26px 0px;
}




 .div_input_validd {
    position: relative;
    display: flex;
    width: 69%;
    flex-direction: column;
}
 .validationStyle {
    color: #ff0000;
    font-size: 12px;
    letter-spacing: 1px;
    font-family: sans-serif;
    font-weight: 700;
    display: flex;
    position: absolute;
    right: 0;
}

 .btn_3 {
    display: flex;
    justify-content: center;
    align-items: center;
    margin: 36px 0px 0px;
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
.msg {
    font-size: 24px;
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    margin: 40px 0px;
    font-weight: 400;
    color: #2124b1;
}
.tr_table_viwe {
    color: White;
    box-shadow: 0px 0px 4px 1px #06060696;
    font-weight: bold;
    border: none;
        text-align: center;
    text-transform: capitalize;
}

table{margin: auto;
      width:100%
}
 .btn_seleact{
    background: #1e1d1d;
    border: white 1px solid;
    color: white;
    border-radius: 34px;
    font-size: 17px;
}
 th, td {
    border: solid 1px #535353;
    padding: 5px 9px;
}
  .gridview{
        width:100%
    }

    .auto-style8 {
        position: relative;
        display: flex;
        width: 69%;
        flex-direction: column;
        left: 0px;
        top: 0px;
    }


    .auto-style9 {
        border-style: none;
        border-color: inherit;
        border-width: medium;
        color: White;
        box-shadow: 0px 0px 4px 1px #06060696;
        font-weight: bold;
        text-align: center;
        text-transform: capitalize;
        direction: ltr;
    }


    </style>



<div class="Continer" id="See_Data">

<div class="heder">
<h1 ><asp:Label ID="Label1" runat="server" Text="Transpiration" CssClass="h1_hed"></asp:Label> </h1>
  <div class="hedelement_search">
     
           <asp:Button ID="btnSearch" runat="server"  Text="Search" class="btnStyle_search" OnClick="btnSearch_Click" CausesValidation="False" />
                <div class="div_input_icon">
                    <i class="fas fa-search icon_search"></i>  
            <asp:TextBox  placeholder="Search Your Data"  ID="TxtSearch" runat="server"  Class="inbutStyle_search"></asp:TextBox>
                </div>
    
           
            </div>
</div>
<div class="all_devv">
   <div class="row_Dataa">
             <td >
            <asp:Label class="text_style" ID="Label2" runat="server" Text="TransID :"></asp:Label>
        </td>

            <div class="div_input_validd">

             <td class="auto-style5">
            <asp:TextBox ID="TxttransID" runat="server"  Class="inbutStyle" ReadOnly="True"></asp:TextBox>
        </td>
                <td class="auto-style14"><strong>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxttransID" Class="validationStyle" ErrorMessage="Please Enter Trans ID"></asp:RequiredFieldValidator>
            </strong></td>


                

            </div>
        </div>


   <div class="row_Dataa">
       
        <td >
            <asp:Label class="text_style" ID="Label3" runat="server" Text="Type :"></asp:Label>
        </td>
            <div class="div_input_validd">

            

                <td class="auto-style5">
            <asp:TextBox  placeholder="Enter Your Type"  ID="Txttype" runat="server" Class="inbutStyle"></asp:TextBox>
        </td>



                <td class="auto-style14"><strong>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txttype"  Class="validationStyle" ErrorMessage="Please Enter Type "></asp:RequiredFieldValidator>
            </strong></td>
            </div>
        </div>


   <div class="row_Dataa">
       
         <td >
            <asp:Label  class="text_style" ID="Label4" runat="server" Text="Price :"></asp:Label>
        </td>
            <div class="auto-style8">

            

               <td class="auto-style5">
            <asp:TextBox ID="TxtPrice"  placeholder="Enter Your Price" runat="server" Class="inbutStyle"></asp:TextBox>
        </td>


  <td class="auto-style14"><strong>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtPrice"  Class="validationStyle" ErrorMessage="Please Enter Price "></asp:RequiredFieldValidator>
            </strong></td>
            </div>
        </div>
</div>
<div class="All_Btn_in_dev">

<div class="btn_3">
            <asp:Button class="btnStyle" ID="btnAdd" runat="server"  Text="Add"   OnClick="btnAdd_Click" />
            <asp:Button ID="btnUpdate" runat="server" Text="Update"  class="btnStyle" OnClick="btnUpdate_Click" />
            <asp:Button ID="btnDelete" runat="server"  Text="Delete"  class="btnStyle" OnClick="btnDelete_Click" />
</div>

</div>
 <div class="msg">
            <asp:Label ID="iblmsg" runat="server" Class="masgConfigration"></asp:Label>
 </div>
</div>


<table >
    <tr ">
        <td colspan="3" class="auto-style9">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
                <div class="auto-style11">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  CellPadding="4" CssClass="gridview" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#0000" />
                    <Columns>
                        <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="select" ShowHeader="True" Text="&gt;&gt;" >
                        <ControlStyle CssClass="btn_seleact" />
                        </asp:ButtonField>
                        <asp:BoundField DataField="TransID" HeaderText="TransID" />
                        <asp:BoundField DataField="Type" HeaderText="Type" />
                        <asp:BoundField DataField="Price" HeaderText="Price" />
                    </Columns>
                    <EditRowStyle BackColor="#4777f529" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#393939" Height="50px"  Font-Bold="True" ForeColor="White" />
                    <RowStyle  BackColor="#91919194" ForeColor="#333333" />
                    <PagerStyle BackColor="#0000" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#1e1e1e" Font-Bold="True" ForeColor="White"/>
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                </div>
        </td>
    </tr>
</table>
