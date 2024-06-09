<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WUCReservation.ascx.cs" Inherits="WUCReservationnn" %>

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
    border: #8f8f8f 1px solid;
    padding: 0px 41px;
    border-radius: 10px;
    width: 100%;
    height: 35px;
    letter-spacing: 1px;
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

    .input_list {
    background: #ffffff;
    border: #8f8f8f 1px solid;
    padding: 6px 22px;
    border-radius: 10px;
    width: 100%;
}

    .auto-style10 {
        color: #ff0000;
        font-size: 12px;
        letter-spacing: 1px;
        font-weight: 700;
        font-family: sans-serif;
        display: flex;
        position: absolute;
        right: 0;
        top: 0px;
        left: 494px;
    }
  

    </style>




<div class="Continer" id="See_Data">

<div class="heder">
<h1 ><asp:Label ID="Label2" runat="server" Text="Reservation" CssClass="h1_hed"></asp:Label> </h1>

      <div class="hedelement_search">
     
           <asp:Button ID="Button1" runat="server"  Text="Search" class="btnStyle_search" CausesValidation="False" OnClick="Button1_Click"  />
                <div class="div_input_icon">
                    <i class="fas fa-search icon_search"></i>  
            <asp:TextBox  placeholder="Search Your Data"  ID="TextBox1" runat="server"  Class="inbutStyle_search"></asp:TextBox>
                </div>
    
           
            </div>


  
</div>
<div class="all_devv">
   <div class="row_Dataa">
             <td >
            <asp:Label class="text_style" ID="Label14" runat="server" Text="Reservation ID	 :"></asp:Label>
        </td>

            <div class="div_input_validd">

             <td class="auto-style5">
            <asp:TextBox ID="txtReservationID" runat="server"  Class="inbutStyle"></asp:TextBox>
        </td>
               <td class="auto-style17"><strong>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtReservationID" CssClass="auto-style10" ErrorMessage="Please Enter ID"></asp:RequiredFieldValidator>
            </strong></td>

                

            </div>
        </div>
     <div class="row_Dataa">
       
        <td >
            <asp:Label class="text_style" ID="Label9" runat="server" Text="Reservation Date	 :"></asp:Label>
        </td>
            <div class="div_input_validd">

            

                <td class="auto-style5">
            <asp:TextBox  placeholder="Enter Your Reservation Date	"  ID="txtReservationDate" runat="server" Class="inbutStyle" TextMode="Date"></asp:TextBox>
        </td>




                 <td class="auto-style17"><strong>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtReservationDate" CssClass="validationStyle" ErrorMessage="Please Enter Reservation Date"></asp:RequiredFieldValidator>
            </strong></td>



            </div>
        </div>




   <div class="row_Dataa">
       
         <td >
            <asp:Label  class="text_style" ID="Label16" runat="server" Text="Recive Date	 :"></asp:Label>
        </td>
            <div class="auto-style8">

            

               <td class="auto-style5">
            <asp:TextBox ID="txtReciveDate"  placeholder="Enter Your Recive Date	" runat="server" Class="inbutStyle" TextMode="Date"></asp:TextBox>
        </td>


  <td class="auto-style14"><strong>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtReciveDate"  Class="validationStyle" ErrorMessage="Please Enter Recive Date	"></asp:RequiredFieldValidator>
            </strong></td>



                    


            </div>
        </div>

       <div class="row_Dataa">
       
         <td >
            <asp:Label  class="text_style" ID="Label17" runat="server" Text="Price :"></asp:Label>
        </td>
            <div class="auto-style8">

            

               <td class="auto-style5">
            <asp:TextBox ID="txtPrice"  placeholder="Enter Your Price" runat="server" Class="inbutStyle"></asp:TextBox>
        </td>


  <td class="auto-style14"><strong>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtPrice"  Class="validationStyle" ErrorMessage="Please Enter Price"></asp:RequiredFieldValidator>
            </strong></td>



            </div>
        </div>




     <div class="row_Dataa">
       
         <td >
            <asp:Label  class="text_style" ID="Label24" runat="server" Text="Oty :"></asp:Label>
        </td>
            <div class="auto-style8">

            

               <td class="auto-style5">
            <asp:TextBox ID="txtOty"  placeholder="Enter Your Qty" runat="server" Class="inbutStyle"></asp:TextBox>
        </td>


  <td class="auto-style14"><strong>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="txtOty"  Class="validationStyle" ErrorMessage="Please Enter Qty "></asp:RequiredFieldValidator>
            </strong></td>



                    


            </div>
        </div>
   <div class="row_Dataa">
       
         <td >
            <asp:Label  class="text_style" ID="Label21" runat="server" Text="Type :"></asp:Label>
        </td>
            <div class="auto-style8">

            

               <td class="auto-style5">
            <asp:TextBox ID="txtType"  placeholder="Enter Your Type" runat="server" Class="inbutStyle"></asp:TextBox>
        </td>


  <td class="auto-style14"><strong>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtType"  Class="validationStyle" ErrorMessage="Please Enter Type "></asp:RequiredFieldValidator>
            </strong></td>



                    


            </div>
        </div>



     <div class="row_Dataa">
             <td >
            <asp:Label class="text_style" ID="Label19" runat="server" Text="Employee ID	"></asp:Label>
        </td>

            <div class="div_input_validd">

             <td class="auto-style5">
        </td>
               <td class="auto-style17"></td>

                

                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="input_list" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="EmployeeID">
                </asp:DropDownList>

                

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT * FROM [Employee]"></asp:SqlDataSource>

                

            </div>
        </div>
      <div class="row_Dataa">
             <td >
            <asp:Label class="text_style" ID="Label1" runat="server" Text="Customr ID	"></asp:Label>
        </td>

            <div class="div_input_validd">

             <td class="auto-style5">
        </td>
               <td class="auto-style17"></td>

                

                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="input_list" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="CustomerID">
                </asp:DropDownList>

                

                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>

                

            </div>
        </div>
    <div class="row_Dataa">
             <td >
            <asp:Label class="text_style" ID="Label3" runat="server" Text="Product Code	"></asp:Label>
        </td>

            <div class="div_input_validd">

             <td class="auto-style5">
        </td>
               <td class="auto-style17"></td>

                

                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="input_list" DataSourceID="SqlDataSource3" DataTextField="name" DataValueField="Productcode">
                </asp:DropDownList>

                

                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>

                

            </div>
        </div>
    <div class="row_Dataa">
             <td >
            <asp:Label class="text_style" ID="Label4" runat="server" Text="Dlivery ID	"></asp:Label>
        </td>

            <div class="div_input_validd">

             <td class="auto-style5">
        </td>
               <td class="auto-style17"></td>

                

                <asp:DropDownList ID="DropDownList4" runat="server" CssClass="input_list" DataSourceID="SqlDataSource4" DataTextField="Name" DataValueField="DeliveryID">
                </asp:DropDownList>

                

                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT * FROM [Delivery]"></asp:SqlDataSource>

                

            </div>
        </div>
    <div class="row_Dataa">
             <td >
            <asp:Label class="text_style" ID="Label5" runat="server" Text="Trans ID	"></asp:Label>
        </td>

            <div class="div_input_validd">

             <td class="auto-style5">
        </td>
               <td class="auto-style17"></td>

                

                <asp:DropDownList ID="DropDownList5" runat="server" CssClass="input_list" DataSourceID="SqlDataSource5" DataTextField="type" DataValueField="TransID">
                </asp:DropDownList>

                

                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT * FROM [Transpiration]"></asp:SqlDataSource>

                

            </div>
        </div>
    <div class="row_Dataa">
             <td >
            <asp:Label class="text_style" ID="Label6" runat="server" Text="Pay ID	"></asp:Label>
        </td>

            <div class="div_input_validd">

             <td class="auto-style5">
        </td>
               <td class="auto-style17"></td>

                

                <asp:DropDownList ID="DropDownList6" runat="server" CssClass="input_list" DataSourceID="SqlDataSource6" DataTextField="Type" DataValueField="PayID">
                </asp:DropDownList>

                

                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT * FROM [PaymentType]"></asp:SqlDataSource>

                

            </div>
        </div>
  
  






