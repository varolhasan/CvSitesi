<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminGiris.aspx.cs" Inherits="Cv.AdminGiris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ADMİN GİRİŞ PANELİ</title>

     <link href="stil.css" rel="stylesheet" />
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous"/>
</head>
<body>
   <!-- Section: Design Block -->
<section class="text-center text-lg-start">
  <style>
    .cascading-right {
      margin-right: -50px;
    }

    @media (max-width: 991.98px) {
      .cascading-right {
        margin-right: 0;
      }
    }
  </style>

  <!-- Jumbotron -->
  <div class="container py-4">
    <div class="row g-0 align-items-center">
      <div class="col-lg-6 mb-5 mb-lg-0">
        <div class="card cascading-right" style="
            background: hsla(0, 0%, 100%, 0.55);
            backdrop-filter: blur(30px);
            ">
          <div class="card-body p-5 shadow-5 text-center">
            <h2 class="fw-bold mb-5">GİRİŞ YAPIN</h2>
            <form runat="server">
              <!-- 2 column grid layout with text inputs for the first and last names -->
              

              <!-- Email input -->
              <div class="form-outline mb-4">
                <!--<input type="email" id="form3Example3" class="form-control" />-->
                  <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                <label class="form-label" for="form3Example3">Kullanıcı Adı</label>
              </div>

              <!-- Password input -->
              <div class="form-outline mb-4">
                <!--<input type="password" id="form3Example4" class="form-control" />-->
                  <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                <label class="form-label" for="form3Example4">Şifre</label>
              </div>

              <!-- Checkbox -->
             

              <!-- Submit button -->
              <!--<button type="submit" class="btn btn-primary btn-block mb-4">GİRİŞ YAP</button>-->
                <asp:Button ID="Button1" runat="server" Text="Giriş Yap" CssClass="btn btn-primary" OnClick="Button1_Click" />
                
              

              <!-- Register buttons -->
              
            </form>
          </div>
        </div>
      </div>

      <div class="col-lg-6 mb-5 mb-lg-0">
        <img src="https://mdbootstrap.com/img/new/ecommerce/vertical/004.jpg" class="w-100 rounded-4 shadow-4"
          alt="" />
      </div>
    </div>
  </div>
  <!-- Jumbotron -->
</section>
<!-- Section: Design Block -->
</body>
</html>
