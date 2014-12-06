
Partial Class Admin_materialDetails
    Inherits System.Web.UI.Page

    Protected Sub FormView1_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormView1.ItemDeleted

        Dim deletedMaterial As String = e.Values("Title").ToString()

        lbl_DeletedMaterial.Text = "The record <span class=deletedrecordhighlight> " & deletedMaterial & "</span> has been deleted from the database."

        Response.AddHeader("REFRESH", "3;URL=viewAllMaterials.aspx")

    End Sub

    Protected Sub FormView1_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated

        Response.Redirect("~/admin/viewAllMaterials.aspx")

    End Sub

End Class
