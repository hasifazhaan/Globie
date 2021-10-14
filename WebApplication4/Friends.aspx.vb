Imports System.Data.SqlClient
Imports System.Globalization

Public Class Friends
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection
    Public tousr = ""
    Dim toppanel As New Panel With {
        .CssClass = "friends-name"
        }


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        usernamelbl.Text = _default.username
        con.ConnectionString = _default.CON_VALUE
        con.Open()
        FriendsName()

        writter.Visible = False
        touserid.Visible = False
    End Sub

    Public Sub FriendsName()


        Dim Heading As New Panel With {
        .CssClass = "heading_friend"
        }
        Dim context As New Label With {
        .Text = "Friend "
        }
        Heading.Controls.Add(context)
        toppanel.Controls.Add(Heading)
        Dim cmd As New SqlCommand With {
        .Connection = con,
        .CommandText = "SELECT DISTINCT usr_from,usr_to,status FROM usr_msg WHERE usr_from = '" + usernamelbl.Text + "' OR usr_to = '" + usernamelbl.Text + "' "
    }

        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New DataSet()
        da.Fill(ds)

        For i As Integer = 0 To ds.Tables(0).Rows.Count - 1
            Dim row = ds.Tables(0).Rows(i)

            Dim secondtoppanel As New Panel With {
            .CssClass = "list-group list-group-numbered"
            }
            Dim friendpanel As New Panel With {
            .CssClass = "list-group-item d-flex justify-content-between align-items-start"
            }
            Dim divpanel As New Panel With {
            .CssClass = "ms-2 me-auto"
            }
            Dim divpanelbottom As New Panel With {
           .CssClass = "fw-bold"
           }
            Dim toname As New Button With {
                .CssClass = "username",
                .CausesValidation = False
            }
            If Not row(0).ToString = usernamelbl.Text Then
                toname.Text = row(0).ToString
                AddHandler toname.Click, Function() CreateMessage(toname.Text)
            Else

                Continue For
            End If

            divpanelbottom.Controls.Add(toname)
            Dim span As New Panel
            If row(2).ToString = "N         " Then

                span.CssClass = "badge bg-primary rounded-pill"

                Dim pill As New Label With {
                .Text = "1"
                }
                span.Controls.Add(pill)

            End If
            divpanel.Controls.Add(divpanelbottom)
            divpanel.Controls.Add(span)
            friendpanel.Controls.Add(divpanel)
            secondtoppanel.Controls.Add(friendpanel)
            toppanel.Controls.Add(secondtoppanel)

        Next
        Container.Controls.Add(toppanel)
    End Sub


    Public Function CreateMessage(ByVal towho)

        touserid.Text = towho.ToString
        Dim cmd As New SqlCommand With {
         .Connection = con,
         .CommandText = "SELECT * FROM usr_msg WHERE usr_from = '" + usernamelbl.Text + "' AND usr_to = '" + towho + "' OR  usr_to = '" + usernamelbl.Text + "' AND usr_from = '" + towho + "'  ORDER BY date1 ASC "
     }
        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New DataSet()
        da.Fill(ds)

        Dim mid = "0"
        Dim area As New Panel With {
        .CssClass = "msg-area"
        }
        Dim msgpanel As New Panel With {
                .CssClass = "message"
        }
        msgpanel.Controls.Clear()
        Dim sendernavbar As New Panel With {
        .CssClass = "selected-user-details"
        }
        Dim image As New Image With {
            .CssClass = "image",
            .ImageUrl = "~/images/user/christina.jpg"
        }

        Dim tb As New TextBox With {
        .CssClass = "name text-light",
        .Text = "Christa"
        }
        sendernavbar.Controls.Add(image)
        sendernavbar.Controls.Add(tb)
        area.Controls.Add(sendernavbar)

        For i As Integer = 0 To ds.Tables(0).Rows.Count - 1
            Dim fromuser = 0
            Dim row = ds.Tables(0).Rows(i)
            Dim msgcontainer As New HtmlGenericControl
            msgcontainer.TagName = "ul"

            mid = row(0)

            Dim msgcontent As New Label

            msgcontainer.InnerText = row(3)
            If row(1).ToString = usernamelbl.Text Then

                msgcontainer.Attributes("class") = "from text-light"
            Else
                msgcontainer.Attributes("class") = "to text-light"
            End If

            msgpanel.Controls.Add(msgcontainer)


        Next
        area.Controls.Add(msgpanel)


        Container.Controls.Add(area)
        writter.Visible = True

        Dim seen = "UPDATE msg_usr SET status  = 'S' WHERE mid = '" + mid.ToString + "' "


        Return towho

    End Function


    Public Function SendMessage() Handles Button6.Click
        Dim msg = Message.Text

        Dim dt As Date = Date.Now

        Dim usr = usernamelbl.Text

        Dim pkey = usr + dt.ToString

        Dim cmd As New SqlCommand With {
        .Connection = con,
        .CommandText = "INSERT INTO usr_msg (mid,usr_from,usr_to,msg,status,date1) VALUES ('" + pkey + "','" + usr + "','" + touserid.Text + "','" + msg + "','" + "N" + "','" + dt.ToString + "')"
    }
        Try
            Dim dr1 = cmd.ExecuteNonQuery()

            If dr1 = False Then
                MsgBox("Failed")
            End If
            Message.Text = ""
            CreateMessage(touserid.Text)
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try


        Return 0
    End Function
    '<section Class="friends-name">
    '                <ol Class="list-group list-group-numbered">
    '                    <li Class="list-group-item d-flex justify-content-between align-items-start">
    '                        <div Class="ms-2 me-auto">
    '                            <div Class="fw-bold">Subheading</div>
    '                            Cras justo odio
    '                        </div>
    '                        <span Class="badge bg-primary rounded-pill">14</span>
    '                    </li>
    '                    <li Class="list-group-item d-flex justify-content-between align-items-start">
    '                        <div Class="ms-2 me-auto">
    '                            <div Class="fw-bold">Subheading</div>
    '                            Cras justo odio
    '                        </div>
    '                        <span Class="badge bg-primary rounded-pill">14</span>
    '                    </li>
    '                    <li Class="list-group-item d-flex justify-content-between align-items-start">
    '                        <div Class="ms-2 me-auto">
    '                            <div Class="fw-bold">Subheading</div>
    '                            Cras justo odio
    '                        </div>
    '                        <span Class="badge bg-primary rounded-pill">14</span>
    '                    </li>
    '                </ol>
    '            </section>
    '            <section Class="msg-area">
    '                <section Class="selected-user-details">
    '                    <asp:Image ID = "Image3" CssClass ="image" runat="server" ImageUrl="~/images/user/christina.jpg"/>
    '                    <asp:TextBox ID = "TextBox1" CssClass="name text-light " runat="server" Text="Christa"></asp:TextBox>
    '                </section>
    '                <section Class="message">
    '                    <ul Class ="from text-light ">Hello</ul>
    '                    <ul Class ="to text-light">Hii</ul>
    '                      <ul Class ="from text-light">welcome to the chat app</ul>
    '                      <ul Class ="from text-light ">we can do more</ul>
    '                      <ul Class ="from text-light ">ok nice</ul>
    '                     <ul Class ="to text-light">thanks for advice</ul>
    '                     <ul Class ="to text-light">ok bye</ul>
    '                     <ul Class ="from text-light ">ok nice</ul>
    '                     <ul Class ="to text-light">thanks for advice</ul>
    '                     <ul Class ="to text-light">ok bye</ul>
    '                </section>
    '                <section Class="msg-writter">
    '                    <input type = "text" />
    '                    <button>Send</button>
    '                                                                                                                                    </section>
    '            </section>
    '        </section>
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