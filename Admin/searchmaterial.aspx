<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/libraryAdmin.master" AutoEventWireup="false" CodeFile="searchmaterial.aspx.vb" Inherits="Admin_searchmaterial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g1ConnectionString %>" 
        SelectCommand="SELECT * FROM [library_Items] WHERE (([author] = @author) AND ([callNumber] = @callNumber) AND ([title] = @title))">
        <SelectParameters>
            <asp:FormParameter FormField="tb_searchMaterials" Name="author" Type="String" />
            <asp:FormParameter FormField="tb_searchMaterials" Name="callNumber" Type="String" />
            <asp:FormParameter FormField="tb_searchMaterials" Name="title" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    Search by title, author or call number:&nbsp;&nbsp;&nbsp;

    <asp:TextBox ID="tb_searchMaterials" runat="server" Width="250px"></asp:TextBox>

    <% If IsPostBack Then%>

    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
        
    <% End If %>

</asp:Content>

