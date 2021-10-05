<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="comments_page.aspx.vb" Inherits="WebApplication4.comments_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js" integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
    <link href="comments_page.css" rel="stylesheet" />
    <title>Globie Connect The World</title>
</head>
<body>
    <form id="form1" runat="server">
        <section>
            <header>
               <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                   <asp:Image ID="Image1" runat="server" DescriptionUrl="~/images/Globie-logo2.png" Height="90px" ImageUrl="~/images/Globie-logo2.png" Width="90px" />
                      &nbsp;&nbsp; &nbsp;&nbsp;
                   <a class="navbar-brand">Globie</a>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                      <form class="form-inline my-2 my-lg-0">
                          <input class="form-control mr-sm-2 search" type="search" placeholder="Search Friends" aria-label="Search" />&nbsp;&nbsp;
                               <button class="btn btn-outline-success my-2 my-sm-0 " type="submit">Search</button>
                      </form>
                  </div>
              </nav>
            </header>
            <section>
            <section>

                <article class ="comment_image_body">
                    <asp:Image ID="profile_img_usr" CssClass ="usr_img" runat="server" />
                    <asp:Label ID="profile_name_usr" CssClass="card-title text-light"  runat="server" Text="Label"></asp:Label>
                    <asp:Image ID="comment_image" CssClass ="Comment_image" ImageUrl ="https://www.w3schools.com/w3images/wedding.jpg" runat="server" />
                </article>

                <asp:Panel ID="Panel1" runat="server" CssClass ="Comment_section" >
                    <asp:Label ID="comments_heading" CssClass="card-title text-light comments_heading"  runat="server" Text="Comments"></asp:Label>
                    <asp:Panel ID="comment_data" runat="server" CssClass ="Comment_data">

                        </asp:Panel>
                    <asp:Panel ID="Panel2" runat="server" CssClass ="Comment_actions">
                        <asp:TextBox ID="comment_text" name="comment_text" CssClass="form-control mr-sm-2 Comment_text" runat="server"></asp:TextBox>
                    <asp:Button ID="comment_on_post"  class="btn btn-outline-success my-2 my-sm-0 " runat="server" Text="Button"  UseSubmitBehavior="False" CausesValidation="False" />
                    </asp:Panel>
                    
                </asp:Panel>
            </section>

        </section>
    </form>
</body>
</html>
