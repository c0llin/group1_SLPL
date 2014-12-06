Imports System.Data.SqlClient
Imports System.Web.Security
Imports System.Web.Security.Roles
Imports System.Web.Security.Membership
Imports System.Data

Partial Class Admin_patronDetails
    Inherits System.Web.UI.Page

    Protected Sub DeleteButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim selUser As Label = CType(FormView1.FindControl("lbl_Username"), Label)

        If selUser IsNot Nothing Then

            Dim delUser As String = selUser.Text

            Membership.DeleteUser(selUser.Text)

        End If

    End Sub

    Protected Sub FormView1_ItemDeleted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewDeletedEventArgs) Handles FormView1.ItemDeleted

        Dim delPatron As String = e.Values("FirstName").ToString()

        lbl_deletedPatron.Text = "The record <span class=deletedrecordhighlight> " & delPatron & "</span> has been deleted from the database."

        Response.AddHeader("REFRESH", "3;URL=viewAllPatrons.aspx")

    End Sub

    Protected Sub FormView1_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated

        Response.Redirect("viewAllPatrons.aspx")

    End Sub
End Class
