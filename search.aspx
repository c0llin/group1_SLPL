<%@ Page Title="" Language="VB" MasterPageFile="~/libraryMain.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title> SLPL - Search</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g1ConnectionString %>" 
        SelectCommand="SELECT * FROM [library_Materials] WHERE  ([Title] LIKE'%' + @searchterm + '%') OR ([Author] LIKE'%' + @searchterm +'%') OR ([MaterialDescription] LIKE'%' + @searchterm + '%')">
        <SelectParameters>
            <asp:QueryStringParameter Name="searchterm" QueryStringField="searchquery" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    Results: <br/>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="MaterialID">
        <Columns>
            <asp:BoundField DataField="MaterialID" HeaderText="MaterialID" InsertVisible="False" ReadOnly="True" SortExpression="MaterialID" />
            <asp:BoundField DataField="MaterialType" HeaderText="MaterialType" SortExpression="MaterialType" />
            <asp:BoundField DataField="CallNumber" HeaderText="CallNumber" SortExpression="CallNumber" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
            <asp:BoundField DataField="Publisher" HeaderText="Publisher" SortExpression="Publisher" />
            <asp:BoundField DataField="Copyright" HeaderText="Copyright" SortExpression="Copyright" />
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
            <asp:BoundField DataField="MaterialDescription" HeaderText="MaterialDescription" SortExpression="MaterialDescription" />
            <asp:BoundField DataField="PhotoName" HeaderText="PhotoName" SortExpression="PhotoName" />
            <asp:BoundField DataField="Available" HeaderText="Available" SortExpression="Available" />
        </Columns>
    </asp:GridView>
</asp:Content>

