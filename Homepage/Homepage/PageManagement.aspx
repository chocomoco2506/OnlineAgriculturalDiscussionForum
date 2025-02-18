<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="PageManagement.aspx.cs" Inherits="Homepage.PageManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 170px;
            margin-top: 50px;
            margin-left:400px;
            margin-right:400px;
          
        }
        .auto-style2 {
            margin-top: 0px;
        }
        .auto-style3 {
            height: 92px;
            width: 831px;
        }
        .auto-style4 {
            height: 73px;
            width: 831px;
        }
        .auto-style5 {
            height: 92px;
            width: 1314px;
        }
        .auto-style6 {
            height: 73px;
            width: 1314px;
        }
        .auto-style7 {
            width: 1314px;
            height: 78px;
        }
        .auto-style8 {
           margin-left:300px;
           margin-right:300px;
          
        }
        .auto-style9 {
            width: 831px;
            height: 78px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="auto-style10">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Text="Content Title"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="Content"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label2" runat="server" Text="Image"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" Width="130px" BackColor="#4EAE3A" />
            </td>
            <td class="auto-style7">
                <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click1" Height="25px" Width="130px" BackColor="#4EAE3A" />
            </td>
        </tr>
    </table>
    <div class="auto-style8">
    <asp:GridView ID="gridview1" runat="server" AutoGenerateColumns="False" 
           HeaderStyle-Font-Size="medium" HeaderStyle-BackColor="#4EAE3A"
            HeaderStyle-ForeColor="White" GridLines="None" BackColor="White" BorderColor="White" CellPadding="10" CellSpacing="10" ForeColor="Black" HorizontalAlign="Justify" Width="950px" PageSize="3" CssClass="auto-style2" Height="5px">
           <Columns>
              <asp:TemplateField HeaderText="Image">
                  <ItemTemplate>
                      <asp:Image  ID="pimg" Height="100px" Width="100px" runat="server" ImageUrl='<%#Bind("pimg") %>'/>
                  </ItemTemplate>
              </asp:TemplateField>
               <asp:BoundField DataField="ptitle" HeaderText="Content Title" />
               <asp:BoundField DataField="pcontent" HeaderText="Content" />
               
               
               <asp:TemplateField>
                   <ItemTemplate>
                       <asp:LinkButton ID="edit" Text="Edit" runat="server" CommandArgument='<%# Eval("pid") %>' OnClick="edit_Click"></asp:LinkButton>
                   </ItemTemplate>
               </asp:TemplateField>
               
               
           </Columns>
      </asp:GridView> 
</div>
</div>
</asp:Content>
