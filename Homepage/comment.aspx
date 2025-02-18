<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="comment.aspx.cs" Inherits="Homepage.comment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 54%;
            height: 80%;
            margin-top:98px;
            font-size:medium;
        }
        .auto-style2 {
            width:100%;
            height:50%;
            margin-left:400px;
            margin-right:400px;
        }
        .auto-style3 {
            width: 26%;
            height: 73%;
            margin-left: 400px;
            margin-right: 400px;
        }
        .auto-style7 {
            height: 72%;
            width: 672px;
        }
        .auto-style9 {
            height: 73%;
            width: 672px;
        }
        .auto-style10{
            margin-top:20px;
            font-size:medium;
            text-align:center;
        }
        .auto-style11 {
            width: 672px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="auto-style2">

   
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Image ID="Image1" runat="server" Height="173px" Width="250px" BorderColor="White" BorderStyle="None" />
                </td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Discussion Title"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="Discussion Detail"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:Label ID="Label9" runat="server" Text="Label" BorderColor="#4EAE3A" BorderStyle="Solid"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label5" runat="server" Text="Post By"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label6" runat="server" Text="Post Date"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label7" runat="server" Text="Comment"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" BorderColor="Lime"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="Cancel" OnClick="Button1_Click" BackColor="#4EAE3A" Width="138px" ForeColor="White" />
                </td>
                <td class="auto-style7">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Comment" BackColor="#4EAE3A" ForeColor="White" />
                </td>
            </tr>
        </table>
    <div class="auto-style10">
    
        <asp:GridView ID="Gridview1" runat="server" AutoGenerateColumns="False" AllowingPagin="true" OnPageIndexChanging="OnPageIndexChanging" Width="830px" BorderColor="#00CC00" CellPadding="10" CellSpacing="10" ForeColor="Black" Height="100px" BorderStyle="Solid" BackColor="White"
            HeaderStyle-Font-Size="medium" HeaderStyle-BackColor="#4EAE3A"
            HeaderStyle-ForeColor="White" AllowPaging="True" PageSize="3" HorizontalAlign="Justify" >
            <Columns>
                <asp:BoundField DataField="commentdetail" HeaderText="Discussion" />
                <asp:BoundField DataField="username" HeaderText="Discussion By"/>
                <asp:BoundField DataField="commentdate" HeaderText="Discussion Date"/>
                
            </Columns>
           
        </asp:GridView>
    
    </div>
</div>
    
</asp:Content>
