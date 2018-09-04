<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CompanyHome.aspx.cs" Inherits="CompanyHome" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AiMZone</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- Google fonts - Roboto-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,700">
    <!-- Bootstrap Select-->
    <link rel="stylesheet" href="vendor/bootstrap-select/css/bootstrap-select.min.css">
    <!-- owl carousel-->
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.carousel.css">
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.theme.default.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon and apple touch icons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="img/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="57x57" href="img/apple-touch-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="img/apple-touch-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="img/apple-touch-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="img/apple-touch-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="img/apple-touch-icon-152x152.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <body>
    <div id="all">
      <!-- Top bar-->
      <div class="top-bar">
        <div class="container">
          <div class="row d-flex align-items-center">
            <div class="col-md-6 d-md-block d-none">
              <!--<p>Contact us on +491 0000000000 or mail@aimzone.in.</p>--->
            </div>
            <div class="col-md-6">
              <div class="d-flex justify-content-md-end justify-content-between">
                <ul class="list-inline contact-info d-block d-md-none">
                  <li class="list-inline-item"><a href="#"><i class="fa fa-phone"></i></a></li>
                  <li class="list-inline-item"><a href="#"><i class="fa fa-envelope"></i></a></li>
                </ul>
               <!-- <div class="login"><a href="#" data-toggle="modal" data-target="#login-modal" class="login-btn"><i class="fa fa-sign-in"></i><span class="d-none d-md-inline-block">Sign In</span></a><a href="customer-register.html" class="signup-btn"><i class="fa fa-user"></i><span class="d-none d-md-inline-block">Sign Up</span></a></div>--->
                <ul class="social-custom list-inline">
                  <li class="list-inline-item"><a href="#"><i class="fa fa-facebook"></i></a></li>
                  <li class="list-inline-item"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                  <li class="list-inline-item"><a href="#"><i class="fa fa-twitter"></i></a></li>
                  <li class="list-inline-item"><a href="#"><i class="fa fa-envelope"></i></a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Top bar end-->
      <!-- Login Modal-->
      <div id="login-modal" tabindex="-1" role="dialog" aria-labelledby="login-modalLabel" aria-hidden="true" class="modal fade">
        <div role="document" class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 id="login-modalLabel" class="modal-title">Customer Login</h4>
              <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
            </div>
            <div class="modal-body">
              <form action="customer-orders.html" method="get">
                <div class="form-group">
                  <input id="email_modal" type="text" placeholder="email" class="form-control">
                </div>
                <div class="form-group">
                  <input id="password_modal" type="password" placeholder="password" class="form-control">
                </div>
                <p class="text-center">
                  <button class="btn btn-template-outlined"><i class="fa fa-sign-in"></i> Log in</button>
                </p>
              </form>
              <p class="text-center text-muted">Not registered yet?</p>
              <p class="text-center text-muted"><a href="customer-register.html"><strong>Register now</strong></a>! It is easy and done in 1 minute and gives you access to special discounts and much more!</p>
            </div>
          </div>
        </div>
      </div>
      <!-- Login modal end-->
      <!-- Navbar Start-->
      <header class="nav-holder make-sticky">
        <div id="navbar" role="navigation" class="navbar navbar-expand-lg">
          <div class="container"><a href="index.aspx" class="navbar-brand home"><img src="img/logo.png" alt="Universal logo" class="d-none d-md-inline-block"><img src="img/logo-small.png" alt="Universal logo" class="d-inline-block d-md-none"><span class="sr-only">Universal - go to homepage</span></a>
            <button type="button" data-toggle="collapse" data-target="#navigation" class="navbar-toggler btn-template-outlined"><span class="sr-only">Toggle navigation</span><i class="fa fa-align-justify"></i></button>
            <div id="navigation" class="navbar-collapse collapse">
              <ul class="nav navbar-nav ml-auto">
                <li class="nav-item "><a href="index.aspx" >Home </a></li>
                <li class="nav-item "><a href="become-a-member.html"  >Become a member</a></li>
                <li class="nav-item "><a href="get-latest-coupons.html"  >Get latest Coupons</a></li>
                <li class="nav-item "><a href="online-courses.html"  >Online Courses</a></li>
                <li class="nav-item "><a href="jobs.html"  >Jobs</a></li>
                <li class="nav-item "><a href="online-shopping.html"  >Online Shopping</a></li>
               <!-- <li class="nav-item "><a href="contact.html" >Contact</a></li>-->
                   <li class="nav-item "><a href="customer-register.aspx" >LogOut</a></li>
              </ul>
            </div>
            <div id="search" class="collapse clearfix">
              <form role="search" class="navbar-form">
                <div class="input-group">
                  <input type="text" placeholder="Search" class="form-control"><span class="input-group-btn">
                    <button type="submit" class="btn btn-template-main"><i class="fa fa-search"></i></button></span>
                </div>
              </form>
            </div>
          </div>
        </div>
      </header>
      <!-- Navbar End-->
      
      <div id="heading-breadcrumbs">
        <div class="container">
          <div class="row d-flex align-items-center flex-wrap">
            <div class="col-md-7">
              <h1 class="h2 color-white">Mange your orders</h1><h3>
                  <asp:Label CssClass="h3 color-white" ID="firmname_label" runat="server" Text=""></asp:Label></h3>
            </div>
            <div class="col-md-5 color-white">
              <ul class="breadcrumb d-flex justify-content-end color-white">
                <li class="breadcrumb-item"><a href=""></a></li>
                <li class="breadcrumb-item active"></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div id="content">
      <div class="row p-5">
        <div class="container-fluid">
          <h2>Order list</h2>
            </div>
       
            <div class="row ">
          <asp:ListView ID="CustomerEnquiryDatalist" runat="server" >
    <ItemTemplate>
        <div class="card">
   
    <div class="card-body bg-danger" style="background-image: url(../img/texture-bw.png)"">
      <h1 class="badge badge-success">Enquiry:<strong> <%# Eval("ReqID") %></strong></h1>
      <p class="card-text "><span class="badge badge-pill badge-secondary">STATE::</span><span class="text-white"><strong> <%# Eval("State") %></strong></span></p>
      <p class="card-text "><span class="badge badge-pill badge-secondary">LOCATION::</span><span class="text-white"><strong><%# Eval("Location") %></strong></span></p>
      <p class="card-text"><span class="badge badge-pill badge-secondary">CATEGORY::</span><span class="text-white"><strong><%# Eval("KeyWord") %></strong></span></p>
        <p class="card-text"><span class="badge badge-pill badge-secondary">CONTACT NAME::</span><span class="text-white"><strong><%# Eval("ContactName") %></strong></span></p>
         <p class="card-text"><span class="badge badge-pill badge-secondary">CONTACT NUMBER::</span><span class="text-white"><strong><%# Eval("ContactNumber") %></strong></span></p>
         <p class="card-text"><span class="badge badge-pill badge-secondary">EMAIL::</span><span class="text-white"><strong><%# Eval("Email") %></span></strong></p>
        <p class="card-text"><span class="badge badge-pill badge-secondary">DETAILS::</span><span class="text-white"><strong><%# Eval("Details") %></span></strong></p>
    </div>
  </div>
        <!--<div class="alert alert-success bg-danger text-white border border-dark" role="alert">
  <h3><span class="badge badge-pill badge-success">Enquiry</span></h3>
  <p><span class="badge badge-pill badge-secondary">STATE::</span> <%# Eval("State") %></p>
  <p><span class="badge badge-pill badge-secondary">LOCATION::</span><%# Eval("Location") %></p>
            <p><span class="badge badge-pill badge-secondary">CATEGORY::</span><%# Eval("KeyWord") %></p>
            <p><span class="badge badge-pill badge-secondary">CONTACT NAME::</span><%# Eval("ContactName") %></p>
            <p><span class="badge badge-pill badge-secondary">EMAIL::</span><%# Eval("Email") %></p>
            <p><span class="badge badge-pill badge-secondary">DETAILS::</span><%# Eval("Details") %></p>
           
