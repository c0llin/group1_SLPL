
Partial Class Admin_viewAllMaterials
    Inherits System.Web.UI.Page





    Protected Sub GridView1_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowDataBound

        If e.Row.RowType = DataControlRowType.DataRow Then
            If e.Row.Cells(6).Text = "No" Then
                e.Row.Cells(6).Text = ""
            End If

            If e.Row.Cells(6).Text = "Damaged" Then
                e.Row.Cells(6).Text = ""
            End If

        End If
    End Sub 'GridView1_RowDataBound
End Class
