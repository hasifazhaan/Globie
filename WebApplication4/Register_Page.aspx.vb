Imports System.Data.SqlClient

Public Class Register_Page
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.ConnectionString = _default.CON_VALUE
    End Sub
    Public Sub getVal()
        MsgBox("GGGG")

    End Sub
End Class