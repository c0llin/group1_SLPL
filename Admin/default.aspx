<%@ Page Title="" Language="VB" MasterPageFile="~/libraryMain.master" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="Admin_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
<div id="adminHome">  

    <div id="adminHeader">
        Admin Home
    </div> <!--Close adminHeader div -->

    <div id="adminHomeButtons">
        
        <ul id="adminHomeLeftButtons">
        <li><asp:HyperLink ID="link_manageMaterial" cssclass="button-link button-width" runat="server" NavigateUrl="~/Admin/searchmaterial.aspx">Manage Existing Materials</asp:HyperLink></li>
        <li><asp:HyperLink ID="link_newMaterial" cssclass="button-link button-width" runat="server" NavigateUrl="~/Admin/addMaterial.aspx">Add New Materials</asp:HyperLink></li>
        <li><asp:HyperLink ID="link_checkInCheckOut" cssclass="button-link button-width" runat="server" NavigateUrl="~/Admin/checkInOut.aspx">Check In & Check Out</asp:HyperLink></li> 
        </ul> 

        <ul id="adminHomeRightButtons">
        <li><asp:HyperLink ID="link_managePatron" cssclass="button-link button-width" runat="server" NavigateUrl="~/Admin/searchPatron.aspx">Manage Existing Patrons</asp:HyperLink></li>
        <li><asp:HyperLink ID="link_newPatron" cssclass="button-link button-width" runat="server" NavigateUrl="~/Admin/addPatron.aspx">Add New Patrons</asp:HyperLink></li>  
        <li><asp:HyperLink ID="link_runOverdueReport" cssclass="button-link button-width" runat="server" NavigateUrl="~/Admin/overdueReport.aspx">Overdue Report</asp:HyperLink></li> 
        </ul> 

    </div>

</div>

</asp:Content>

