
Partial Class Admin_searchPatron
    Inherits System.Web.UI.Page

    Protected Sub btn_Search_Click(sender As Object, e As EventArgs) Handles btn_Search.Click

        'Declare variables
        Dim searchterm, search As String

        searchterm = tb_patronSearch.Text.ToString()

        'select books from list of fields
        search = "SELECT * FROM library_UserProfile WHERE (FirstName LIKE'%" + searchterm + "%') OR (LastName LIKE'%" + searchterm + "%') OR (email LIKE'%" + searchterm + "%') OR (phone LIKE'%" + searchterm + "%')"


        sqlPatron.SelectCommand = search



    End Sub 'btn_Search_Click


    Protected Sub btn_SearchPatronPB_Click(sender As Object, e As EventArgs) Handles btn_SearchPatronPB.Click
        'Declare variables
        Dim searchterm, search As String

        searchterm = tb_patronSearchPB.Text.ToString()

        'select books from list of fields
        search = "SELECT * FROM library_UserProfile WHERE (FirstName LIKE'%" + searchterm + "%') OR (LastName LIKE'%" + searchterm + "%') OR (email LIKE'%" + searchterm + "%') OR (phone LIKE'%" + searchterm + "%')"


        sqlPatron.SelectCommand = search
    End Sub ' btn_SearchPatron_Click
End Class
