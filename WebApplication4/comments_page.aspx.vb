
Imports System.Data.SqlClient
Public Class comments_page
    Inherits System.Web.UI.Page
    Dim post
    Dim con As New SqlConnection

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.ConnectionString = _default.CON_VALUE
        con.Open()
        post = WebForm1.curr_post
        loadPost()
        loadComment()
    End Sub
    Public Sub loadPost()
        comment_image.ImageUrl = post(2).ToString
        profile_img_usr.ImageUrl = post(2).ToString
        profile_name_usr.Text = post(6).ToString
    End Sub
    Public Sub loadComment()
        Dim query = "select * from who_commented where post_id = '" + post(0).ToString + "'"
        Try
            Dim cmd As New SqlCommand With
            {
            .CommandText = query,
            .Connection = con}
            Dim res = cmd.ExecuteReader
            While res.Read
                Dim p1 As New Panel With {
                    .CssClass = "comment_row"
                }
                Dim username As New Label With {
                    .Text = res("username"),
                    .CssClass = "uname"
                    }
                Dim comment As New Label With {
                  .Text = res("comment"),
                  .CssClass = "comment"
                  }
                p1.Controls.Add(username)
                p1.Controls.Add(comment)
                comment_data.Controls.Add(p1)

            End While
            res.Close()
        Catch ex As Exception
            MsgBox("Error")
        End Try
    End Sub
    Public Sub postComment() Handles comment_on_post.Click
        Dim msg = Request.Form("comment_text")
        Dim query = "insert into who_commented values('" + post(0).ToString + "','" + WebForm1.usrname + "','" + msg.ToString + "')"
        Try
            Dim cmd As New SqlCommand With
           {
           .CommandText = query,
           .Connection = con
            }
            Dim res = cmd.ExecuteNonQuery
            If res Then
                Response.Redirect("/comments_page.aspx")
            Else
                Response.Redirect("/Dashboard_Page.aspx")

            End If

        Catch ex As Exception

        End Try

    End Sub
End Class