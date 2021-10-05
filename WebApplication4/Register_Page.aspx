<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Register_Page.aspx.vb" Inherits="WebApplication4.Register_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
.gradient-custom {
  /* fallback for old browsers */
  background: #f093fb;

  /* Chrome 10-25, Safari 5.1-6 */
  background: linear-gradient(to right, #D500F9, #FFD54F);

  /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
  background:linear-gradient(to right, #D500F9, #FFD54F);
}

.card-registration .select-input.form-control[readonly]:not([disabled]) {
  font-size: 1rem;
  line-height: 2.15;
  padding-left: .75em;
  padding-right: .75em;
}
.card-registration .select-arrow {
  top: 13px;
    left:210px;
    position: fixed;
    height: 600px;
    width: 200px;
    border-radius: 15px;
 

}
.card-body{
  color: white;
  border-radius:15px;
  background-color: #485461;
background-image: linear-gradient(315deg, #485461 0%, #28313b 74%);
}
#Side-way{
    background-image:url("/images/beach.jpg");
    background-size: cover;
    background-repeat: no-repeat;
      top:40px;
    left:15%;
    position: fixed;
    height: 694px;
    width: 500px;
    background-color: #ffff;
    border-radius: 15px;
    color:#ffff;
     
}
#Side-way article{
  position:  relative;
  top: 30%;
}
#Side-way h3{
 
  text-align: center;
  
}
#Side-way p{
  padding: 20px;
  width: 80%;
  
}
    
.reg{
    top:-25px;
    left:40%;
    position: fixed;
    height: 600px;
    width: 600px;
    background-color: #ffff;
    border-radius: 15px;
}  
#Side-way #author{
  position:  relative;
  top:-20%;
  left: 40%;
}

.CenterDiv{
  position:  absolute;
  height: 250px;
  width: 250px;
  background-color:  #ffff;
  border-radius: 10px;
  z-index: 1;
  transform: translate(220%,100%);
}
.CenterDiv #Label1 {
  position: relative;
  font-size: 20px;
  text-align: center;
  display: block;
  top:50px;
}
.CenterDiv #Label1{
  font: 30px solid;
}
.CenterDiv #Button2{
  position: relative;
  width: 98%;
  top:150px;
  display: block;
  background-color: #0B5ED7;
  border:none;
  border-radius: 10px;
}
.container{
    position:absolute;
    left:100px;
    top:-22px;
    

}
#Back{
    position:relative;
    left:50%;
}
    
    </style>
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js" integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>

    <title>Globie - Register</title>
</head>
     <body>
    <form id="form1" runat="server" >
     <div>
         <asp:Panel ID="Panel1" runat="server" class="CenterDiv" Visible="False">
             <article>
                 <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                 <asp:Button ID="Button2" runat="server" Text="OK" OnClick="resultClose" CausesValidation="false"  UseSubmitBehavior="False" />
             </article>
         </asp:Panel>
         

         <section class="vh-100 gradient-custom">
             <section id="Side-way">
             <article >
                 <h3>Connect To Globie</h3>
                 <p>
                       It Is A Place Were You Can Explore The World And Be A Part Of Amazing Techonlogy Which Connects People .
                        <br/>Globie Provides An High Quality Way To Share Your Thoughts Using Advance Techonlogy And Machine Learning.
                 </p>
                 <p id="author">
                     -Haseef Azhaan    &#169;
                 </p>
               
             </article>
         </section>
  <div class="container py-5 h-100 ">
    <div class="row justify-content-center align-items-center h-100">
      <div class="col-12 col-lg-9 col-xl-7">
        <div class="card shadow-2-strong card-registration reg" style="border-radius: 15px;">
          <div class="card-body p-4 p-md-5">
            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Registration Form - Globie</h3>
            <form>

              <div class="row">
                <div class="col-md-6 mb-4">

                  <div class="form-outline">
                    <input type="text" id="fullName" name="fullName" class="form-control form-control-lg" required="required" />
                    <label class="form-label" for="firstName">Full Name</label>
                  </div>

                </div>
                  <div class="col-md-6 mb-4 pb-2">

                  <div class="form-outline">
                    <input type="email" id="emailAddress" name="emailAddress" class="form-control form-control-lg" required="required" />
                    <label class="form-label" for="emailAddress">Email</label>
                  </div>

                </div>
                
              </div>

              <div class="row">
                <div class="col-md-6 mb-4 d-flex align-items-center">

                  <div class="form-outline datepicker w-100">
                    <input
                      type="text"
                      class="form-control form-control-lg"
                      id="birthdayDate" name="birthdayDate"
                        required="required"
                    />
                    <label for="birthdayDate" class="form-label">Age</label>
                  </div>

                </div>
                <div class="col-md-6 mb-4">

                  <h6 class="mb-2 pb-1">Gender: </h6>

                  <div class="form-check form-check-inline">
                    <input
                      class="form-check-input"
                      type="radio"
                      name="inlineRadioOptions"
                      id="femaleGender"
                      value="F"
                      checked=""
                    />
                    <label class="form-check-label" for="femaleGender">Female</label>
                  </div>

                  <div class="form-check form-check-inline">
                    <input
                      class="form-check-input"
                      type="radio"
                      name="inlineRadioOptions"
                      id="maleGender"
                      value="M"
                    />
                    <label class="form-check-label" for="maleGender">Male</label>
                  </div>

                  <div class="form-check form-check-inline">
                    <input
                      class="form-check-input"
                      type="radio"
                      name="inlineRadioOptions"
                      id="otherGender"
                      value="O"
                    />
                    <label class="form-check-label" for="otherGender">Other</label>
                  </div>

                </div>
              </div>

              <div class="row">
                <div class="col-md-6 mb-4">

                  <div class="form-outline">
                    <input type="password" id="passwd" name="passwd" class="form-control form-control-lg" required="required" />
                    <label class="form-label" for="lastName">Password</label>
                  </div>

                </div>
                <div class="col-md-6 mb-4 pb-2">

                  <div class="form-outline">
                    <input type="tel" id="phoneNumber" name="phoneNumber"  class="form-control form-control-lg" required="required" />
                    <label class="form-label" for="phoneNumber">Phone Number</label>
                  </div>

                </div>
              </div>

              <div class="row">
                <div class="col-12">
                    <div class="col-md-6 mb-4">

                  <div class="form-outline">
                    <input type="text" id="inst_name" name="inst_name" class="form-control form-control-lg" required="required" />
                    <label class="form-label" for="place">WorkPlace/Institution Name:</label>
                  </div>

                </div>
                  

                </div>
              </div>

              <div class="mt-4 pt-2">
                  <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary btn-lg"   type="submit" OnClick="getVal" />
                  <a href="default.aspx">
                  <asp:Button ID="Back" runat="server" Text="Back" class="btn btn-dark btn-lg" UseSubmitBehavior="false"/>
 </a>
              </div>

            </form>
          </div>
 
        </div>
      </div>
    </div>
  </div>
</section>

     </div>
    </form>
</body>
</html>
