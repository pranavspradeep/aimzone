<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>
<html>
  <head>
     

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AiMZone</title>
      <meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
      <link rel="stylesheet" href="css/advslidespranav.css" />
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


<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.mySlides {display:none;}
</style>
  </head>
  <body>
      <form id="aspform1" runat="server">
         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
              <ContentTemplate>
    <div id="all">
      <!-- Top bar-->
      <div class="top-bar">
        <div class="container">
          <div class="row d-flex align-items-center">
            <div class="col-md-6 d-md-block d-none">
            <!--  <p>Contact us on +491 0000000000 or mail@aimzone.in.</p>--->
            </div>
            <div class="col-md-6">
              <div class="d-flex justify-content-md-end justify-content-between">
                <ul class="list-inline contact-info d-block d-md-none">
                  <li class="list-inline-item"><a href="#"><i class="fa fa-phone"></i></a></li>
                  <li class="list-inline-item"><a href="#"><i class="fa fa-envelope"></i></a></li>
                </ul>
                  



                <div class="login"><a href="#" data-toggle="modal" data-target="#login-modal"  class="login-btn"><i class="fa fa-sign-in"></i><span class="d-none d-md-inline-block">Sign In</span></a><a href="customer-register.aspx" class="signup-btn"><i class="fa fa-user"></i><span class="d-none d-md-inline-block">Sign Up</span></a></div>
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
              <div >
                <div class="form-group">
                  
                    
              <asp:TextBox ID="userid_textlogin" type="text" placeholder="User id" TextMode="SingleLine" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                  
                       <asp:TextBox ID="passwor_textlogin" type="text" placeholder="password" TextMode="Password" class="form-control" runat="server"></asp:TextBox>
                </div>
                <p class="text-center">
                  <!--<button ><i class="fa fa-sign-in"></i> </button>-->
                    <asp:Button class="btn btn-template-outlined" ID="Login_btn" OnClick="Login_btn_Click" runat="server" Text="Log in" />
                </p>
              </div>
                
              <p class="text-center text-muted">Not registered yet?</p>
              <p class="text-center text-muted"><a href="customer-register.aspx"><strong>Register now</strong></a>! It is easy and done in 1 minute and gives you access to special discounts and much more!</p>
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
                <li class="nav-item active"><a href="index.html" >Home </a></li>
                <li class="nav-item menu-large"><a href="become-a-member.html"  >Become a member</a></li>
                <li class="nav-item menu-large"><a href="get-latest-coupons.html"  >Get latest Coupons</a></li>
                <li class="nav-item menu-large"><a href="online-courses.html"  >Online Courses</a></li>
                <li class="nav-item menu-large"><a href="jobs.html"  >Jobs</a></li>
                <li class="nav-item menu-large"><a href="online-shopping.html"  >Online Shopping</a></li>
               <!-- <li class="nav-item "><a href="contact.html" >Contact</a></li>--->
              </ul>
            </div>
            <div id="search" class="collapse clearfix">
              <div role="search" class="navbar-form">
                <div class="input-group">
                  <input type="text" placeholder="Search" class="form-control"><span class="input-group-btn">
                    <button type="submit" class="btn btn-template-main"><i class="fa fa-search"></i></button></span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </header>
      <!-- Navbar End-->
      <section class="border-top p-4">
         
       
                
               
                    <!--  <asp:AdRotator   ID="AdRotator1" runat="server" AdvertisementFile="Text.xml" height="100" Width="100%" />--->
         
          
          
          <div class="slideshow-container">

  <!-- Full-width images with number and caption text -->
   <asp:Repeater ID="repeatercard" runat="server">
                           <ItemTemplate>
                                 <div class="mySlides fade">
    <img src="<%# Eval("Advimgloc") %>"  height="200px" width="100%"  >

 
  </div>
                              </ItemTemplate>
                            
                       </asp:Repeater> 

 

  

  <!-- Next and previous buttons -->
  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>
<br>

<!-- The dots/circles -->
<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
</div>
          
          
          
          
          
          
          
          
          
       
          
          
          
          
          
          <%-- <table class="table">
  <thead>
    <tr><td >
        
      </td></tr>
  </thead>
                 </table>--%>





                


  
         
      <div class="container ">
           <div runat="server" id="failedlogin_div" class="alert alert-success">
  <strong>Error!</strong> Login Failed
</div><div runat="server" id="emptyfielderrordiv" class="alert alert-success">
  <strong>Error!</strong>Enter valid username and password
