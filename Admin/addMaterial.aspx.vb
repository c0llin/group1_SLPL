﻿
Partial Class Admin_addMaterial
    Inherits System.Web.UI.Page

    Protected Sub FormView1_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormView1.ItemInserted

        Response.Redirect("~/admin/viewAllMaterials.aspx")

    End Sub

End Class
