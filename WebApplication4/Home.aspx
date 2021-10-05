<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Home.aspx.vb" Inherits="WebApplication4.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
    <link href="globie_common.css" rel="stylesheet" />
    <link href="home_style.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <section>
             <header>
               <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                   <asp:Image ID="Image1" runat="server" DescriptionUrl="~/images/Globie-logo2.png" Height="90px" ImageUrl="~/images/Globie-logo2.png" Width="90px" CssClass="Globie-Logo" />
                      &nbsp;&nbsp; &nbsp;&nbsp;
                   <a class="navbar-brand">Globie</a>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                      
                  </div>
              </nav>
            </header>
             <aside id="left-side">
                <div id="user-details">
                 <asp:Image ID="Image2" runat="server" ImageUrl="~/images/userdefault.png" />
                 <asp:Label ID="usernamelbl" runat="server" Text="UserName" ForeColor="White"></asp:Label>
                 <asp:Label ID="Label2" runat="server" Text="Status - Active"></asp:Label>
                </div>
                <asp:Button ID="Button1" runat="server" Text="Home" class="btn-options selected_btn" />
                <asp:Button ID="Button2" runat="server" Text="Post" class="btn-options" />
                <asp:Button ID="Button3" runat="server" Text="Friends" class="btn-options"/>
                <asp:Button ID="Button4" runat="server" Text="Feeds" class="btn-options"/>
                <asp:Button ID="Button5" runat="server" Text="Account" class="btn-options" />
            </aside>
            <asp:Panel CssClass="Moveable" ID="Contents" runat="server">

                <!--
              <div class="card" style="width: 20rem;">
                    <div>
                        <asp:Image ID="Image3" runat="server" CssClass="profile_pic_lrg" ImageUrl="images/user/christina.jpg" />
                        <asp:Label ID="Label1" runat="server" CssClass="username_lrg" Text="name@gmail.com"></asp:Label>
                    </div>
                    <img
                        src="https://www.w3schools.com/w3images/wedding.jpg"
                        class="card-img-top"
                        alt="..." />
                    <div class="card-body">
                        <asp:ImageButton ID="ImageButton1" runat="server" CssClass="likes_lrg" ImageUrl="images/hearts-empty.png" />
                        <asp:ImageButton ID="ImageButton2" runat="server" CssClass="comment_lrg" ImageUrl="images/comment.png" />
                    </div>
                    <div class="card-body content">

                        <h5 class="card-title">Christa</h5>
                        <p class="card-text Caption ">
                            Some quick example text to build on the card title and make up the bulk of the
      card's content.
                        </p>
                    </div>


                </div>
                -->

            </asp:Panel>
    
        </section>
    </form>
  
</body>
</html>
