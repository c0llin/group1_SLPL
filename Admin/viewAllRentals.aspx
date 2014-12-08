<%@ Page Title="" Language="VB" MasterPageFile="~/libraryMain.master" AutoEventWireup="false" CodeFile="viewAllRentals.aspx.vb" Inherits="Admin_viewAllRentals" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="sdsViewAllRentals" runat="server" 
        ConnectionString="<%$ ConnectionStrings:msci3300_g1ConnectionString %>" 
        SelectCommand="SELECT [UserID], [RentalID], [MaterialID], [RentDate], [DateDueBack] FROM [library_Rentals]">

    </asp:SqlDataSource>
    <asp:GridView ID="gvVeiwAllRentals" runat="server" CssClass="table table-hover" AutoGenerateColumns="False" 
        DataKeyNames="RentalID" DataSourceID="sdsViewAllRentals">
        <Columns>
            <asp:BoundField DataField="UserID" HeaderText="UserID" 
                SortExpression="UserID" />
            <asp:BoundField DataField="RentalID" HeaderText="RentalID" 
                SortExpression="RentalID" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="MaterialID" HeaderText="MaterialID" 
                SortExpression="MaterialID" />
            <asp:BoundField DataField="RentDate" HeaderText="RentDate" 
                SortExpression="RentDate" />
            <asp:BoundField DataField="DateDueBack" HeaderText="DateDueBack" 
                SortExpression="DateDueBack" />
        </Columns>
    </asp:GridView>
</asp:Content>

