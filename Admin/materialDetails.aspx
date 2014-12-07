<%@ Page Title="" Language="VB" MasterPageFile="~/libraryMain.master" AutoEventWireup="false" CodeFile="materialDetails.aspx.vb" Inherits="Admin_materialDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Material Details</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g1ConnectionString %>" 
        
        SelectCommand="SELECT [MaterialID], [MaterialType], [CallNumber], [Title], [Author], [Publisher], [Copyright], [ISBN], [MaterialDescription], [PhotoName], [Available] FROM [library_Materials] WHERE ([MaterialID] = @MaterialID)" 
        
        DeleteCommand="DELETE FROM [library_Materials] WHERE [MaterialID] = @MaterialID" 
        
        InsertCommand="INSERT INTO [library_Materials] ([MaterialType], [CallNumber], [Title], [Author], [Publisher], [Copyright], [ISBN], [MaterialDescription], [PhotoName], [Available]) VALUES (@MaterialType, @CallNumber, @Title, @Author, @Publisher, @Copyright, @ISBN, @MaterialDescription, @PhotoName, @Available)" 
        
        UpdateCommand="UPDATE [library_Materials] SET [MaterialType] = @MaterialType, [CallNumber] = @CallNumber, [Title] = @Title, [Author] = @Author, [Publisher] = @Publisher, [Copyright] = @Copyright, [ISBN] = @ISBN, [MaterialDescription] = @MaterialDescription, [PhotoName] = @PhotoName, [Available] = @Available WHERE [MaterialID] = @MaterialID">

        <DeleteParameters>
            <asp:Parameter Name="MaterialID" Type="Int32" />
        </DeleteParameters>
        
        <InsertParameters>
            <asp:Parameter Name="MaterialType" />
            <asp:Parameter Name="CallNumber" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Publisher" Type="String" />
            <asp:Parameter Name="Copyright" Type="Double" />
            <asp:Parameter Name="ISBN" Type="Double" />
            <asp:Parameter Name="MaterialDescription" Type="String" />
            <asp:Parameter Name="PhotoName" Type="String" />
            <asp:Parameter Name="Available" type="String" />
        </InsertParameters>

        <SelectParameters>
            <asp:QueryStringParameter Name="MaterialID" QueryStringField="MaterialID" Type="Int32" />
        </SelectParameters>

        <UpdateParameters>
            <asp:Parameter Name="MaterialType" />
            <asp:Parameter Name="CallNumber" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Publisher" Type="String" />
            <asp:Parameter Name="Copyright" Type="Double" />
            <asp:Parameter Name="ISBN" Type="Double" />
            <asp:Parameter Name="MaterialDescription" Type="String" />
            <asp:Parameter Name="PhotoName" Type="String" />
            <asp:Parameter Name="Available" type="String"/>
            <asp:Parameter Name="MaterialID" />
        </UpdateParameters>

    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g1ConnectionString %>" 
        SelectCommand="SELECT [Available] FROM [library_Available]">
    </asp:SqlDataSource>

    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaterialID" DataSourceID="SqlDataSource1">
        
        <EditItemTemplate>

            <table>

                <tr>
                    <td align="right">MaterialID:</td>
                    <td align="left"><asp:TextBox ID="tb_materialID" runat="server" enabled="false" Text='<%# Eval("MaterialID") %>' /></td>
                </tr>

                <tr>
                    <td align="right">Material Type:</td>
                    <td align="left">
                        <asp:DropDownList ID="ddl_materialType" runat="server" DataSourceID="SqlDataSource2"
                            DataTextField="MaterialType" DataValueField="MaterialType" SelectedValue='<%# Bind("MaterialType") %>'>
                        </asp:DropDownList></td>
                </tr>

                <tr>
                    <td align="right">Call Number:</td>
                    <td align="left"><asp:TextBox ID="tb_callNumber" runat="server" Text='<%# Bind("CallNumber") %>' /></td>
                </tr>

                <tr>
                    <td align="right">Title:</td>
                    <td align="left"><asp:TextBox ID="tb_title" runat="server" Text='<%# Bind("Title") %>' /></td>
                </tr>

                <tr>
                    <td align="right">Author:</td>
                    <td align="left"><asp:TextBox ID="tb_author" runat="server" Text='<%# Bind("Author") %>' /></td>
                </tr>

                <tr>
                    <td align="right">Publisher:</td>
                    <td align="left"><asp:TextBox ID="tb_publisher" runat="server" Text='<%# Bind("Publisher") %>' /></td>
                </tr>

                <tr>
                    <td align="right">Copyright:</td>
                    <td align="left"><asp:TextBox ID="tb_copyright" runat="server" Text='<%# Bind("Copyright") %>' /></td>
                </tr>
            
                 <tr>
                    <td align="right">ISBN:</td>
                     <td align="left"><asp:TextBox ID="tb_ISBN" runat="server" Text='<%# Bind("ISBN") %>' /></td>
                </tr>
            
                <tr>
                    <td align="right">Material Description:</td>
                    <td align="left"><asp:TextBox ID="tb_MaterialDescription" runat="server" Text='<%# Bind("MaterialDescription") %>' /></td>
                </tr>
                 
                 <tr>
                    <td align="right">Available:</td>
                    <td align="left"><asp:TextBox ID="tb_Available" runat="server" Text='<%# Bind("Available") %>' /></td>
                </tr>

            </table>

            <asp:Button ID="UpdateButton" runat="server"  CausesValidation="True" CommandName="Update" Text="Update" />

            &nbsp; &nbsp;

            <asp:Button ID="UpdateCancelButton" runat="server"  CausesValidation="False" CommandName="Cancel" Text="Cancel" />

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g1ConnectionString %>" 
                    SelectCommand="SELECT [MaterialType] FROM [library_MaterialType]"></asp:SqlDataSource>

        </EditItemTemplate>

        <InsertItemTemplate>
            
        </InsertItemTemplate>

        <ItemTemplate>
            
            <table>

                <tr>
                    <td align="right">MaterialID:</td><td align="left"><asp:Label ID="lbl_materialID" runat="server" Text='<%# Eval("MaterialID") %>' /></td>
                </tr>

                <tr>
                    <td align="right">MaterialType:</td><td align="left"><asp:Label ID="lbl_materialType" runat="server" Text='<%# Bind("MaterialType") %>' /></td>
                </tr>

                <tr>
                    <td align="right">CallNumber:</td><td align="left"><asp:Label ID="lbl_callNumber" runat="server" Text='<%# Bind("CallNumber") %>' /></td>
                </tr>

                <tr>
                    <td align="right">Title:</td><td align="left"><asp:Label ID="lbl_title" runat="server" Text='<%# Bind("Title") %>' /></td>
                </tr>

                <tr>
                    <td align="right">Author:</td><td align="left"><asp:Label ID="lbl_author" runat="server" Text='<%# Bind("Author") %>' /></td>
                </tr>

                <tr>
                    <td align="right">Publisher:</td><td align="left"><asp:Label ID="lbl_publisher" runat="server" Text='<%# Bind("Publisher") %>' /></td>
                </tr>

                <tr>
                    <td align="right">Copyright:</td><td align="left"><asp:Label ID="lbl_copyright" runat="server" Text='<%# Bind("Copyright") %>' /></td>
                </tr>
            
                 <tr>
                    <td align="right">ISBN:</td><td align="left"><asp:Label ID="lbl_ISBN" runat="server" Text='<%# Bind("ISBN") %>' /></td>
                </tr>
            
                <tr>
                    <td align="right">MaterialDescription:</td><td align="left"><asp:Label ID="lbl_MaterialDescription" runat="server" Text='<%# Bind("MaterialDescription") %>' /></td>
                </tr>
                 
                <tr>
                    <td align="right">Available:</td><td align="left"><asp:Label ID="lbl_Available" runat="server" Text='<%# Bind("Available") %>' /></td>
                </tr>

            </table>

            <asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />

            &nbsp

            <asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm ('Are you sure you want to delete this material?')"  />

        </ItemTemplate>

    </asp:FormView>

    <asp:Label ID="lbl_DeletedMaterial" runat="server" Text=""></asp:Label>

    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:db_library %>" SelectCommand="SELECT library_UserProfile.UserID, library_UserProfile.FirstName, library_UserProfile.LastName, library_UserProfile.City, library_UserProfile.PostalCode FROM library_Rentals INNER JOIN library_UserProfile ON library_Rentals.UserID = library_UserProfile.UserID WHERE (library_Rentals.MaterialID = @materialID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="materialID" QueryStringField="materialID" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSource4">
        <Columns>
            <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
        </Columns>
    </asp:GridView>

</asp:Content>