</div>
      <div class="row col-10 m-auto">
      <div class="col-md-6 col-lg-6 ">
           
                      <div class="form-group">
                        <label for="state" class="text-bold float-left w-auto col-md-6 col-lg-4 mt-2">STATE</label>
                          <asp:DropDownList ID="state_drp" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="state_drp_SelectedIndexChanged" runat="server"></asp:DropDownList>
                      </div>
                    </div>
                    <div class="col-md-6 col-lg-6">
                      <div class="form-group ">
                        <label for="country" class="text-bold float-left w-auto col-md-6 col-lg-4 mt-2">LOCATION</label>
                         <asp:DropDownList ID="location_drp" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="location_drp_SelectedIndexChanged" runat="server"></asp:DropDownList>
                      </div>
                    </div>
         
       </div>
       </div>
          
       </section>
                    
                    
      <section style="background: #9a9a9a url(img/bg.jpg) center center no-repeat; background-size: cover;" class="relative-positioned ">
        <!-- Carousel Start-->
        	<div class="row p-3 border">
            <div class="container">
            	<div class="col-10 float-left mt-3">
            	<h2 class="color-white mb-0">NEW DEALS EVERYDAY</h2>
                <p class="color-white">Shop for the hottest deals and great savings everyday</p>
                </div>
                
<div class="col-2 float-left mt-lg-4"><span class="text-bold"><a href="customer-register.aspx" class="btn btn-danger color-white">Join Now</a></span></div>
            </div>
            </div>
        <!-- Carousel End-->
      </section>
      <div id="heading-breadcrumbs">
         
        <div class="container">
          <div class="row d-flex align-items-center flex-wrap">
            		<div class="col-lg-7">
           			<div >
                    <div class="row">
                    
                    <div class="col-md-6 col-lg-12">
                      <div class="form-group">
                        <label for="city" class="text-bold color-white float-left w-auto col-md-12 col-lg-12 mt-2 p-0">I NEED</label>
                          <asp:DropDownList CssClass="form-control" ID="i_need_drp" AutoPostBack="true" OnSelectedIndexChanged="i_need_drp_SelectedIndexChanged" runat="server"></asp:DropDownList>
                      </div>
                    </div>
                    <div class="col-md-6 col-lg-12">
                      <div class="form-group">
                        <label for="city" class="text-bold color-white float-left w-auto col-md-12 col-lg-12 mt-2 p-0">SUB CATEGORY</label>
                    <asp:DropDownList CssClass="form-control" ID="subcategory_drop" runat="server"></asp:DropDownList>
                      </div>
                    </div>
                      
                         <div class="col-md-6 col-lg-12">
                      <div class="form-group">
                        <label for="city" class="text-bold color-white float-left w-auto col-md-12 col-lg-12 mt-2 p-0">PHONE NUMBER</label>
                          <asp:TextBox ID="PhoneNumber_txtbox" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                      </div>
                    </div>
                        <div class="col-md-6 col-lg-12">
                      <div class="form-group">
                        <label for="city" class="text-bold color-white float-left w-auto col-md-12 col-lg-12 mt-2 p-0">EMAIL</label>
                          <asp:TextBox ID="email_txtbox" TextMode="Email" CssClass="form-control" runat="server"></asp:TextBox>
                      </div>
                    </div>

                        <div class="col-md-6 col-lg-12">
                      <div class="form-group">
                        <label for="city" class="text-bold color-white float-left w-auto col-md-12 col-lg-12 mt-2 p-0">CONTACT PERSON</label>
                          <asp:TextBox ID="contact_name_txtbox" TextMode="SingleLine" CssClass="form-control" runat="server"></asp:TextBox>
                      </div>
                    </div>





                    
                    <div class="col-md-12 col-lg-12 ">
                      <div class="form-group">
                        <label for="firstname" class="text-bold color-white float-left w-auto col-md-12 col-lg-12 mt-2 p-0">MORE DETAILS</label>
                       
                          <asp:TextBox ID="details_txtbox" TextMode="MultiLine" class="form-control float-left col-md-12 col-lg-12 rounded" runat="server"></asp:TextBox>
                      </div>
                    </div>
                       
                    <div class="col-md-2 mt-3 text-center">
                 
                        <asp:Button ID="getbestdeal_btn" class="btn btn-dark p-3 mt-1 rounded" runat="server" OnClick="getbestdeal_btn_Click" Text="GET BEST DEAL" />
                    </div>
                    
                    </div>
                            <div id="sucessonasp" runat="server" class="alert alert-success">
  <strong>Success!</strong> Enquiry placed 
                <asp:Button ID="GETANOTHER" class="btn btn-dark p-3 mt-1 rounded" runat="server" OnClick="Reload_Page_Click" Text="GET ANOTHER DEAL" />
</div>
          <div id="errormsg" runat="server" class="alert alert-success">
  <strong>Error!</strong> Enquiry not placed contact us
</div>
           <div runat="server" id="validationmsg" class="alert alert-success">
  <strong>Error!</strong>Check Your Enquiry Details 
