<%@ Page Title="" Language="VB" MasterPageFile="~/libraryMain.master" AutoEventWireup="false" CodeFile="searchPatron.aspx.vb" Inherits="Admin_searchPatron" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Search Patrons</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <%If Not IsPostBack Then%>
        <h3>
            <asp:SqlDataSource ID="sqlPatron" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g1ConnectionString %>" SelectCommand="SELECT [FirstName], [LastName], [phone], [email] FROM [library_UserProfile]"></asp:SqlDataSource>
            Search Patrons by Name, Email or Phone # :
        
        <asp:textbox runat="server" ID="tb_patronSearch"></asp:textbox>
        <asp:button runat="server" text="Search" ID="btn_Search" /><br />
        </h3>
    <%Else%>
    <h3>Search Patrons by Name, Email or Phone #:
     <asp:textbox runat="server" ID="tb_patronSearchPB"></asp:textbox>
     <asp:button runat="server" text="Search" ID="btn_SearchPatronPB" /><br />
    </h3>

    Results: <br/>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="sqlPatron" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        </Columns>
    </asp:GridView>
    <%End If%>
</asp:Content>

