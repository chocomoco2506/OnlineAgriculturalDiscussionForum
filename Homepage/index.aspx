<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Homepage.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-top: 40px;
            margin-left:150px;
            margin-right:150px;
            font-size:medium;
            text-align:center;
        }
        .auto-style2{

            margin-top: 50px;
            margin-left:1000px;
            margin-right:1000px;
            font-size:medium;
            width: 253px;
            
        }
        .roundedcorner {
            background: #fff;
            font-family: Times New Roman, Times, serif;
            font-size: 12pt;
            margin-left: auto;
            margin-right: auto;
            margin-top: 1px;
            margin-bottom: 1px;
            padding: 3px;
            border-top: 1px solid #CCCCCC;
            border-left: 1px solid #CCCCCC;
            border-right: 1px solid #999999;
            border-bottom: 1px solid #999999;
            -moz-border-radius: 10px;
            -webkit-border-radius: 10px;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style2">
    
        
           
          
            <asp:TextBox ID="TextBox1" runat="server"  Width="145px" BorderColor="#4EAE3A" BorderStyle="Solid" CssClass="roundedcorner"></asp:TextBox>
         
            <asp:Button ID="Button1" runat="server" Height="29px" Text="Search" BackColor="#4EAE3A" BorderStyle="None" CssClass="roundedcorner" Width="99px" OnClick="Button1_Click" />
            
        
    </div>
    
    
    
    
    <div class="auto-style1">
        
      <asp:GridView ID="gridview1" runat="server" AutoGenerateColumns="False" AllowingPagin="true" OnPageIndexChanging="OnPageIndexChanging" CssClass="auto-style1" Width="950px" BorderColor="White" BorderStyle="None" CellPadding="10" CellSpacing="10" ForeColor="Black" HorizontalAlign="Justify"
           HeaderStyle-Font-Size="medium" HeaderStyle-BackColor="#4EAE3A"
            HeaderStyle-ForeColor="White" GridLines="None" BackColor="White" AllowPaging="True" PageSize="5">
           <Columns>
              <asp:TemplateField HeaderText="Image">
                  <ItemTemplate>
                      <asp:Image  ID="img" Height="50px" Width="80px" runat="server" ImageUrl='<%#Bind("postimg") %>' ImageAlign="Middle" />
                  </ItemTemplate>
              </asp:TemplateField>
               <asp:BoundField DataField="posttitle" HeaderText="PostTitle" />
               <asp:BoundField DataField="username" HeaderText="PostBy" />
               <asp:BoundField DataField="postdetail" HeaderText="PostDetail" />
               <asp:BoundField DataField="postdate" HeaderText="PostDate" />
               <asp:BoundField DataField="postid" HeaderText="PostID" Visible="false"/>
               <asp:TemplateField>
                   <ItemTemplate>
                       <asp:LinkButton ID="lnk" Text="Comment" runat="server" CommandArgument='<%# Eval("postid") %>' OnClick="lnk_Click"></asp:LinkButton>
                   </ItemTemplate>
               </asp:TemplateField>
               
           </Columns>
      </asp:GridView> 
        
    </div>
</asp:Content>
