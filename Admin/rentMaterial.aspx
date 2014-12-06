<%@ Page Title="" Language="VB" MasterPageFile="~/libraryMain.master" AutoEventWireup="false" CodeFile="rentMaterial.aspx.vb" Inherits="Admin_rentMaterial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    Username: <asp:TextBox ID="tb_UserName" runat="server"></asp:TextBox>

    <br />
    <br />

    Material ID: <asp:TextBox ID="tb_MaterialID" runat="server"></asp:TextBox>

    <br />
    <br />

    <asp:Button ID="btn_Rent" runat="server" Text="Rent Material" />

</asp:Content>

