<%@ Page Title="" Language="VB" MasterPageFile="~/libraryMain.master" AutoEventWireup="false" CodeFile="retrunMaterial.aspx.vb" Inherits="Admin_retrunMaterial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    Material ID to be returned: <asp:TextBox ID="tb_MaterialID" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btn_Return" runat="server" Text="Return Material" />

</asp:Content>

