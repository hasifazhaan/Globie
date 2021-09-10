Imports System.Data.SqlClient
Public Class _default
    Inherits System.Web.UI.Page

    Public con As New SqlConnection
    Public Const CON_VALUE = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HASEEF\source\repos\WebApplication4\WebApplication4\App_Data\Globie_Database.mdf;Integrated Security=True"
    Public Shared username = "None"
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.ConnectionString = CON_VALUE
        con.Open()
    End Sub
    Public Sub Logme()
        Dim key As String = Request.Form("email")
        Dim password As String = Request.Form("psw")
        username = key
        validation(key, password)


    End Sub
    Private Sub validation(Key, Value)
        Dim cmd As New SqlCommand
        Dim sql As String
        Dim dr As SqlDataReader
        sql = "select * from user_login where username  = '" + (Key) + "'  AND Passwd ='" + (Value) + "'"
        cmd.Connection = con
        cmd.CommandText = sql
        dr = cmd.ExecuteReader()
        If dr.Read Then
            Invalid_Label.Visible = False
            Response.Redirect("/Dashboard_Page.aspx")
        Else
            Invalid_Label.Visible = True

        End If
    End Sub
    Public Sub RegMe()
        Response.Redirect("/Register_Page.aspx")
    End Sub


End Class