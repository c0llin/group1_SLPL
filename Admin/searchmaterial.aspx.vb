
Partial Class Admin_searchMaterial

    Inherits System.Web.UI.Page

    Protected Sub tb_searchstuff_Click(sender As Object, e As EventArgs) Handles tb_searchstuff.Click
        'Declare variables
        Dim searchterm, search As String

        searchterm = tb_searchMaterials.Text.ToString()

        'select books from list of fields
        search = "SELECT * FROM library_Materials WHERE (Author LIKE'%" + searchterm + "%') OR (Title LIKE'%" + searchterm + "%') OR (MaterialDescription LIKE'%" + searchterm + "%') OR (ISBN LIKE'%" + searchterm + "%') OR (MaterialID LIKE'%" + searchterm + "%')"


        sqlMaterialSearch.SelectCommand = search
    End Sub 'tb_searchstuff_Click

    Protected Sub btn_searchMaterialsPB_Click(sender As Object, e As EventArgs) Handles btn_searchMaterialsPB.Click
        'Declare variables
        Dim searchterm, search As String

        searchterm = tb_searchMaterialsPB.Text.ToString()

        'select books from list of fields
        search = "SELECT * FROM library_Materials WHERE (Author LIKE'%" + searchterm + "%') OR (Title LIKE'%" + searchterm + "%') OR (MaterialDescription LIKE'%" + searchterm + "%') OR (ISBN LIKE'%" + searchterm + "%') OR (MaterialID LIKE'%" + searchterm + "%')"


        sqlMaterialSearch.SelectCommand = search
    End Sub ' btn_searchMaterialsPB_Click
End Class
