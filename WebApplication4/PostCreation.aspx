<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PostCreation.aspx.vb" Inherits="WebApplication4.PostCreation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js" integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
    <link href="globie_common.css" rel="stylesheet" /> 
    <link href="postcreation_page.css" rel="stylesheet" />
    <title>Globie Connect The World</title>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
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
                <asp:Button ID="Button3" runat="server" Text="Friends" class="btn-options" />
                <asp:Button ID="Button4" runat="server" Text="Feeds" class="btn-options" />
                <asp:Button ID="Button5" runat="server" Text="Account" class="btn-options" />
            </aside>

            <section class="Moveable">
                <div class="card">
                    <div>
                        <asp:Image ID="Image3" runat="server" CssClass="profile_pic_lrg" ImageUrl="images/user/christina.jpg" />
                        <asp:Label ID="Label1" runat="server" CssClass="text-light" Text="name@gmail.com"></asp:Label>
                        <asp:Button ID="PostBtn" runat="server"  CssClass="btn btn-primary" Text="Post"></asp:Button>
                    </div>
                    <asp:Image ID="PostImage" runat="server" />
                    <div class="box__input">
                        <asp:FileUpload ID="ImageUpload" runat="server" />
                       
                        <label for="file"><span class="box__dragndrop"> or drag it here</span></label>
                        <asp:Button ID="PostImageBtn" class="box__button"  UseSubmitBehavior="false" runat="server" Text="Upload" /> 
                    </div>
                    <div class="box__uploading">Uploading…</div>
                    <div class="box__success">Done!</div>
                    <div class="box__error">Error! <span></span>.</div>

                    
                    <div class="card-body content">

                        <h5 class="card-title">Christa</h5>
                        <p class="card-text Caption ">
                            <asp:TextBox ID="Caption" TextMode="MultiLine" Height="100" runat="server"></asp:TextBox>
                        
                        </p>
                    </div>


                </div>
            </section>
        </section>
    </form>
</body>
</html>
