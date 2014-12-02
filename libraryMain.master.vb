
Partial Class library
    Inherits System.Web.UI.MasterPage

    Protected Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load

        If Not Roles.IsUserInRole("r_admin") Then
            Dim menuItems As MenuItemCollection = libraryMenu.Items
            Dim adminItem As New MenuItem()
            For Each menuItem As MenuItem In menuItems
                If menuItem.Text = "Admin" Then
                    adminItem = menuItem
                End If
            Next
            menuItems.Remove(adminItem)
        End If

        If Not Roles.IsUserInRole("r_patrons") Then
            Dim menuItems As MenuItemCollection = libraryMenu.Items
            Dim adminItem As New MenuItem()
            For Each menuItem As MenuItem In menuItems
                If menuItem.Text = "Patron" Then
                    adminItem = menuItem
                End If
            Next
            menuItems.Remove(adminItem)
        End If

    End Sub



    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        'display the date for the copyright
        lbl_copy.Text = DateTime.Now.Year

    End Sub

    Protected Sub LoginStatus_LoggedOut(sender As Object, e As EventArgs) Handles LoginStatus.LoggedOut

        Response.Redirect("~/default.aspx")

    End Sub
End Class

