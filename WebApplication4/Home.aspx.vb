Imports System.Data.SqlClient

Public Class Home
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection

    Dim likes(50) As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        usernamelbl.Text = "ram@gmail.com" '_default.username
        con.ConnectionString = _default.CON_VALUE
        con.Open()

        getPost()
        'Dim counter = 0
        'For Each i As String In likes
        '    CheckIfLiked(i, counter)
        '    counter += 1
        'Next

        Dim a = Contents.FindControl("Likes 0")
        Dim i = a



    End Sub

    '<div Class="card" style="">
    '                <div>
    '    <asp:Image ID = "Image3" runat="server" CssClass="profile_pic_lrg" ImageUrl="images/user/christina.jpg" />
    '                    <asp:Label ID = "Label1" runat="server" CssClass="username_lrg" Text="name@gmail.com"></asp:Label>
    '                </div>
    '                <img
    '                    src="https://www.w3schools.com/w3images/wedding.jpg"
    '                    Class="card-img-top"
    '                    alt="..." />
    '                <div Class="card-body">
    '                    <asp:ImageButton ID = "ImageButton1" runat="server" CssClass="likes_lrg" ImageUrl="images/hearts-empty.png" />
    '                    <asp:ImageButton ID = "ImageButton2" runat="server" CssClass="comment_lrg" ImageUrl="images/comment.png" />
    '                </div>
    '                <div Class="card-body content">

    '                    <h5 Class="card-title">Christa</h5>
    '                    <p Class="card-text Caption ">
    '                        Some quick example text To build On the card title And make up the bulk Of the
    '  card's content.
    '                    </p>
    '                </div>


    '            </div>



    Public Sub getPost()
        Dim cmd As New SqlCommand With {
          .Connection = con,
          .CommandText = "SELECT * FROM post "
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
                .CssClass = "card"
        }
        Dim title As New Panel

        Dim profile_pic As New Image With {
                .ImageUrl = Post(2).ToString,
                .CssClass = "profile_pic_lrg"
            }
        Dim email As New Label With {
            .CssClass = "username_lrg",
            .Text = Post(5).ToString
            }
        title.Controls.Add(profile_pic)
        title.Controls.Add(email)

        Dim img As New Image With {
               .ImageUrl = Post(2).ToString,
               .ID = "Img_post" + idindex.ToString,
               .CssClass = "card-img-top"
           }

        Dim actions As New Panel With {
            .CssClass = "card-body"
        }

        Dim btn1 As New ImageButton With {
               .ImageUrl = like_url,
               .CssClass = "likes_lrg ",
                .CausesValidation = False,
                .ID = "Likes " + idindex.ToString
           }


        Dim btn2 As New ImageButton With {
               .ImageUrl = "/images/comment.png",
               .CssClass = "comment_lrg",
               .CausesValidation = False,
               .OnClientClick = "target ='_blank';"
           }
        actions.Controls.Add(btn1)
        actions.Controls.Add(btn2)

        Dim content As New Panel With {
            .CssClass = "card-body"
        }

        Dim caption_name As New Label With {
            .CssClass = "card-title"
        }

        Dim caption_content As New Label With {
            .CssClass = "card-text Caption ",
            .Text = Post(1).ToString
        }
        content.Controls.Add(caption_name)
        content.Controls.Add(caption_content)



        Dim postid As New Label With {
            .CssClass = "card-title text-light",
            .Text = Post(0).ToString,
            .Visible = False
            }
        likes(idindex) = Post(0).ToString


        Dim p2 As New Panel With {
            .CssClass = "actions"
            }




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



        AddHandler btn1.Click, Function() likepost(postid.Text, btn1)

        AddHandler btn2.Click, Function() ShowComments(postid.Text)

        fds.Controls.Add(title)
        fds.Controls.Add(img)
        fds.Controls.Add(actions)
        fds.Controls.Add(content)

        Return fds


    End Function
    Public Function ShowComments(ByVal post_id)

        Response.Redirect("/comments_page.aspx?postid=" + post_id + "")
        Return 0
    End Function
    Public Function likepost(ByVal post_id, ByVal btn)
        Dim query = "INSERT INTO likes_post VALUES('" + post_id + "','" + usernamelbl.Text + "' )"
        Dim cmd2 As New SqlCommand With {
            .Connection = con,
            .CommandText = query
            }
        Try
            Dim dr = cmd2.ExecuteNonQuery
            If dr Then
                btn.ImageUrl = "/images/hearts-filled.png"

            End If
        Catch ex As SqlException
            If ex.Number = 2627 Then
                btn.ImageUrl = "/images/hearts-filled.png"
            End If
        End Try

        Return 0
    End Function

    Public Sub CheckIfLiked(ByVal postid, ByVal index)

        Dim control_like = Contents.FindControl("Likes" + index.ToString)
        MsgBox(control_like.ToString)
        Dim query = "select * from likes_post where post_id = '" + postid.Text + "' And username = '" + usernamelbl.Text + "' "

        Dim cmd2 As New SqlCommand With {
            .Connection = con,
            .CommandText = query
            }
        Dim dr = cmd2.ExecuteReader
        If dr.Read Then

            'control_like.ImageUrl = "/images/comment.png"
        End If

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