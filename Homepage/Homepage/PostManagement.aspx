<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="PostManagement.aspx.cs" Inherits="Homepage.PostManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            margin-top: 50px;
            margin-left:95px;
             margin-right:95px;
           
            font-size:medium;
            text-align:justify;
        }
        .auto-style2 {
            margin-top: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style2">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowingPagin="true" OnPageIndexChanging="OnPageIndexChanging" AllowPaging="True" PageSize="5"
            HeaderStyle-Font-Size="medium" HeaderStyle-BackColor="#4EAE3A"
            HeaderStyle-ForeColor="White" GridLines="None" BackColor="White" Width="1170px" CssClass="auto-style2" CellPadding="10" CellSpacing="10" >

            <Columns>
                <asp:TemplateField HeaderText="Image">
                  <ItemTemplate>
                      <asp:Image  ID="img" Height="50px" Width="80px" runat="server" ImageUrl='<%#Bind("postimg") %>' ImageAlign="Middle" />
                  </ItemTemplate>
              </asp:TemplateField>
                <asp:BoundField DataField="postid" HeaderText="Post ID"></asp:BoundField>
                <asp:BoundField DataField="userid" HeaderText="User ID"></asp:BoundField>
                <asp:BoundField DataField="posttitle" HeaderText="Post Title"></asp:BoundField>
                <asp:BoundField DataField="postdetail" HeaderText="Post Detail"></asp:BoundField>
                <asp:BoundField DataField="postdate" HeaderText="Post Date"></asp:BoundField>
                <asp:TemplateField>
                   <ItemTemplate>
                       <asp:LinkButton ID="delete" Text="Delete" runat="server" CommandArgument='<%# Eval("postid") %>' OnClick="delete_Click" ForeColor="Red"></asp:LinkButton>
                   </ItemTemplate>
               </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