</div>

<div class="All_Btn_in_dev">

<div class="btn_3">
            <asp:Button class="btnStyle" ID="btnAdd" runat="server"  Text="Add" OnClick="btnAdd_Click"    />
    <asp:Button ID="btnUpdate" runat="server" Text="Update"  class="btnStyle" OnClick="btnUpdate_Click"  />
            <asp:Button ID="btnDelete" runat="server"  Text="Delete"  class="btnStyle" OnClick="btnDelete_Click"  />
</div>

</div>
 <div class="msg">
            <asp:Label ID="iblmsg" runat="server" Class="masgConfigration"></asp:Label>
 </div>
</div>





















<table>
 
   
    <tr>
        <td class="tr_table_viwe" colspan="3">
            <strong>

<asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" CssClass="gridview" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" DataKeyNames="ReservationID" DataSourceID="SqlDataSource7" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Select" ShowHeader="True" Text="&gt;&gt;" />
        <asp:BoundField DataField="ReservationID" HeaderText="ReservationID" ReadOnly="True" SortExpression="ReservationID" />
        <asp:BoundField DataField="ReservationDate" HeaderText="ReservationDate" SortExpression="ReservationDate" />
        <asp:BoundField DataField="ReciveDtate" HeaderText="ReciveDtate" SortExpression="ReciveDtate" />
        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
        <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
        <asp:BoundField DataField="empname" HeaderText="Employee" SortExpression="empname" />
        <asp:BoundField DataField="custname" HeaderText="Customer" SortExpression="custname" />
        <asp:BoundField DataField="procName" HeaderText="Product" SortExpression="procName" />
        <asp:BoundField DataField="delname" HeaderText="Delivery" SortExpression="delname" />
        <asp:BoundField DataField="transTAYPE" HeaderText="Transpiration" SortExpression="transTAYPE" />
        <asp:BoundField DataField="paytype" HeaderText="Payment" SortExpression="paytype" />
    </Columns>
    <FooterStyle BackColor="#CCCC99" />
    <HeaderStyle BackColor="#262887" Height="50px" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
    <RowStyle BackColor="#b2d0ff" />
    <SelectedRowStyle BackColor="#1e1e1e" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#FBFBF2" />
    <SortedAscendingHeaderStyle BackColor="#848384" />
    <SortedDescendingCellStyle BackColor="#EAEAD3" />
    <SortedDescendingHeaderStyle BackColor="#575357" />
</asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT * FROM [DataView]"></asp:SqlDataSource>

                </strong>
        </td>
    </tr>
</table>
