Imports System.Data.SqlClient

Partial Class Admin_addPatron
    Inherits System.Web.UI.Page




    Protected Sub ContinueButton_Click(sender As Object, e As EventArgs)
        Response.Redirect("~/admin/viewAllPatrons.aspx")
    End Sub

    Protected Sub CreateUserWizard1_ActiveStepChanged(sender As Object, e As EventArgs) Handles CreateUserWizard1.ActiveStepChanged


        'Have we JUST reached the complete step?
        If CreateUserWizard1.ActiveStep.Title = "Complete" Then

            Dim UserSettings As WizardStep = CType(CreateUserWizard1.FindControl("UserProfile"), WizardStep)

            'Programmatically reference the TextBox controls

            Dim FirstName As TextBox = CType(UserSettings.FindControl("tb_FirstName"), TextBox)
            Dim LastName As TextBox = CType(UserSettings.FindControl("tb_LastName"), TextBox)
            Dim City As TextBox = CType(UserSettings.FindControl("tb_City"), TextBox)
            Dim strPostalCode As String = ddl_PostalCode.SelectedItem.Text

            'Update the UserProfiles record for this user
            'Get the User ID of the just-added user
            Dim newUser As MembershipUser = Membership.GetUser(CreateUserWizard1.UserName)
            Dim newUserID As Guid = CType(newUser.ProviderUserKey, Guid)

            'Add the newly created user to the patron role
            Roles.AddUserToRole(newUser.UserName, "r_patron")

            'Insert new record into User Profiles
            Dim connectionString As String = ConfigurationManager.ConnectionStrings("msci3300_g1ConnectionString").ConnectionString
            Dim updateSql As String = "INSERT INTO [library_UserProfile] ([UserID], [FirstName], [LastName], [City], [PostalCode]) VALUES (@UserID, @FirstName, @LastName, @City, @PostalCode)"

            Using MyConnection As New SqlConnection(connectionString)
                MyConnection.Open()
                Dim myCommand As New SqlCommand(updateSql, MyConnection)
                myCommand.Parameters.Add(New SqlParameter("@PostalCode", strPostalCode))
                myCommand.Parameters.AddWithValue("@FirstName", FirstName.Text.Trim())
                myCommand.Parameters.AddWithValue("@LastName", LastName.Text.Trim())
                myCommand.Parameters.AddWithValue("@City", City.Text.Trim())
                myCommand.Parameters.AddWithValue("@UserID", newUserID)
                myCommand.ExecuteNonQuery()
                MyConnection.Close()
            End Using

        End If

    End Sub

End Class
