<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="WebApplication4._default" EnableEventValidation="True" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js" integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
        
    <title>Globie - Connect To The World</title>
    <style type="text/css">
        body {
    color: #000;
    overflow-x: hidden;
    height: 100%;
    background-image: linear-gradient(to right, #D500F9, #FFD54F);
    background-repeat: no-repeat
}

input,
textarea {
    background-color: #F3E5F5;
    border-radius: 50px !important;
    padding: 12px 15px 12px 15px !important;
    width: 100%;
    box-sizing: border-box;
    border: none !important;
    border: 1px solid #F3E5F5 !important;
    font-size: 16px !important;
    color: #000 !important;
    font-weight: 400
}

input:focus,
textarea:focus {
    -moz-box-shadow: none !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
    border: 1px solid #D500F9 !important;
    outline-width: 0;
    font-weight: 400
}

button:focus {
    -moz-box-shadow: none !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
    outline-width: 0
}

.card {
    border-radius: 0;
    border: none;
    height:750px;
}

.card1 {
    width: 50%;
    padding: 40px 30px 10px 30px
}

.card2 {
    width: 50%;
    background-image: linear-gradient(to right, #FFD54F, #D500F9)
}

#logo {
    width: 140px;
    height: 120px
}

.heading {
    margin-bottom: 60px !important
}

::placeholder {
    color: #000 !important;
    opacity: 1
}

:-ms-input-placeholder {
    color: #000 !important
}

 ::-ms-input-placeholder {
    color: #000 !important
}

.form-control-label {
    font-size: 12px;
    margin-left: 15px
}

.msg-info {
    padding-left: 15px;
    margin-bottom: 30px
}

.btn-color {
    border-radius: 50px;
    color: #fff;
    background-image: linear-gradient(to right, #FFD54F, #D500F9);
    padding: 15px;
    cursor: pointer;
    border: none !important;
    margin-top: 40px
}

.btn-color:hover {
    color: #fff;
    background-image: linear-gradient(to right, #D500F9, #FFD54F)
}

.btn-white {
    border-radius: 50px;
    color: #D500F9;
    background-color: #fff;
    padding: 8px 40px;
    cursor: pointer;
    width: 200px;
    border: 2px solid #D500F9 !important
}

.btn-white:hover {
    color: #fff;
    background-image: linear-gradient(to right, #FFD54F, #D500F9)
}

a {
    color: #000
}

a:hover {
    color: #000
}

.bottom {
    width: 100%;
    margin-top:-25px;
}

.sm-text {
    font-size: 15px
}

@media screen and (max-width: 992px) {
    .card1 {
        width: 100%;
        padding: 40px 30px 10px 30px
    }

    .card2 {
        width: 100%
    }

    .right {
        margin-top: 100px !important;
        margin-bottom: 100px !important
    }
}

@media screen and (max-width: 768px) {
    .container {
        padding: 10px !important
    }

    .card2 {
        padding: 50px
    }

    .right {
        margin-top: 50px !important;
        margin-bottom: 50px !important
    }
    .top-containerr{
        height:500px;
        width:800px;
    }
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="container px-4 py-5 mx-auto">
    <div class="card card0">
        <div class="d-flex flex-lg-row flex-column-reverse">
            <div class="card card1">
                <div class="row justify-content-center my-auto" formenctype="multipart/form-data">
                    <div class="col-md-8 col-10 my-5">
                        <div class="row justify-content-center px-3 mb-3"> <img id="logo" src="/images/Globie-logo2.png"> </div>
                        <h3 class="mb-5 text-center heading">Globie</h3>
                        <h6 class="msg-info">Please login to your account</h6>
                        <div class="form-group">
                            <label class="form-control-label text-muted">Username</label> 
                            <input type="text" id="email" name="email" placeholder="Enter email id" class="form-control">

                        </div>
                        <div class="form-group">
                            <label class="form-control-label text-muted">Password</label>
                            <input type="password" id="psw" name="psw" placeholder="Password" class="form-control"> 
                            <asp:Label ID="Invalid_Label" runat="server" Text="Label" CssClass="alert-danger" Visible="False">Invalid Username / Pasword </asp:Label>
                        </div>
                        <div class="row justify-content-center my-3 px-3">
                            
                          <asp:Button ID="Login_Btn" runat="server" class="btn-block btn-color" onclick="Logme" Text="Login To Globie" UseSubmitBehavior="False" /> 
                          </div>
                        <div class="row justify-content-center my-2"> 
                            <small class="text-muted">Forgot Password?</small>

                        </div>
                    </div>
                </div>
                <div class="bottom text-center mb-5">
                    <p  class="sm-text mx-auto mb-3">Don't have an account?
                        <asp:Button ID="Register_Btn" runat="server" class="btn btn-white ml-2" onclick="RegMe" Text="Create New" UseSubmitBehavior="False" />

                    </p>
                </div>
            </div>
            <div class="card card2">
               
                <div class="my-auto mx-md-5 px-md-5 right">
                     <img  src="/images/Globie-logo.gif"/> 
                    <h3 class="text-white">Globie Is Not Just An App</h3>
                    <small class="text-white">It Is A Place Were You Can Explore The World And Be A Part Of Amazing Techonlogy Which Connects People .
                        <br/>Globie Provides An High Quality Way To Share Your Thoughts Using Advance Techonlogy And Machine Learning.

                    </small>
                </div>
            </div>
        </div>
    </div>
</div>
    </form>
    <p>

    </p>
</body>
</html>
