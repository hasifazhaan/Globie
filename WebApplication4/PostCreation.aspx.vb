Imports System.Data.SqlClient

Public Class PostCreation
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.ConnectionString = _default.CON_VALUE
        con.Open()
    End Sub

    Public Sub ImageSelected() Handles PostImageBtn.Click
        Dim serverpath = "images"
        Dim Image = ImageUpload.PostedFile.FileName
        Dim fullpath = System.IO.Path.Combine(serverpath, Image)
        PostImage.ImageUrl = fullpath
    End Sub

    Public Sub PostToDb() Handles PostBtn.Click
        Try
            Dim usr = _default.username.ToString
            Dim dt As Date = Today
            Dim pkey = usr + Today.ToString

            Dim cmd As New SqlCommand With {
        .Connection = con,
        .CommandText = "insert into post values('" + pkey + "','" + Caption.Text + "','" + PostImage.ImageUrl.ToString + "','0','0','" + usr + "')"
        }
            Dim dr1 = cmd.ExecuteNonQuery()

            If dr1 Then

                MsgBox("SuccessFul")

            Else
                MsgBox("Failed")
            End If


        Catch ex As SqlException

            MsgBox("Error")
        End Try

    End Sub
    Public Sub HomeClick() Handles Button1.Click
        Response.Redirect("./Home.aspx")
    End Sub
    Public Sub NewPost() Handles Button2.Click
        Response.Redirect("./PostCreation.aspx")
    End Sub
    Public Sub Friends() Handles Button3.Click
        Response.Redirect("./Friends.aspx")
    End Sub
    Public Sub FeedClick() Handles Button4.Click
        Response.Redirect("./Feeds.aspx")
    End Sub

End Class