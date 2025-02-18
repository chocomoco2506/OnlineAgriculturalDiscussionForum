<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="UserManagement.aspx.cs" Inherits="Homepage.UserManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        
        .auto-style2 {
          height:100px;
          margin-left: 350px;
          margin-right: 350px;
          text-align:center;
          font-family:'Times New Roman';
          font-size:medium;
        }
        .auto-style2 {
            margin-top: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style1">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowingPagin="true" OnPageIndexChanging="OnPageIndexChanging" AllowPaging="True" CssClass="auto-style2" Height="100px" Width="893px" BackColor="White" BorderColor="#00CC00" BorderStyle="Solid" CellPadding="5" CellSpacing="5" ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
           HeaderStyle-Font-Size="medium" HeaderStyle-BackColor="#4EAE3A"
            HeaderStyle-ForeColor="White"  PageSize="5" >

            <Columns>
                <asp:BoundField DataField="userid" HeaderText="User ID"></asp:BoundField>
                <asp:BoundField DataField="username" HeaderText="Name"></asp:BoundField>
                <asp:BoundField DataField="pwd" HeaderText="Password"></asp:BoundField>
                <asp:BoundField DataField="email" HeaderText="Email Address"></asp:BoundField>
                <asp:BoundField DataField="gender" HeaderText="Gender"></asp:BoundField>
                <asp:TemplateField>
                   <ItemTemplate>
                       <asp:LinkButton ID="delete" Text="Delete" runat="server" CommandArgument='<%# Eval("userid") %>' OnClick="delete_Click" ForeColor="Red"></asp:LinkButton>
                   </ItemTemplate>
               </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
