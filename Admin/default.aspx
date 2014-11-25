<%@ Page Title="" Language="VB" MasterPageFile="~/libraryMain.master" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="Admin_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div id="adminHeader">
        Admin Home
    </div> <!--Close adminHeader div -->

    <div id="adminHomeButtons">
        <ul id="adminHomeLeftButtons">
        <li><asp:HyperLink ID="link_ManageMaterials" cssclass="button-link button-width" runat="server" NavigateUrl="~/searchmaterial.aspx">Manage Materials</asp:HyperLink></li>
        <li><asp:HyperLink ID="link_CheckInCheckOut" cssclass="button-link button-width" runat="server" NavigateUrl="~/checkInOut.aspx">Check In/Check Out</asp:HyperLink></li> 
        </ul> 

        <ul id="adminHomeRightButtons">
        <li><asp:HyperLink ID="link_managePatrons" cssclass="button-link button-width" runat="server" NavigateUrl="~/searchPatron.aspx">Manage Patrons</asp:HyperLink></li> 
        <li><asp:HyperLink ID="link_runOverdueReport" cssclass="button-link button-width" runat="server" NavigateUrl="~/overdueReport.aspx">Overdue Report</asp:HyperLink></li> 
        </ul> 

 </div>
</asp:Content>

