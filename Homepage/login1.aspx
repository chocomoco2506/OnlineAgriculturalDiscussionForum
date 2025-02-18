<%@ Page Title="" Language="C#" MasterPageFile="~/loginMaster.Master" AutoEventWireup="true" CodeBehind="login1.aspx.cs" Inherits="Homepage.login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 39%;
            height: 358px;
            margin-top: 130px;
            font-size:medium;
            table-layout: fixed;
            
            background: #fff;
            font-family: Times New Roman, Times, serif;
           
            
            padding: 3px;
            border-top: 1px solid #CCCCCC;
            border-left: 1px solid #CCCCCC;
            border-right: 1px solid #999999;
            border-bottom: 1px solid #999999;
            -moz-border-radius: 40px;
            -webkit-border-radius: 40px;
        }
       
        
        .auto-style2 {
            width:100%;
            height:50%;
            margin-left:500px;
            margin-right:500px;



        }
                
        .auto-style11 {
            height: 67px;
            width: 225px;
        }
        .auto-style12 {
            height: 67px;
            width: 257px;
        }
        .auto-style13 {
        height: 50px;
        width: 225px;
    }
        .auto-style14 {
        height: 50px;
        width: 257px;
    }
          
        .auto-style17 {
            height: 37px;
            width: 225px;
        }
        .auto-style18 {
            height: 37px;
            width: 257px;
        }
        .auto-style19 {
            width: 280px;
            height: 4px;
        }
          
        .auto-style20 {
            width: 280px;
            height: 1px;
        }
          
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style2"> 
    <table class="auto-style1" style="border-color: #FFFFFF; font-size: large; font-weight: bold; font-style: normal; color: #000000; text-align: center; background-color: #808080; background-repeat: no-repeat; background-attachment: fixed; background-position: center center; " border="0">
        <tr>
            <td class="auto-style13">
                </td>
            <td class="auto-style14">
               
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
                Username</td>
            <td class="auto-style18">
                

                <asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" Height="33px" Width="202px" ValidationGroup="login"></asp:TextBox>
                

            </td>
         </tr>
         <tr>
             <td style="background-color: #808080" class="auto-style19">

             </td>
            <td style="background-color: #808080" class="auto-style19">

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Fill This Field" ForeColor="Red" ValidationGroup="login" Font-Size="Small"></asp:RequiredFieldValidator>

            </td>
        </tr>
       
        <tr>
            <td class="auto-style13">
                Password</td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox2" TextMode="Password" runat="server" Height="33px" Width="202px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">

            </td>
            <td class="auto-style20">

                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Fill This Field" ForeColor="Red" ValidationGroup="login" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Button ID="Button3" runat="server" BackColor="#4EAE3A" BorderStyle="None" Height="29px" OnClick="Button3_Click" Text="Login" Width="126px" ValidationGroup="login" />
            </td>
            <td class="auto-style12">
                <asp:Button ID="Button2" runat="server"  Text="Create account" Width="148px" Height="36px" BackColor="#4EAE3A" BorderStyle="None" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
    </div>
</asp:Content>
