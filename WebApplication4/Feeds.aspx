<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Feeds.aspx.vb" Inherits="WebApplication4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js" integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
    <link href="globie_common.css" rel="stylesheet" /> 
    <link href="feeds_page.css" rel="stylesheet" />
    <title>Globie Connect The World</title>
    <script>
       
       
    </script>
</head>
<body >
    <form id="form1" runat="server">
        <section>
            <header>
               <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                   <asp:Image ID="Image1" runat="server" DescriptionUrl="~/images/Globie-logo2.png" Height="90px" ImageUrl="~/images/Globie-logo2.png" Width="90px" />
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
                <asp:Button ID="Button1" runat="server" Text="Home" class="btn-options" />
                <asp:Button ID="Button2" runat="server" Text="Post" class="btn-options" />
                <asp:Button ID="Button3" runat="server" Text="Friends" class="btn-options"/>
                <asp:Button ID="Button4" runat="server" Text="Feeds" class="btn-options"/>
                <asp:Button ID="Button5" runat="server" Text="Account" class="btn-options" />
            </aside>

             <section class="Moveable">  
                 

                 <section>
                     <asp:Label ID="feedtitle" runat="server" Text="Feeds"></asp:Label>
                     <asp:Panel ID="PanelFeeds" class="row" runat="server">
                     </asp:Panel>

                 </section>
                 <asp:Panel ID="CenterDivPost" runat="server">
                     <asp:Panel ID="title_lrg" runat="server">
                         <asp:Label ID="id_lrg" runat="server" Text="ID" Visible="False"></asp:Label>
                         <asp:Image ID="profile_pic_lrg" runat="server" CssClass="usr_img" ImageUrl="~/images/user/christina.jpg" />
                         <asp:Label ID="username_lrg" runat="server" CssClass="card-title text-light" Text="Christina"></asp:Label>
                         <asp:Button ID="Close" runat="server" Text="X" OnClick="Close_Post" CausesValidation="False" />
                     </asp:Panel>
                     <asp:Image ID="post_lrg" runat="server" CssClass="img_post" ImageUrl="~/images/beach.jpg" />
                     <div class="actions">
                         <asp:ImageButton ID="likes_lrg" runat="server" CssClass="Likes" ImageUrl="images/hearts-empty.png" CausesValidation="False" OnClientClick="return;" />
                         <asp:Label ID="likes_label_lrg" runat="server" CssClass="text-light" Text="22"></asp:Label>
                         <asp:ImageButton ID="comment_lrg" runat="server" formtarget="_blank" CssClass="Comments" ImageUrl="images/comment.png"  ImageAlign="NotSet" CausesValidation="False" OnClientClick="return;" PostBackUrl="return;" />
                         <asp:Label ID="comment_label_lrg" runat="server" CssClass="text-light" Text="Label"></asp:Label>
                     </div>
                     <asp:Label ID="Caption" runat="server" CssClass="text-light" Text="This Is A Very Big And Long Caption For Which People Can Write Anythig what They Want Despite Gramatical mistakes And Spelling Mistakes ."></asp:Label>


                 </asp:Panel>
             
            
                     
             </section>


        </section>
    </form>
</body>
</html>
