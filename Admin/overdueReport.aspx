<%@ Page Title="" Language="VB" MasterPageFile="~/libraryMain.master" AutoEventWireup="false" CodeFile="overdueReport.aspx.vb" Inherits="Admin_overdueReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Over Due Report</h3>
    <asp:sqldatasource runat="server" id = "sqlRentals" ConnectionString="<%$ ConnectionStrings:msci3300_g1ConnectionString %>" SelectCommand="SELECT [UserID], [MaterialID], [RentalID], [RentDate], [DateDueBack] FROM [library_Rentals]"></asp:sqldatasource>
    <asp:gridview runat="server" CssClass="table table-hover" DataSourceID="sqlRentals"></asp:gridview>
</asp:Content>

