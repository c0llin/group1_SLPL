<%@ Page Title="" Language="VB" MasterPageFile="~/libraryMain.master" AutoEventWireup="false" CodeFile="viewAllMaterials.aspx.vb" Inherits="Admin_viewAllMaterials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>View All Materials</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g1ConnectionString %>" 
        SelectCommand="SELECT [MaterialID], [MaterialType], [CallNumber], [Title], [Author], [Publisher], [Copyright], [ISBN], [MaterialDescription], [PhotoName], [Available] FROM [library_Materials]"></asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaterialID" DataSourceID="SqlDataSource1" AllowPaging="True">
    <Columns>
        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
        <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
        <asp:HyperLinkField DataNavigateUrlFields="MaterialID" DataNavigateUrlFormatString="materialDetails.aspx?MaterialID={0}" Text="Select" />
    </Columns>
</asp:GridView>
</asp:Content>

