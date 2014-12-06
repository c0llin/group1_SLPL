
Partial Class Admin_materialsDueToday
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        Dim MaterialsDueToday As String

        MaterialsDueToday = "SELECT * FROM library_Rentals WHERE DateDueBack <= CONVERT(datetime, CONVERT(varchar(10), GetDate(), 112))"

        sdsMaterialsDueToday.SelectCommand = MaterialsDueToday

    End Sub
End Class
