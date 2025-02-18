<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="mytopic.aspx.cs" Inherits="Homepage.mytopic" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-top: 50px;
            margin-left:300px;
            margin-right:300px;
            font-size:medium;
            text-align:center;
        }
        .stylink a
            { font:10px; color:red;  }


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style1">
        
      <asp:GridView ID="gridview1" runat="server" AutoGenerateColumns="False" AllowingPagin="true" OnPageIndexChanging="OnPageIndexChanging"
           HeaderStyle-Font-Size="medium" HeaderStyle-BackColor="#4EAE3A"
            HeaderStyle-ForeColor="White" GridLines="None" BackColor="White" BorderColor="White" CellPadding="10" CellSpacing="10" ForeColor="Black" HorizontalAlign="Justify" Width="950px" AllowPaging="True" PageSize="5" OnSelectedIndexChanged="gridview1_SelectedIndexChanged">
           <Columns>
              <asp:TemplateField HeaderText="Image">
                  <ItemTemplate>
                      <asp:Image  ID="img" Height="100px" Width="100px" runat="server" ImageUrl='<%#Bind("postimg") %>'/>
                  </ItemTemplate>
              </asp:TemplateField>
               <asp:BoundField DataField="posttitle" HeaderText="PostTitle" />
               <asp:BoundField DataField="postdetail" HeaderText="PostDetail" />
               <asp:BoundField DataField="postdate" HeaderText="PostDate" />
               <asp:BoundField DataField="postid" HeaderText="PostID" Visible="false"/>
               <asp:TemplateField>
                   <ItemTemplate>
                       <asp:LinkButton ID="lnk" Text="comment" runat="server" CommandArgument='<%# Eval("postid") %>' OnClick="lnk_Click"></asp:LinkButton>
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField>
                   <ItemTemplate>
                       <asp:LinkButton ID="edit" Text="Edit" runat="server" CommandArgument='<%# Eval("postid") %>' OnClick="edit_Click"></asp:LinkButton>
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField>
                   <ItemTemplate>
                       <asp:LinkButton ID="delete" Text="Delete" runat="server" CommandArgument='<%# Eval("postid") %>' OnClick="delete_Click" BackColor="White" BorderColor="White" ForeColor="Red"></asp:LinkButton>
                   </ItemTemplate>
               </asp:TemplateField>
               
           </Columns>
      </asp:GridView> 
        
    </div>
</asp:Content>