</div>
           			</div>
                    </div>
              
                    <div class="col-lg-5"><img src="img/side-img.png" alt="" class="img-fluid"/> </div>
          </div>
        </div>
      </div>
      <div id="content">
        <div class="container">
          <div class="row bar">
            <div class="col-lg-12">
             
            </div>
            <div id="basket" class="col-lg-9">
              
              <div class="row">
                 

              <div class="embed-responsive embed-responsive-16by9 m-5">
  <iframe width="100%" height="315" src="AdvImage/videoplayback.mp4" frameborder="0" allow="autoplay"   encrypted-media" allowfullscreen></iframe>
</div>
                   <div class="embed-responsive embed-responsive-16by9 m-5">
  <iframe width="100%" height="315" src="AdvImage/ezgif.com-video-cutter.mp4" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
</div>
                <div class="col-lg-3 col-md-6">
                <div class="box text-uppercase mt-0 mb-2">
                    <h3>Featured Products</h3>
                  </div>
                </div>
                <div class="col-lg-3 col-md-6">
                  <div class="product">
                    <div class="image"><a href="#"><img src="img/product.jpg" alt="" class="img-fluid image1"></a></div>
                    <div class="text">
                      <h3 class="h5"><a href="shop-detail.html">Category</a></h3>
                    </div>
                  </div>
                </div>
                <div class="col-lg-3 col-md-6">
                  <div class="product">
                    <div class="image"><a href="#"><img src="img/product.jpg" alt="" class="img-fluid image1"></a></div>
                    <div class="text">
                      <h3 class="h5"><a href="shop-detail.html">Category</a></h3>
                    </div>
                  </div>
                </div>
                <div class="col-lg-3 col-md-6">
                  <div class="product">
                    <div class="image"><a href="shop-detail.html"><img src="img/product.jpg" alt="" class="img-fluid image1"></a></div>
                    <div class="text">
                      <h3 class="h5"><a href="shop-detail.html">Category</a></h3>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-3">
              <div id="order-summary" class="box mt-0 mb-4 p-0">
                <div class="box-header mt-0">
                  <h3>Featured Ads</h3>
                </div>

                  <asp:Repeater ID="repeaterfeatuedads" runat="server">
                      <ItemTemplate>
                                                 <div class="table-responsive mt-2"><img src="<%# Eval("Advimgloc") %>" alt="" class="img-fluid"/> </div>
                      </ItemTemplate>
                  </asp:Repeater>
                  
                 <!-- <div class="table-responsive mt-2"><img  src="AdvImage/minagold.jpg" alt="" class="img-fluid"/> </div>
                  <div class="table-responsive mt-2"><img src="AdvImage/Fashion 12x6x1.jpg" alt="" class="img-fluid"/> </div>
                  <div class="table-responsive mt-2"><img src="AdvImage/saveco.png" alt="" class="img-fluid"/> </div>
                <div class="table-responsive mt-2"><img src="img/JKADV1FEATURED.jpg" alt="" class="img-fluid"/> </div>-->
                   
                
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- GET IT-->
      <div class="get-it">
        <div class="container">
         <div class="row">
            <div class="col-lg-8 text-center p-3">
              <h3>Join now and begin enjoying the benefits </h3>
            </div>
            <div class="col-lg-4 text-center p-3">   <a href="customer-register.aspx" class="btn btn-template-outlined-white">Join Now</a></div>
          </div>
        </div>
      </div>
      <!-- FOOTER -->
  <!--  <footer class="main-footer" style="background-color:black">--->
        <!-- <div class="container">
        <!-- <div class="row">
            <div class="col-lg-4">
              <h4 class="h6">About Us</h4>
              <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
              <hr>
              <h4 class="h6">Join Our Monthly Newsletter</h4>
              <div>
                <div class="input-group">
                  <input type="text" class="form-control">
                  <div class="input-group-append">
                    <button type="button" class="btn btn-secondary"><i class="fa fa-send"></i></button>
                  </div>
                </div>
              </div>
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
        <div class="copyrights" style="background-color:#333" >
          <div class="container">
            <div class="row">
              <div class="col-lg-4 text-center-md" style="margin-top:15px" >
                <p style="color:white">&copy; 2018. AiMZone | All right reserved</p>
              </div>
              <div class="col-lg-8 text-right text-center-md" style="margin-top:15px">
                <p style="color:white">design by <a href="http://www.aimsoftsolutions.com/">AiMSOFT Solutions</a></p>
              </div>
            </div>
          </div>
        </div>
   <!-- </footer>--->
    </div>
           </ContentTemplate>
              </asp:UpdatePanel>
          </form>
    <!-- Javascript files-->
      <script src="js/cardslider.js"></script>
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
     <script src="js/advslidespranav.js"></script>
  </body>
</html>