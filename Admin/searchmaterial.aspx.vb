
Partial Class Admin_searchMaterial

    Inherits System.Web.UI.Page

    Protected Sub tb_searchMaterials_TextChanged(sender As Object, e As EventArgs) Handles tb_searchMaterials.TextChanged

        Dim searchword As String

        searchword = "Select * From library_Materials Where (Title Like '%" + tb_searchMaterials.Text.ToString() + "%')"

        SqlDataSource1.SelectCommand = searchword

    End Sub

End Class
