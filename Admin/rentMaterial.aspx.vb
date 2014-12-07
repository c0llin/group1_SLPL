Imports System.Data.SqlClient


Partial Class Admin_rentMaterial
    Inherits System.Web.UI.Page


    Protected Sub btn_Rent_Click(sender As Object, e As EventArgs) Handles btn_Rent.Click

        Dim strMaterialID As String = tb_MaterialID.Text
        Dim strUserName As String = tb_UserName.Text
        Dim RentDate As DateTime = DateTime.Now
        Dim DateDueBack As DateTime = DateAdd("d", 30, Today)

        Dim sqlConn As New SqlConnection(ConfigurationManager.ConnectionStrings("msci3300_g1ConnectionString").ConnectionString)

        Dim sqlAdp As New SqlDataAdapter
        Dim sqlCmd As New SqlCommand

        sqlCmd.Connection = sqlConn
        sqlCmd.CommandText = "sp_library_RentMaterial"
        sqlCmd.CommandType = Data.CommandType.StoredProcedure

        sqlCmd.Parameters.Add(New SqlParameter("@UserName", strUserName))
        sqlCmd.Parameters.Add(New SqlParameter("@MaterialID", strMaterialID))
        sqlCmd.Parameters.Add(New SqlParameter("@RentDate", RentDate))
        sqlCmd.Parameters.Add(New SqlParameter("@DateDueBack", DateDueBack))
        sqlConn.Open()
        sqlCmd.ExecuteNonQuery()
        sqlConn.Close()

        Response.Redirect("viewAllRentals.aspx")

    End Sub 'btn_Rent_Click

End Class
