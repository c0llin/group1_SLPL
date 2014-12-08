<%@ Page Title="" Language="VB" MasterPageFile="~/libraryMain.master" AutoEventWireup="false" CodeFile="addMaterial.aspx.vb" Inherits="Admin_addMaterial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Add New Material</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g1ConnectionString %>"
         
        DeleteCommand="DELETE FROM [library_Materials] WHERE [MaterialID] = @MaterialID" 

        InsertCommand="INSERT INTO [library_Materials] ([MaterialType], [CallNumber], [Title], [Author], [Publisher], [Copyright], [ISBN], [MaterialDescription], [PhotoName], [Available]) VALUES (@MaterialType, @CallNumber, @Title, @Author, @Publisher, @Copyright, @ISBN, @MaterialDescription, @PhotoName, @AvailableStatus)" 
       
        SelectCommand="SELECT [MaterialID], [MaterialType], [CallNumber], [Title], [Author], [Publisher], [Copyright], [ISBN], [MaterialDescription], [PhotoName], [Available] FROM [library_Materials]" 
        
        UpdateCommand="UPDATE [library_Materials] SET [MaterialType] = @MaterialType, [CallNumber] = @CallNumber, [Title] = @Title, [Author] = @Author, [Publisher] = @Publisher, [Copyright] = @Copyright, [ISBN] = @ISBN, [MaterialDescription] = @MaterialDescription, [PhotoName] = @PhotoName, [Available] = @Available WHERE [MaterialID] = @MaterialID">
        
        <DeleteParameters>
            <asp:Parameter Name="MaterialID" Type="Int32" />
        </DeleteParameters>

        <InsertParameters>
            <asp:Parameter Name="MaterialType" Type="String" />
            <asp:Parameter Name="CallNumber" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Publisher" Type="String" />
            <asp:Parameter Name="Copyright" Type="String" />
            <asp:Parameter Name="ISBN" Type="String" />
            <asp:Parameter Name="MaterialDescription" Type="String" />
            <asp:Parameter Name="PhotoName" Type="String" />
            <asp:Parameter Name="AvailableStatus" Type="String" />
        </InsertParameters>
        
        <UpdateParameters>
            <asp:Parameter Name="MaterialType" Type="String" />
            <asp:Parameter Name="CallNumber" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Publisher" Type="String" />
            <asp:Parameter Name="Copyright" Type="String" />
            <asp:Parameter Name="ISBN" Type="String" />
            <asp:Parameter Name="MaterialDescription" Type="String" />
            <asp:Parameter Name="PhotoName" Type="String" />
            <asp:Parameter Name="Available" Type="String" />
            <asp:Parameter Name="MaterialID" Type="Int32" />
        </UpdateParameters>
    
    </asp:SqlDataSource>
    
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g1ConnectionString %>" 
        SelectCommand="SELECT [MaterialType] FROM [library_MaterialType]">
    </asp:SqlDataSource>
    
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g1ConnectionString %>" 
        SelectCommand="SELECT AvailableStatus FROM library_AvailableStatus">
    </asp:SqlDataSource>

    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaterialID" DataSourceID="SqlDataSource1" DefaultMode="Insert">

        <EditItemTemplate>
            
        </EditItemTemplate>

        <InsertItemTemplate>
            
            <table>

                <tr>
                    <td align="right">Material Type:</td>
                    <td align="left">
                        <asp:DropDownList ID="ddl_materialType" runat="server" DataSourceID="SqlDataSource4"
                            DataTextField="MaterialType" DataValueField="MaterialType" SelectedValue='<%# Bind("MaterialType") %>'>
                        </asp:DropDownList></td>
                </tr>

                <tr>
                    <td align="right">Call Number:</td>
                    <td align="left"><asp:TextBox ID="tb_callNumber" runat="server" Text='<%# Bind("CallNumber") %>' /></td>
                </tr>

                <tr>
                    <td align="right">Title:</td><td align="left">
                        <asp:TextBox ID="tb_title" runat="server" Text='<%# Bind("Title") %>' /></td>
                </tr>

                <tr>
                    <td align="right">Author:</td><td align="left">
                        <asp:TextBox ID="tb_author" runat="server" Text='<%# Bind("Author") %>' /></td>
                </tr>

                <tr>
                    <td align="right">Publisher:</td><td align="left">
                        <asp:TextBox ID="tb_publisher" runat="server" Text='<%# Bind("Publisher") %>' /></td>
                </tr>

                <tr>
                    <td align="right">Copyright:</td><td align="left">
                        <asp:TextBox ID="tb_copyright" runat="server" Text='<%# Bind("Copyright") %>' /></td>
                </tr>
            
                 <tr>
                    <td align="right">ISBN:</td><td align="left">
                        <asp:TextBox ID="tb_ISBN" runat="server" Text='<%# Bind("ISBN") %>' /></td>
                </tr>
            
                <tr>
                    <td align="right">Material Description:</td>
                    <td align="left"><asp:TextBox ID="tb_MaterialDescription" runat="server" Text='<%# Bind("MaterialDescription") %>' /></td>
                </tr>
                 
                <tr>
                    <td align="right">Available:</td>
                    <td align="left">                        
                        <asp:DropDownList ID="ddl_available" runat="server" DataSourceID="SqlDataSource3"
                            DataTextField="AvailableStatus" DataValueField="AvailableStatus" SelectedValue='<%# Bind("AvailableStatus")%>'>
                        </asp:DropDownList></td>
                </tr>
         
            </table>      

            <br />

            <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Add Material" />

            &nbsp;

            <asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />

        </InsertItemTemplate>

        <ItemTemplate>

        </ItemTemplate>

    </asp:FormView>

</asp:Content>

