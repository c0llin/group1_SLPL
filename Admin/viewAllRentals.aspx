
<%@ Page Title="" Language="VB" MasterPageFile="~/libraryMain.master" AutoEventWireup="false" CodeFile="viewAllRentals.aspx.vb" Inherits="Admin_viewAllRentals" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="sdsViewAllRentals" runat="server" 
        ConnectionString="<%$ ConnectionStrings:db_library %>" 
        SelectCommand="SELECT * FROM [library_Rentals]">

    </asp:SqlDataSource>
    <asp:GridView ID="gvVeiwAllRentals" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="RentalID" DataSourceID="sdsViewAllRentals">
        <Columns>
            <asp:BoundField DataField="RentalID" HeaderText="Rental ID" InsertVisible="False" ReadOnly="True" 
                SortExpression="RentalID" />
            <asp:BoundField DataField="UserID" HeaderText="User ID" 
                SortExpression="UserID" />
            <asp:BoundField DataField="MaterialID" HeaderText="Material ID" 
                SortExpression="MaterialID" />
            <asp:BoundField DataField="RentDate" HeaderText="Rent Date" 
                SortExpression="RentDate" />
            <asp:BoundField DataField="DateDueBack" HeaderText="Date Due Back" 
                SortExpression="DateDueBack" />
        </Columns>
    </asp:GridView>
</asp:Content>

