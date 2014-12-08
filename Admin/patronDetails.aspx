<%@ Page Title="" Language="VB" MasterPageFile="~/libraryMain.master" AutoEventWireup="false" CodeFile="patronDetails.aspx.vb" Inherits="Admin_patronDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>View, Edit & Delete Patron Details</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g1ConnectionString %>"
        
        DeleteCommand="DELETE FROM [aspnet_Users] WHERE [UserID] = @UserID"

        SelectCommand="SELECT library_UserProfile.UserID, library_UserProfile.FirstName, library_UserProfile.LastName, library_UserProfile.City, library_UserProfile.PostalCode, aspnet_Users.UserName, aspnet_Roles.RoleName, aspnet_Users.UserId, aspnet_Membership.Email FROM library_UserProfile INNER JOIN aspnet_Users ON library_UserProfile.UserID = aspnet_Users.UserId INNER JOIN aspnet_UsersInRoles ON aspnet_Users.UserId = aspnet_UsersInRoles.UserId INNER JOIN aspnet_Roles ON aspnet_UsersInRoles.RoleId = aspnet_Roles.RoleId INNER JOIN aspnet_Membership ON aspnet_Users.UserId = aspnet_Membership.UserId WHERE (library_UserProfile.UserID = @UserID)"

        UpdateCommand="UPDATE [library_UserProfile] SET [FirstName] = @FirstName, [LastName] = @LastName, [City] = @City, [PostalCode] = @PostalCode WHERE [UserID] = @UserID">

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
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="UserID" DataSourceID="SqlDataSource1" Width="255px">
        <EditItemTemplate>

            <table class="table">

                <tr>
                    <td>FirstName:</td><td align="left"><asp:TextBox ID="tb_firstName" runat="server" Text='<%# Bind("FirstName") %>' /></td>
                </tr>

                <tr>
                    <td>LastName:</td><td align="left"><asp:TextBox ID="tb_lastName" runat="server" Text='<%# Bind("LastName") %>' /></td>
                </tr>

                <tr>
                    <td>City:</td><td align="left"><asp:TextBox ID="tb_city" runat="server" Text='<%# Bind("City") %>' /></td>
                </tr>
            
                <tr>
                    <td>State:</td>
                    <td>
                        <asp:DropDownList ID="ddl_postalCode" runat="server" DataSourceID="SqlDataSource1"
                            DataTextField="PostalCode" DataValueField="PostalCode" SelectedValue='<%# Bind("PostalCode") %>'>
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td>&nbsp</td><td>&nbsp </td>
                </tr>
                
                <tr>
                    <td>UserID:</td>
                    <td><asp:TextBox ID="lbl_userID" runat="server" Enabled="false" Text='<%# Eval("UserID") %>' /></td>
                </tr>
                
                <tr>
                    <td>UserName:</td>
                    <td><asp:TextBox ID="tb_userName" enabled="false" runat="server" Text='<%# Bind("UserName") %>' /></td>
                </tr>

                <tr>
                    <td>RoleName:</td>
                    <td><asp:TextBox ID="tb_roleName" runat="server" enabled="false" Text='<%# Bind("RoleName") %>' /></td>
                </tr>
                
            </table>

            <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />

            &nbsp;&nbsp;
            
            <asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g1ConnectionString %>"
                SelectCommand="SELECT [PostalCode] FROM [library_States]"></asp:SqlDataSource>
            

        </EditItemTemplate>

        <InsertItemTemplate>

        </InsertItemTemplate>

        <ItemTemplate>
            
            <table class="table">
                <tr>
                    <td>FirstName:</td><td><asp:Label ID="lbl_firstName" runat="server" Text='<%# Bind("FirstName") %>' /></td>
                </tr>
            
                <tr>
                    <td>LastName:</td><td><asp:Label ID="lbl_lastName" runat="server" Text='<%# Bind("LastName") %>' /></td>
                </tr>

                <tr>
                    <td>City:</td><td><asp:Label ID="lbl_city" runat="server" Text='<%# Bind("City") %>' /></td>
                </tr>

                <tr>
                    <td>State:</td><td><asp:Label ID="lbl_postalCode" runat="server" Text='<%# Bind("PostalCode") %>' /></td>
                </tr>
            
                <tr>
                    <td>&nbsp</td><td>&nbsp </td>
                </tr>
                
                <tr>
                    <td>UserID:</td><td><asp:Label ID="lbl_userID" runat="server" Text='<%# Eval("UserID") %>' /></td>
                </tr>
                
                <tr>
                    <td>UserName:</td><td><asp:Label ID="lbl_userName" runat="server" Text='<%# Bind("UserName") %>' /></td>
                </tr>
            
                <tr>
                    <td>RoleName:</td><td><asp:Label ID="lbl_roleName" runat="server" Text='<%# Bind("RoleName") %>' /></td>
                </tr>
                
            </table>

            <asp:Button ID="EditButton" runat="server" CausesValidation="false" CommandName="Edit" Text="Edit" />

            &nbsp

            <asp:Button ID="DeleteButton" runat="server" CausesValidation="false" CommandName="Delete" Text="Delete" OnClick="DeleteButton_Click" OnClientClick="return confirm ('Are you sure you want to delete this patron record?')" />

            <br />

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_library %>" SelectCommand="SELECT library_Materials.MaterialID, library_Materials.Title, library_Materials.Author, library_Materials.MaterialDescription, library_Rentals.DateDueBack FROM library_Rentals INNER JOIN library_Materials ON library_Rentals.MaterialID = library_Materials.MaterialID WHERE (library_Rentals.UserID = @UserID)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="UserID" QueryStringField="UserID" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br/>
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover" AutoGenerateColumns="False" DataKeyNames="MaterialID" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="MaterialID" HeaderText="MaterialID" InsertVisible="False" ReadOnly="True" SortExpression="MaterialID" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                    <asp:BoundField DataField="MaterialDescription" HeaderText="MaterialDescription" SortExpression="MaterialDescription" />
                    <asp:BoundField DataField="DateDueBack" HeaderText="DateDueBack" SortExpression="DateDueBack" />
                </Columns>
            </asp:GridView>

        </ItemTemplate>
    </asp:FormView>

    <br />
    <asp:Label ID="lbl_deletedPatron" runat="server" Text=""></asp:Label>
    <br />
    <br />

    

    <br />
    <br />
    
</asp:Content>

