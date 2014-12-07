﻿<%@ Page Title="" Language="VB" MasterPageFile="~/libraryMain.master" AutoEventWireup="false" CodeFile="patronDetails.aspx.vb" Inherits="Admin_patronDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>View, Edit & Delete Patron Details</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="UserID" DataSourceID="SqlDataSource1" Width="255px">
        <EditItemTemplate>

            <table>

                <tr>
                    <td align="right">FirstName:</td><td align="left"><asp:TextBox ID="tb_firstName" runat="server" Text='<%# Bind("FirstName") %>' /></td>
                </tr>

                <tr>
                    <td align="right">LastName:</td><td align="left"><asp:TextBox ID="tb_lastName" runat="server" Text='<%# Bind("LastName") %>' /></td>
                </tr>

                <tr>
                    <td align="right">City:</td><td align="left"><asp:TextBox ID="tb_city" runat="server" Text='<%# Bind("City") %>' /></td>
                </tr>
            
                <tr>
                    <td align="right">State:</td>
                    <td align="left">
                        <asp:DropDownList ID="ddl_postalCode" runat="server" DataSourceID="SqlDataSource1"
                            DataTextField="PostalCode" DataValueField="PostalCode" SelectedValue='<%# Bind("PostalCode") %>'>
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td>&nbsp</td><td>&nbsp </td>
                </tr>

                <tr>
                    <td align="right">UserID:</td><td align="left"><asp:Label ID="lbl_userID" runat="server" Text='<%# Eval("UserID") %>' /></td>
                </tr>
                
                <tr>
                    <td align="right">UserName:</td><td align="left"><asp:TextBox ID="tb_userName" enabled="false" runat="server" Text='<%# Bind("UserName") %>' /></td>
                </tr>

                <tr>
                    <td align="right">RoleName:</td><td align="left"><asp:TextBox ID="tb_roleName" runat="server" enabled="false" Text='<%# Bind("RoleName") %>' /></td>
                </tr>

            </table>

            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />

            &nbsp;&nbsp;
            
            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g1ConnectionString %>"
                SelectCommand="SELECT [PostalCode] FROM [library_States]"></asp:SqlDataSource>

        </EditItemTemplate>

        <InsertItemTemplate>

        </InsertItemTemplate>

        <ItemTemplate>
            
            <table>
                <tr>
                    <td align="right">FirstName:</td><td align="left"><asp:Label ID="lbl_firstName" runat="server" Text='<%# Bind("FirstName") %>' /></td>
                </tr>
            
                <tr>
                    <td align="right">LastName:</td><td align="left"><asp:Label ID="lbl_lastName" runat="server" Text='<%# Bind("LastName") %>' /></td>
                </tr>

                <tr>
                    <td align="right">City:</td><td align="left"><asp:Label ID="lbl_city" runat="server" Text='<%# Bind("City") %>' /></td>
                </tr>

                <tr>
                    <td align="right">State:</td align="left"><td><asp:Label ID="lbl_postalCode" runat="server" Text='<%# Bind("PostalCode") %>' /></td>
                </tr>
            
                <tr>
                    <td>&nbsp</td><td>&nbsp </td>
                </tr>
                
                <tr>
                    <td align="right">UserID:</td><td align="left"><asp:Label ID="lbl_userID" runat="server" Text='<%# Eval("UserID") %>' /></td>
                </tr>
                
                <tr>
                    <td align="right">UserName:</td><td align="left"><asp:Label ID="lbl_userName" runat="server" Text='<%# Bind("UserName") %>' /></td>
                </tr>
            
                <tr>
                    <td align="right">RoleName:</td><td align="left"><asp:Label ID="lbl_roleName" runat="server" Text='<%# Bind("RoleName") %>' /></td>
                </tr>
            
            </table>

            <asp:Button ID="EditButton" runat="server" CausesValidation="false" CommandName="Edit" Text="Edit" />

            &nbsp

            <asp:Button ID="DeleteButton" runat="server" CausesValidation="false" CommandName="Delete" Text="Delete" OnClick="DeleteButton_Click" OnClientClick="return confirm ('Are you sure you want to delete this patron record?')" />

            <br />

        </ItemTemplate>
    </asp:FormView>

    <br />
    <asp:Label ID="lbl_deletedPatron" runat="server" Text=""></asp:Label>
    <br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g1ConnectionString %>"
        
        DeleteCommand="DELETE FROM [aspnet_Users] WHERE [UserID] = @UserID"

        SelectCommand="SELECT library_UserProfile.FirstName, library_UserProfile.LastName, library_UserProfile.City, library_UserProfile.PostalCode, aspnet_Users.UserName, aspnet_Roles.RoleName, library_UserProfile.UserID FROM aspnet_Users INNER JOIN library_UserProfile ON aspnet_Users.UserId = library_UserProfile.UserID INNER JOIN aspnet_Roles ON aspnet_Users.ApplicationId = aspnet_Roles.ApplicationId"

        UpdateCommand="UPDATE [library_UserProfile] SET [FirstName] = @FirstName, [LastName = @LastName, [City] = @City, [PostalCode] = @PostalCode WHERE [UserID] = @UserID">

        <DeleteParameters>
            <asp:Parameter Name="UserID" Type="Object" />
        </DeleteParameters>

        <SelectParameters>
            <asp:QueryStringParameter Name="UserID" QueryStringField="UserID" />
        </SelectParameters>

        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="PostalCode" />
            <asp:Parameter Name="UserID" />
        </UpdateParameters>

    </asp:SqlDataSource>

</asp:Content>
