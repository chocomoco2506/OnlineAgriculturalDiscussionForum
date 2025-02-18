<%@ Page Title="" Language="C#" MasterPageFile="~/loginMaster.Master" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="Homepage.signin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 39%;
            height: 284px;
            margin-top: 80px;
            font-size:medium;
            table-layout: fixed;

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
            margin-left:470px;
            margin-right:470px;
        }
                
        .auto-style12 {
            height: 67px;
            width: 257px;
        }
        .auto-style14 {
        height: 50px;
        width: 257px;
    }
          
        .auto-style15 {
            height: 50px;
        }
          
        .auto-style16 {
            width: 181px;
        }
        .auto-style17 {
            height: 50px;
            width: 181px;
        }
        .auto-style18 {
            height: 67px;
            width: 181px;
        }
          
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style2"> 
    <table class="auto-style1" style="font-size: large; font-weight: bold; font-style: normal; color: #000000; text-align: center; background-color: #808080; background-repeat: no-repeat; background-attachment: fixed; background-position: center center; border-color: #FFFFFF">
        <tr>
            <td class="auto-style17">
                </td>
            <td class="auto-style14">
               
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
                Name</td>
            <td class="auto-style14">
                

                <asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" Height="33px" Width="202px" ValidationGroup="sign"></asp:TextBox>
                

            </td>
         </tr>
        <tr>
            <td  style="background-color: #808080" class="auto-style16">

            </td>
            <td style="background-color: #808080">

                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Fill This Field" ForeColor="Red" Font-Size="Small" ValidationGroup="sign"></asp:RequiredFieldValidator>
            </td>
       </tr>
            
       
        <tr>
            <td class="auto-style17">
                Email</td>
            <td class="auto-style14">
                

                <asp:TextBox ID="TextBox2" runat="server" BorderStyle="None" Height="33px" Width="202px" ValidationGroup="sign"></asp:TextBox>
                

            </td>
            
        </tr>
        <tr>
            <td style="background-color: #808080" class="auto-style16">

            </td>
            <td style="background-color: #808080">

                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Invalid Email" ForeColor="Red" Font-Size="Small" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="sign"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Fill This Field" ForeColor="Red" Font-Size="Small" ValidationGroup="sign"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
                Password</td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox3" TextMode="Password" runat="server" Height="33px" Width="202px" BorderStyle="None" ValidationGroup="sign"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td style="background-color: #808080" class="auto-style16">

            </td>
            <td class="auto-style15">

                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Fill This Field" ForeColor="Red" Font-Size="Small" ValidationGroup="sign"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style17">
                Confirm password</td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox4" TextMode="Password" runat="server" Height="33px" Width="202px" BorderStyle="None" ValidationGroup="sign"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td style="background-color: #808080" class="auto-style16">

            </td>
            <td>

                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" Display="Dynamic" Font-Size="Small" ErrorMessage="Password and Confirm password must be same" ForeColor="Red" ValidationGroup="sign"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please Fill This Field" ForeColor="Red" Font-Size="Small" ValidationGroup="sign"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">

                <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" />

            </td>
            
            <td class="auto-style15">
                 <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" />
            </td>
        </tr>
        <tr>
            <td class="auto-style18">
                <asp:Button ID="Button1" runat="server" Text="Create" Height="35px" Width="121px" BackColor="#4EAE3A" BorderStyle="None" ValidationGroup="sign" OnClick="Button1_Click"  />
            </td>
            <td class="auto-style12">
                <asp:Button ID="Button2" runat="server"  Text="Cancel" Width="148px" Height="36px" BackColor="#4EAE3A" BorderStyle="None" OnClick="Button2_Click"  />
            </td>
        </tr>
    </table>
    </div>
</asp:Content>
