<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Dashboard_Page.aspx.vb" Inherits="WebApplication4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js" integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
        
    <title></title>
    <style>
       
        .search{

            width:300px;
        }
        body{
            background-color:#261C2C;
        }
        nav{
            background-color :#B42B51;
            float:right;
            width:100%;
        }
#navbarSupportedContent{
    position: absolute;
    transform: translateX(280%);
}
#left-side{
    top:120px;
    left:10px;
    position: fixed;
    height: 600px;
    width: 200px;
    background-color: #3E2C41;
    border-radius: 30px;
    box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
    display: block;
}
.btn-as{
    position: relative;
    top:10px;
    width: 98%;
    height: 60px;
    padding: 3px;
    margin:2px;
    background-color: #2E2F49;
    border-radius:10px;
    color:white;
    border: 1px solid #5C527F;
}
.btn-as:hover{
    background-color: #D875A6;
}
#user-details{
 height: 200px;
 margin: auto;
  width: 70%;
  padding: 10px;
    
    
    
}
#Label1{
    color:#ffff;
}
#Label2{
   margin-top: 2px;
    color: green;
     display:inline list-item;
    font-size:15px;
}
#center-side{
     top:120px;
    left:15%;
    position: fixed;
    height: 150px;
    width: 900px;
    background-color: #3E2C41;
    border-radius: 30px;
    box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
    display: block;
}
 #right-side{
     top:120px;
    left: 77%;
    position: fixed;
    height: 400px;
    width: 300px;
    background-color: #3E2C41;
    border-radius: 30px;
    box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
    display: block;
}   
 #main-content{
     box-shadow: rgba(0, 0, 0, 0.05) 0px 0px 0px 1px;
 }
#Postid{
    position: relative;
    top:20px;
}

.card-header{
    top:20px;
    color: #ffff;
    font-size: 30px;
    padding: 30px;
    margin: 10px;
}
#content{
    background-color: #3F3F3F;
    position: relative;
    width: 85%;
    margin-left:50px;
    border:none;
    color:#ffff;
    
} 
.friend{
    position: relative;
    border:1px solid;
    padding: 30px;
    background-color: #E28C97;
    top:30px;
    border-radius: 10px;
    margin:0 10px; 
    height:110px;
    display:block;
}
.friend #Image3{
    position: relative;
    top:-20px;
    left: -10px;
}
.friend #name{
    position: relative;
    color: #ffff;
    top:-35px;
}
.friend #detail{
    position: relative;
    color: wheat;
    top:-16px;
    left: -20px;
}
.friend #add{
    position: relative;
    left: 60px;
    top:-42px;
    width:80%;
}



   


    </style>
</head>
<body >
    <form id="form1" runat="server">
        <div>
            <header>
               <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                   <asp:Image ID="Image1" runat="server" DescriptionUrl="~/images/Globie-logo2.png" Height="90px" ImageUrl="~/images/Globie-logo2.png" Width="90px" />
                  &nbsp;&nbsp; &nbsp;&nbsp;
                        <a class="navbar-brand" href="#" type="text/asp">Globie</a>
                   
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
                   
 

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2 search" type="search" placeholder="Search Friends" aria-label="Search">&nbsp;&nbsp;
      <button class="btn btn-outline-success my-2 my-sm-0 " type="submit">Search</button>
    </form>
      
      
  </div>
</nav>
            </header>
            <article>
          <aside id="left-side">
              <div id="user-details">
                  <asp:Image ID="Image2" runat="server" ImageUrl="~/images/userdefault.png" />
                  <asp:Label ID="usernamelbl" runat="server" Text="UserName" ForeColor="White"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="Status - Active"></asp:Label>
              </div>
              <asp:Button ID="Button1" runat="server" Text="Home" class="btn-as" />
              <asp:Button ID="Button2" runat="server" Text="Post" class="btn-as" />
              <asp:Button ID="Button3" runat="server" Text="Friends" class="btn-as"/>
              <asp:Button ID="Button4" runat="server" Text="Feeds" class="btn-as"/>
              <asp:Button ID="Button5" runat="server" Text="Account" class="btn-as" />
          </aside>
      </article>
            <section id="center-side">
                <div>
                    <article id="Postid">
                        <asp:Label ID="postlabel" Class="card-header" runat="server" Text="Share Your Thoughts"></asp:Label><br />
               
                        <asp:TextBox ID="content" class="card-text form-control-lg " runat="server"></asp:TextBox>
                        <asp:Button ID="post" runat="server" class="btn btn-primary" Text="Post" />

                    </article>
                </div>
            </section>
             <section id="right-side">
                <div>
                    <article class="friend">
                        <asp:Image ID="Image3" runat="server" Height="70px" ImageUrl="~/images/user/christina.jpg" Width="50px" />
                        <asp:Label ID="name" runat="server" Text="Christina"></asp:Label>
                         <asp:Label ID="detail" runat="server" Text="Data Analyist"></asp:Label>
                        <asp:Button ID="add"  class="btn btn-primary" runat="server" Text="AddFriend" />
                       
                    </article>
                </div>
            </section>
            <section id="main-content">
                <div>

                </div>
            </section>
        </div>
    </form>
</body>
</html>
