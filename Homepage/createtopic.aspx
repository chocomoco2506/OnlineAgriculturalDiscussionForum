<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="createtopic.aspx.cs" Inherits="Homepage.createtopic" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 80%;
            height: 80%;
            margin-top: 100px;
            font-size:medium;
        }
        .auto-style2 {
            width:100%;
            height:50%;
            margin-left:500px;
            margin-right:500px;
        }
                
        .auto-style7 {
            height: 78px;
        }
        .auto-style8 {
            height: 78px;
        }
        .auto-style9 {
            height: 78px;
        }
          
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style2"> 
    <table class="auto-style1">
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label1" runat="server" Text="Discussion Title"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="355px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Fill This Field" ForeColor="Red" ValidationGroup="create1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label3" runat="server" Text="Discussion Detail"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox2" runat="server" Height="35px" Width="355px" ValidationGroup="create1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Fill This Field" ForeColor="Red" ValidationGroup="create1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label2" runat="server" Text="File Upload"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="33px" Width="355px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Button ID="Button1" runat="server" Text="Create" Height="35px" Width="121px" BackColor="#4EAE3A" BorderStyle="Double" OnClick="Button1_Click" ValidationGroup="create1" />
            </td>
            <td class="auto-style7">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" Width="148px" Height="36px" BackColor="#4EAE3A" />
            </td>
        </tr>
    </table>
    </div>
</asp:Content>

