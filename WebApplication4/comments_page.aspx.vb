
Imports System.Data.SqlClient
Public Class comments_page
    Inherits System.Web.UI.Page
    Dim post
    Dim postid As String = "0"
    Dim con As New SqlConnection

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.ConnectionString = _default.CON_VALUE
        con.Open()
        postid = Request.QueryString("postid")
        If postid = Nothing Then
            postid = MyModule1.current_post_id.ToString
        Else
            MyModule1.current_post_id = postid.ToString
        End If
        Dim q1 = "select * from post where post_id = '" + postid.ToString + "'"
        Dim cmd As New SqlCommand With
            {
            .CommandText = q1,
            .Connection = con}

        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New DataSet()
        da.Fill(ds)
        post = ds.Tables(0).Rows(0)

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
        Dim query = "insert into who_commented values('" + postid + "','" + WebForm1.usrname + "','" + msg.ToString + "')"
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
                Response.Redirect("/Feeds.aspx")

            End If

        Catch ex As SqlException

        End Try

    End Sub
End Class