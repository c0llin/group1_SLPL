<%@ Page Title="" Language="VB" MasterPageFile="~/libraryMain.master" AutoEventWireup="false" CodeFile="searchMaterial.aspx.vb" Inherits="Admin_searchMaterial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Search Materials</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:sqldatasource runat="server" ID="sqlMaterialSearch" ConnectionString="<%$ ConnectionStrings:msci3300_g1ConnectionString %>" SelectCommand="SELECT [Author], [Title], [MaterialDescription], [ISBN], [MaterialID], [Available] FROM [library_Materials]"></asp:sqldatasource>
    
    <%If Not IsPostBack Then%>
    <h3>Search by title, author or call number:&nbsp;&nbsp;&nbsp;<asp:TextBox ID="tb_searchMaterials" runat="server"></asp:TextBox><asp:button runat="server" ID = "tb_searchstuff" text="Search" />
    </h3>
    <br />
   <%Else%>
    <h3>Search by title, author, description or call number:&nbsp;&nbsp;&nbsp;<asp:TextBox ID="tb_searchMaterialsPB" runat="server"></asp:TextBox><asp:button runat="server" ID = "btn_searchMaterialsPB" text="Search" />
    </h3>
    <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="sqlMaterialSearch" ForeColor="Black" GridLines="Vertical" DataKeyNames="MaterialID">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="MaterialDescription" HeaderText="MaterialDescription" SortExpression="MaterialDescription" />
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
            <asp:BoundField DataField="MaterialID" HeaderText="MaterialID" InsertVisible="False" ReadOnly="True" SortExpression="MaterialID" />
            <asp:BoundField DataField="Available" HeaderText="Available" SortExpression="Available" />
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
    <%End If%>
</asp:Content>

