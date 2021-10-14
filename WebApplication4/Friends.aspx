<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Friends.aspx.vb" Inherits="WebApplication4.Friends" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Globie</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
    <link href="globie_common.css" rel="stylesheet" />
    <link href="friends_page.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" action="Friends.aspx" method ="post" >
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
                <asp:Button ID="Button3" runat="server" Text="Friends" class="btn-options" />
                <asp:Button ID="Button4" runat="server" Text="Feeds" class="btn-options" />
                <asp:Button ID="Button5" runat="server" Text="Account" class="btn-options" />
            </aside>
            
                <asp:Panel ID="Container" runat="server" class="Moveable">

               
                <!--
                <section class="friends-name">
                    <ol class="list-group list-group-numbered">
                        <li class="list-group-item d-flex justify-content-between align-items-start">
                            <div class="ms-2 me-auto">
                                <div class="fw-bold">Subheading</div>
                                Cras justo odio
                            </div>
                            <span class="badge bg-primary rounded-pill">14</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-start">
                            <div class="ms-2 me-auto">
                                <div class="fw-bold">Subheading</div>
                                Cras justo odio
                            </div>
                            <span class="badge bg-primary rounded-pill">14</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-start">
                            <div class="ms-2 me-auto">
                                <div class="fw-bold">Subheading</div>
                                Cras justo odio
                            </div>
                            <span class="badge bg-primary rounded-pill">14</span>
                        </li>
                    </ol>
                </section>
                <section class="msg-area">
                    <section class="selected-user-details">
                        <asp:Image ID="Image3" CssClass ="image" runat="server" ImageUrl="~/images/user/christina.jpg"/>
                        <asp:TextBox ID="TextBox1" CssClass="name text-light " runat="server" Text="Christa"></asp:TextBox>
                    </section>
                    <section class="message">
                        <ul class ="from text-light ">Hello</ul>
                        <ul class ="to text-light">Hii</ul>
                          <ul class ="from text-light">welcome to the chat app</ul>
                          <ul class ="from text-light ">we can do more</ul>
                          <ul class ="from text-light ">ok nice</ul>
                         <ul class ="to text-light">thanks for advice</ul>
                         <ul class ="to text-light">ok bye</ul>
                         <ul class ="from text-light ">ok nice</ul>
                         <ul class ="to text-light">thanks for advice</ul>
                         <ul class ="to text-light">ok bye</ul>
                    </section>
                    <section class="msg-writter">
                        <input type ="text" />
                        <button>Send</button>
                    </section>
                </section>
           
       -->
                    <asp:Panel ID="writter" runat="server"  class="msg-writter">
                        <asp:Label ID="touserid" runat="server" Text="wfw"></asp:Label>
                         <asp:TextBox ID="Message" runat="server"></asp:TextBox>
                        <asp:Button ID="Button6" runat="server" Text="Send" CssClass="send" />

                    </asp:Panel>
        </asp:Panel>
             </section>
    </form>
    <script>
        
    </script>
</body>
</html>