</div>-->
       
      <!-- <div class="card">
  <h3><span class="badge badge-pill badge-success">Enquiry</span></h3>
  <p><span class="badge badge-pill badge-secondary">STATE::</span> <%# Eval("State") %></p>
  <p><span class="badge badge-pill badge-secondary">LOCATION::</span><%# Eval("Location") %></p>
            <p><span class="badge badge-pill badge-secondary">CATEGORY::</span><%# Eval("KeyWord") %></p>
            <p><span class="badge badge-pill badge-secondary">CONTACT NAME::</span><%# Eval("ContactName") %></p>
            <p><span class="badge badge-pill badge-secondary">EMAIL::</span><%# Eval("Email") %></p>
            <p><span class="badge badge-pill badge-secondary">DETAILS::</span><%# Eval("Details") %></p>
  </div>
</div> -->
        
    </ItemTemplate>
</asp:ListView>
   </div>
               </div>
  
                
      
      


            
                    

                   

           


          
          
        </div>
        </div>
      
      <!-- GET IT-->
      
      <!-- FOOTER -->
      <!--  <footer class="main-footer">
        <div class="container">
          <div class="row">
            <div class="col-lg-4">
              <h4 class="h6">About Us</h4>
              <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
              <hr>
              <h4 class="h6">Join Our Monthly Newsletter</h4>
              <form>
                <div class="input-group">
                  <input type="text" class="form-control">
                  <div class="input-group-append">
                    <button type="button" class="btn btn-secondary"><i class="fa fa-send"></i></button>
                  </div>
                </div>
              </form>
              <hr class="d-block d-lg-none">
            </div>
            <div class="col-lg-4">
              <h4 class="h6">Useful links</h4>
              <ul class="list-unstyled footer-blog-list">
                <li class="d-flex align-items-center">
                  <div class="image"><img src="img/useful-links.png" alt="..." class="img-fluid"></div>
                  <div class="text">
                    <h5 class="mb-0"> <a href="post.html">Useful links</a></h5>
                  </div>
                </li>
                <li class="d-flex align-items-center">
                  <div class="image"><img src="img/useful-links.png" alt="..." class="img-fluid"></div>
                  <div class="text">
                    <h5 class="mb-0"> <a href="post.html">Useful links</a></h5>
                  </div>
                </li>
                <li class="d-flex align-items-center">
                  <div class="image"><img src="img/useful-links.png" alt="..." class="img-fluid"></div>
                  <div class="text">
                    <h5 class="mb-0"> <a href="post.html">Useful links</a></h5>
                  </div>
                </li>
              </ul>
              <hr class="d-block d-lg-none">
            </div>
            <div class="col-lg-4">
              <h4 class="h6">Contact</h4>
              <p class="text-uppercase"><strong>xxxxx xxxxx</strong><br>xxxxx xx  xx <br>xxx xxxxx <br>xxx xxxx xx <br>xxx xxxx  <br><strong>xxxxxxxxx</strong></p><a href="contact.html" class="btn btn-template-main">Quick Enquiry</a>
              <hr class="d-block d-lg-none">
            </div>
            
          </div>
        </div>-->
        <div class="copyrights" style="background-color:#333">
          <div class="container">
            <div class="row">
              <div class="col-lg-4 text-center-md" style="margin-top:15px">
                <p style="color:white">&copy; 2018. AiMZone | All right reserved</p>
              </div>
              <div class="col-lg-8 text-right text-center-md"  style="margin-top:15px">
                <p style="color:white">design by <a href="http://www.aimsoftsolutions.com/">AiMSOFT Solutions</a></p>
              </div>
            </div>
          </div>
        </div>
      <!--</footer>--->
   <!-- </div>--->
    <!-- Javascript files-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper.js/umd/popper.min.js"> </script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/waypoints/lib/jquery.waypoints.min.js"> </script>
    <script src="vendor/jquery.counterup/jquery.counterup.min.js"> </script>
    <script src="vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
    <script src="js/jquery.parallax-1.1.3.js"></script>
    <script src="vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
    <script src="vendor/jquery.scrollto/jquery.scrollTo.min.js"></script>
    <script src="js/front.js"></script>
  </body>
</html>