<%@ Page Title="" Language="VB" MasterPageFile="~/libraryMain.master" AutoEventWireup="false" CodeFile="materialsDueToday.aspx.vb" Inherits="Admin_materialsDueToday" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="sdsMaterialsDueToday" runat="server" 
        ConnectionString="<%$ ConnectionStrings:db_library %>" 
        SelectCommand="SELECT * FROM [library_Rentals]">
    </asp:SqlDataSource>
    <asp:GridView ID="gvMaterialsDueToday" runat="server" CssClass="table table-hover" AutoGenerateColumns="False" 
        DataKeyNames="RentalID" DataSourceID="sdsMaterialsDueToday">
        <Columns>
            <asp:BoundField DataField="RentalID" HeaderText="RentalID" InsertVisible="False" ReadOnly="True" 
                SortExpression="RentalID" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" 
                SortExpression="UserID" />
            <asp:BoundField DataField="MaterialID" HeaderText="MaterialID" 
                SortExpression="MaterialID" />
            <asp:BoundField DataField="RentDate" HeaderText="RentDate" 
                SortExpression="RentDate" />
            <asp:BoundField DataField="DateDueBack" HeaderText="DateDueBack" 
                SortExpression="DateDueBack" />
        </Columns>
    </asp:GridView>
</asp:Content>

