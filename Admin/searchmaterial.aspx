<%@ Page Title="" Language="VB" MasterPageFile="~/libraryMain.master" AutoEventWireup="false" CodeFile="searchMaterial.aspx.vb" Inherits="Admin_searchMaterial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Search Materials</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g1ConnectionString %>" 
        SelectCommand="SELECT [MaterialID], [MaterialType], [CallNumber], [Title], [Author], [Publisher], [Copyright], [ISBN], [MaterialDescription], [PhotoName], [Available] FROM [library_Materials]">
    </asp:SqlDataSource>
    
    <h3>Search by title, author or call number:&nbsp;&nbsp;&nbsp;<asp:TextBox ID="tb_searchMaterials" runat="server"></asp:TextBox>
    </h3>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataKeyNames="MaterialID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="MaterialType" HeaderText="MaterialType" SortExpression="MaterialType" />
            <asp:BoundField DataField="CallNumber" HeaderText="CallNumber" SortExpression="CallNumber" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>

</asp:Content>

