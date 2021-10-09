Imports System.Data
Imports System.Text
Imports System.Data.SqlClient
Imports System.Web.UI.WebControls




Public Class WebForm1
    Inherits System.Web.UI.Page


    Dim con As New SqlConnection
    Dim col1 As New Panel With {
        .CssClass = "column"}
    Dim col2 As New Panel With {
        .CssClass = "column"}
    Dim col3 As New Panel With {
        .CssClass = "column"}
    Dim imgsrc = "https://www.w3schools.com/w3images/wedding.jpg"
    Public Shared curr_post, usrname



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        usernamelbl.Text = "ram@gmail.com" '_default.username
        usrname = usernamelbl.Text
        con.ConnectionString = _default.CON_VALUE
        con.Open()

        getAllPostFromDb()
        Close_Post()

    End Sub
    Public Sub getAllPostFromDb()
        Dim cmd As New SqlCommand With {
           .Connection = con,
           .CommandText = "select * from post"
       }


        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New DataSet()
        da.Fill(ds)
        Dim index = 0
        For i As Integer = 0 To ds.Tables(0).Rows.Count - 1
            Dim fds = createPost(ds.Tables(0).Rows(i), i)
            If Index = 0 Then
                col1.Controls.Add(fds)
                Index = 1

            ElseIf Index = 1 Then
                col2.Controls.Add(fds)
                Index = 2

            Else
                col3.Controls.Add(fds)
                Index = 0
            End If
        Next
        PanelFeeds.Controls.Add(col1)
        PanelFeeds.Controls.Add(col2)
        PanelFeeds.Controls.Add(col3)

    End Sub

    Public Function createPost(ByVal Post, ByVal idindex)
        Dim like_url = "/images/hearts-empty.png"
        Dim fds As New Panel With {
                .CssClass = "feeds"
        }

        Dim img As New ImageButton With {
               .ImageUrl = Post(2).ToString,
               .ID = "Img_post" + idindex.ToString,
               .CssClass = "img_post",
               .CausesValidation = False
           }
        AddHandler img.Click, Function() viewPost(Post)

        Dim profile_pic As New Image With {
                .ImageUrl = Post(2).ToString,
                .CssClass = "usr_img"
            }

        Dim name As New Label With {
            .CssClass = "card-title text-light",
            .Text = Post(5).ToString
            }

        Dim postid As New Label With {
            .CssClass = "card-title text-light",
            .Text = Post(0).ToString,
            .Visible = False
            }

        Dim p2 As New Panel With {
            .CssClass = "actions"
            }

        Dim query = "select * from likes_post where post_id = '" + postid.Text + "' And username = '" + usernamelbl.Text + "' "

        Dim cmd2 As New SqlCommand With {
            .Connection = con,
            .CommandText = query
            }
        ' Dim dr = cmd2.ExecuteReader
        ' If dr.Read Then
        'like_url = "/images/hearts-filled.png"
        'End If

        Dim likes_pic As New Label With {
           .Text = Post(3).ToString,
           .CssClass = "text-light"
            }

        Dim comment_pics As New Label With {
                .Text = Post(4).ToString,
                 .CssClass = "text-light"
            }

        ''  Dim da As New SqlDataAdapter(cmd2)
        ''  Dim ds As New DataSet()
        ''  Dim sqlCommand = da.SelectCommand(


        Dim btn1 As New ImageButton With {
               .ImageUrl = like_url,
               .CssClass = "Likes",
                .CausesValidation = False,
                .ID = "Likes " + idindex.ToString
           }


        Dim btn2 As New ImageButton With {
               .ImageUrl = "/images/comment.png",
               .CssClass = "Comments",
               .CausesValidation = False,
               .OnClientClick = "showComment();return False"
           }


        ' AddHandler btn1.Click, Function() showComment(btn1, postid.Text, likes_pic.Text)

        fds.Controls.Add(img)
        fds.Controls.Add(profile_pic)
        fds.Controls.Add(name)
        fds.Controls.Add(p2)

        Return fds


    End Function
    Public Function viewPost(ByRef Post)
        Dim query2 = "select * from likes_post where post_id = '" + Post(0).ToString + "' and username = '" + usernamelbl.Text + "'"
        Try
            Dim cmd As New SqlCommand With
            {
            .CommandText = query2,
            .Connection = con}
            Dim res = cmd.ExecuteReader
            If res.Read Then
                likes_lrg.ImageUrl = "/images/hearts-filled.png"
            Else
                likes_lrg.ImageUrl = "/images/hearts-empty.png"
            End If

        Catch ex As Exception
            MsgBox("An Error Occured ,  Please Try Again.")
        End Try
        curr_post = Post
        CenterDivPost.Visible = True
        id_lrg.Text = Post(0).ToString
        profile_pic_lrg.ImageUrl = Post(2).ToString
        username_lrg.Text = Post(5).ToString
        post_lrg.ImageUrl = Post(2).ToString
        likes_label_lrg.Text = Post(3).ToString
        comment_label_lrg.Text = Post(4).ToString
        Caption.Text = Post(1).ToString
        Return 0
    End Function

    Public Sub Close_Post()
        CenterDivPost.Visible = False
    End Sub

    Public Sub like_curr_post() Handles likes_lrg.Click
        show_Likes()


    End Sub
    Public Sub ShowComments() Handles comment_lrg.Click
        Response.Redirect("/comments_page.aspx?postid=" + curr_post(0).ToString + "")

    End Sub




    Public Sub show_Likes()
        If likes_lrg.ImageUrl = "/images/hearts-filled.png" Then
            Return
        End If
        Dim Postid = id_lrg.Text
        Dim likes = likes_label_lrg.Text
        Dim Query = "UPDATE post SET likes = " + (likes + 1).ToString + " WHERE post_id = '" + Postid + "'"
        Dim query2 = "insert into likes_post values('" + Postid + "','" + usernamelbl.Text + "')"
        Dim cmd As New SqlCommand With
            {
            .CommandText = query2,
            .Connection = con}
        Dim res = cmd.ExecuteNonQuery
        If res Then
            Dim cmd2 As New SqlCommand With {
                .CommandText = Query,
                .Connection = con}
            Dim res2 = cmd2.ExecuteNonQuery
            If res2 Then
                likes += 1
                likes_label_lrg.Text = likes
                likes_lrg.ImageUrl = "/images/hearts-filled.png"
            End If

        End If



    End Sub
    Public Sub generate_post()
        Dim command As New SqlCommand With {
            .Connection = con,
            .CommandText = "select * from post"}
        Dim dr As SqlDataReader
        dr = command.ExecuteReader()
        While dr.Read
            Dim sb As StringBuilder = New StringBuilder()
            sb.Append("<div>")

        End While
    End Sub

    Public Sub HomeClick() Handles Button1.Click
        Response.Redirect("./Home.aspx")
    End Sub
    Public Sub NewPost() Handles Button2.Click
        Response.Redirect("./PostCreation.aspx")
    End Sub
    Public Sub Friends() Handles Button3.Click
        Response.Redirect("./PostCreation.aspx")
    End Sub
    Public Sub FeedClick() Handles Button4.Click
        Response.Redirect("./Feeds.aspx")
    End Sub


End Class