Imports System.Data.SqlClient

Public Class Register_Page
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.ConnectionString = _default.CON_VALUE
        con.Open()
    End Sub
    Public Sub getVal()
        Dim fullname = Request.Form("fullName").ToString
        Dim username = Request.Form("emailAddress").ToString
        Dim password = Request.Form("passwd").ToString
        Dim age = Request.Form("birthdayDate").ToString
        Dim inst_name = Request.Form("inst_name").ToString
        Dim gender = Request.Form("inlineRadioOptions").ToString
        InsertInDb(username, fullname, password, age, gender, inst_name)

    End Sub
    Public Sub resultClose()
        Panel1.Visible = False
        Response.Redirect("/default.aspx")

    End Sub
    Private Sub InsertInDb(ByVal fname, ByVal uname, ByVal pswd, ByVal age, ByVal gender, ByVal inst_name)
        Try
            Dim cmd As New SqlCommand With {
        .Connection = con,
        .CommandText = "insert into user_login(username,full_name,passwd,workplace,age,gender) values('" + fname + "','" + uname + "','" + pswd + "','" + inst_name + "','" + age + "','" + gender + "')"
        }
            Dim dr1 = cmd.ExecuteNonQuery()

            If dr1 Then
                Label1.Text = "Registered Sucessfully."
                Label1.CssClass = ""


            Else
                Label1.Text = "Fatal:Error" + vbCrLf + "Occured"
                Label1.CssClass = "alert-danger"
            End If
            Panel1.Visible = True

        Catch ex As SqlException
            Panel1.Visible = True
            Label1.Text = "Fatal:Error" + vbCrLf + "Occured"
            Label1.CssClass = "alert-danger"

        End Try


    End Sub
End Class