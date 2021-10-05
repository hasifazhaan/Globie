Imports System.Data.SqlClient

Public Class Home
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        usernamelbl.Text = "Raju@gmail.com" '_default.username
        con.ConnectionString = _default.CON_VALUE
        con.Open()

        '' getPost()
    End Sub
    Public Sub getPost()
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
            Contents.Controls.Add(fds)
        Next
    End Sub

    Public Function createPost(ByVal Post, ByVal idindex)
        Dim like_url = "/images/hearts-empty.png"
        Dim fds As New Panel With {
                .CssClass = "CenterDivPost"
        }
        Dim title As New Panel With {
                .CssClass = "title_lrg"
        }

        Dim img As New ImageButton With {
               .ImageUrl = Post(2).ToString,
               .ID = "Img_post" + idindex.ToString,
               .CssClass = "img_post post_lrg",
               .CausesValidation = False
           }

        Dim profile_pic As New Image With {
                .ImageUrl = Post(2).ToString,
                .CssClass = "profile_pic_lrg"
            }

        Dim name As New Label With {
            .CssClass = "card-title text-light username_lrg",
            .Text = Post(6).ToString
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
           .CssClass = "text-light likes_label_lrg"
            }

        Dim comment_pics As New Label With {
                .Text = Post(4).ToString,
                 .CssClass = "text-light comment_label_lrg"
            }

        ''  Dim da As New SqlDataAdapter(cmd2)
        ''  Dim ds As New DataSet()
        ''  Dim sqlCommand = da.SelectCommand(


        Dim btn1 As New ImageButton With {
               .ImageUrl = like_url,
               .CssClass = "Likes likes_lrg ",
                .CausesValidation = False,
                .ID = "Likes " + idindex.ToString
           }


        Dim btn2 As New ImageButton With {
               .ImageUrl = "/images/comment.png",
               .CssClass = "Comments comment_lrg",
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

    Public Sub FeedClick() Handles Button4.Click
        Response.Redirect("./Feeds.aspx")
    End Sub
    Public Sub HomeClick() Handles Button1.Click
        Response.Redirect("./Home.aspx")
    End Sub

End Class