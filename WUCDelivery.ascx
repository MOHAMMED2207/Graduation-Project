<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WUCDelivery.ascx.cs" Inherits="WUCdelivery" %>
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
      width:80%
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
    }


    </style>









<div class="heder">
<h1 ><asp:Label ID="Label7" runat="server" Text="Delivery" CssClass="h1_hed"></asp:Label> </h1>
  <div class="hedelement_search">
     
           <asp:Button ID="Button1" runat="server"  Text="Search" class="btnStyle_search" CausesValidation="False" OnClick="Button1_Click1" />
                <div class="div_input_icon">
            <asp:TextBox  placeholder="Search Your Data"  ID="TxtSearch" runat="server"  Class="inbutStyle_search" OnTextChanged="TxtSearch_TextChanged"></asp:TextBox>
                </div>
    
           
            </div>
</div>
<div class="all_devv">
   <div class="row_Dataa">
             <td >
            <asp:Label class="text_style" ID="Label8" runat="server" Text="DeliveryID :"></asp:Label>
        </td>

            <div class="div_input_validd">

             <td class="auto-style5">
            <asp:TextBox ID="TxtDeliveryID" runat="server"  Class="inbutStyle"></asp:TextBox>
        </td>
               <td class="auto-style17"><strong>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TxtDeliveryID" CssClass="auto-style10" ErrorMessage="Please Enter Code"></asp:RequiredFieldValidator>
            </strong></td>

                

            </div>
        </div>


   <div class="row_Dataa">
       
        <td >
            <asp:Label class="text_style" ID="Label9" runat="server" Text="Name :"></asp:Label>
        </td>
            <div class="div_input_validd">

            

                <td class="auto-style5">
            <asp:TextBox  placeholder="Enter Your Name"  ID="TxtName" runat="server" Class="inbutStyle"></asp:TextBox>
        </td>




                 <td class="auto-style17"><strong>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TxtName" CssClass="validationStyle" ErrorMessage="Please Enter Name"></asp:RequiredFieldValidator>
            </strong></td>



            </div>
        </div>


   <div class="row_Dataa">
       
         <td >
            <asp:Label  class="text_style" ID="Label10" runat="server" Text="Phone :"></asp:Label>
        </td>
            <div class="auto-style8">

            

               <td class="auto-style5">
            <asp:TextBox ID="TxtPhone"  placeholder="Enter Your Phone" runat="server" Class="inbutStyle"></asp:TextBox>
        </td>


  <td class="auto-style14"><strong>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TxtPhone"  Class="validationStyle" ErrorMessage="Please Enter Phone"></asp:RequiredFieldValidator>
            </strong></td>



                    


            </div>
        </div>

       <div class="row_Dataa">
       
         <td >
            <asp:Label  class="text_style" ID="Label11" runat="server" Text="Address :"></asp:Label>
        </td>
            <div class="auto-style8">

            

               <td class="auto-style5">
            <asp:TextBox ID="TxtAddress"  placeholder="Enter Your Address" runat="server" Class="inbutStyle"></asp:TextBox>
        </td>


  <td class="auto-style14"><strong>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TxtAddress"  Class="validationStyle" ErrorMessage="Please Enter Address"></asp:RequiredFieldValidator>
            </strong></td>



            </div>
        </div>


       <div class="row_Dataa">
       
         <td >
            <asp:Label  class="text_style" ID="Label12" runat="server" Text="Email :"></asp:Label>
        </td>
            <div class="auto-style8">

            

               <td class="auto-style5">
            <asp:TextBox ID="TxtEmail"  placeholder="Enter Your Email" runat="server" Class="inbutStyle"></asp:TextBox>
        </td>


  <td class="auto-style14"><strong>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TxtEmail"  Class="validationStyle" ErrorMessage="Please Enter Email
 "></asp:RequiredFieldValidator>
            </strong></td>

                 
            </div>
        </div>

</div>

<div class="All_Btn_in_dev">

<div class="btn_3">
            <asp:Button class="btnStyle" ID="Button2" runat="server"  Text="Add"   OnClick="btnAdd_Click" />
            <asp:Button ID="Button3" runat="server" Text="Update"  class="btnStyle" OnClick="Button3_Click" />
            <asp:Button ID="Button4" runat="server"  Text="Delete"  class="btnStyle" OnClick="Button4_Click" />
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
           
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical"   CssClass="gridview" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >

     <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Select" ShowHeader="True" Text="&gt;&gt;" />
                    <asp:BoundField DataField="DeliveryID" HeaderText="ID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="phone" HeaderText="Phone" />
                    <asp:BoundField DataField="Address" HeaderText="Address" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#393939" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#dbdbdb"/>
                <SelectedRowStyle BackColor="#6d6fc9" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />

</asp:GridView>
            </strong>
        </td>
    </tr>
</table>







