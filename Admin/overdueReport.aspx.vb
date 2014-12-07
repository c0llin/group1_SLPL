
Partial Class Admin_overdueReport
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        ' declare variable
        Dim DueToday As String

        DueToday = "SELECT * FROM library_Rentals WHERE DateDueBack <= CONVERT(datetime,CONVERT(varchar(10),GetDate(),112))"

        sqlRentals.SelectCommand = DueToday
    End Sub 'Page_Load
End Class
