
Imports System.Data.SqlClient


Partial Class Admin_retrunMaterial
    Inherits System.Web.UI.Page

    Protected Sub btn_Return_Click(sender As Object, e As EventArgs) Handles btn_Return.Click

        Dim strMaterialId As String = tb_MaterialID.Text

        Dim sqlConn As New SqlConnection(ConfigurationManager.ConnectionStrings("db_library").ConnectionString)
        Dim sqlAdp As New SqlDataAdapter
        Dim sqlCmd As New SqlCommand

        sqlCmd.Connection = sqlConn
        sqlCmd.CommandText = "sp_library_MaterialReturn"
        sqlCmd.CommandType = Data.CommandType.StoredProcedure

        sqlCmd.Parameters.Add(New SqlParameter("@materialID", strMaterialId))

        sqlConn.Open()
        sqlCmd.ExecuteNonQuery()
        sqlConn.Close()

        Response.Redirect("viewAllRentals.aspx")

    End Sub 'btn_Return_Click
End Class
