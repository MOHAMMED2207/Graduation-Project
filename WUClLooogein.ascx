<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WUClLooogein.ascx.cs" Inherits="WUClLooogein" %>



<style>
    
.span {
    position: absolute;
    top: 50%;
    left: 10px;
    transform: translateY(-50%);
    color: #444;
    font-size: 14px;
    background: white;
    border-radius: 50px;
    padding: 5px 10px;
    transition: top .3s linear;
    z-index: -1;
}

.main .form-box form .input-container input ~span {
    top: -5px;
    z-index: 0;
    background-color: white;
}

.main .form-box form .input-container input {
    border: none;
    outline: none;
    padding: 5px;
    width: 100%;
    background-color: transparent;
    font-size: 13px;
}

.main .form-box form .input-container .icone {
    position: relative;
    background-color: var(--main-blue);
    color: white;
    padding: 10px;
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
    .validationStyle {
    color: #ff0000;
    font-size: 12px;
    letter-spacing: 1px;
    font-family: sans-serif;
    font-weight: 700;
    display: flex;
  
}
 .msg {
    font-size: 22px;
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    margin: 0px 0px 40px;
    font-weight: 400;
    color: #ff0000;
}
   .all_element {
    display: flex;
    flex-direction: column;
    margin: 15px auto;
}
  
</style>


                    <div class="error"></div>
<div class="msg">
            <asp:Label ID="iblmsg" runat="server" Class="masgConfigration"></asp:Label>
 </div>
<div class="all_element">
                
                   <div class="input-container flex-center">
                        &nbsp;<asp:TextBox ID="txtname" runat="server" OnTextChanged="txtname_TextChanged"></asp:TextBox>
                        <asp:Label class="login-pass-lable" ID="Label2" runat="server" Text="User Name"></asp:Label>


                        <div class="flex-center pointer icone"><i class="fa-solid fa-at "></i></div>
                    </div>
                    <asp:RequiredFieldValidator CssClass="validationStyle" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"  ErrorMessage="Please Enter Name"></asp:RequiredFieldValidator>

</div>


<div class="all_element">

     <div class="input-container flex-center">
                        &nbsp;<asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
                        <asp:Label class="login-pass-lable" ID="Label1" runat="server" Text="Password"></asp:Label>
                        <strong>
            </strong>
                        <div class="flex-center pointer icone"><i class="fa-solid fa-lock "></i></div>
                    </div>
                    <asp:RequiredFieldValidator CssClass="validationStyle" ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword"  ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
</div>













     
                    <div class="remember">
                        <div class="check">
                           
                    


                            <asp:CheckBox ID="CheckBox1" runat="server" Text=" Remember Me" />




                        </div>
                        <a id="forget" href="">Forget Password?</a>
                    </div>





                     <div class="buttons">
                         <asp:Button ID="Button1"  runat="server"  class="login-btn pointer" Text="Login" OnClick="Button1_Click" />
                         <div class="google">
                            <button id="google-button" class="pointer"><i class="fa-brands fa-google"></i>Sign In With Google</button>
                        </div>



                    </div>
                
