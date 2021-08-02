<?php
include "db.php";                        
?>

<?php
session_start();

?>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>COVID</title>

		<!-- Google font -->
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

		<!-- Bootstrap -->
		
		<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>

		<!-- Slick -->
		<link type="text/css" rel="stylesheet" href="css/slick.css"/>
		<link type="text/css" rel="stylesheet" href="css/"/>

		<!-- nouislider -->
		<link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>

		<!-- Font Awesome Icon -->
		<link rel="stylesheet" href="css/font-awesome.min.css">

		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
		<link type="text/css" rel="stylesheet" href="css/accountbtn.css"/>
		
		
		
         
		
		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
    <style>
        #navigation {
          background: #FF4E50;  /* fallback for old browsers */
            background: -webkit-linear-gradient(to right, #F9D423, #FF4E50);  /* Chrome 10-25, Safari 5.1-6 */
            background: linear-gradient(to right, #F9D423, #FF4E50); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

          
        }
        #header {
  
            background: #FFFFFF;  /* fallback for old browsers */
            background: -webkit-linear-gradient(to right, #061161, #780206);  /* Chrome 10-25, Safari 5.1-6 */
            background: linear-gradient(to right, #061161, #780206); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

  
        }
        #top-header {
              
  
            background: #FFFFFF;  /* fallback for old browsers */
            background: -webkit-linear-gradient(to right, #190A05, #870000);  /* Chrome 10-25, Safari 5.1-6 */
            background: linear-gradient(to right, #190A05, #870000); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */


        }
		
        #footer {
            background: #7474BF;  /* fallback for old browsers */
            background: -webkit-linear-gradient(to right, #348AC7, #7474BF);  /* Chrome 10-25, Safari 5.1-6 */
            background: linear-gradient(to right, #348AC7, #7474BF); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */


          color: #1E1F29;
        }
        #bottom-footer {
            background: #7474BF;  /* fallback for old browsers */
            background: -webkit-linear-gradient(to right, #348AC7, #7474BF);  /* Chrome 10-25, Safari 5.1-6 */
            background: linear-gradient(to right, #348AC7, #7474BF); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
          

        }
        .footer-links li a {
          color: #1E1F29;
        }
        .mainn-raised {
            
            margin: -7px 0px 0px;
            border-radius: 6px;
            box-shadow: 0 16px 24px 2px rgba(0, 0, 0, 0.14), 0 6px 30px 5px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(0, 0, 0, 0.2);

        }
       
        .glyphicon{
    display: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
    font-size: inherit;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    }
    .glyphicon-chevron-left:before{
        content:"\f053"
    }
    .glyphicon-chevron-right:before{
        content:"\f054"
    }
	 body{
  position:relative;
  padding:0;
  }
  .dark-mode {
  background-color: #121212;
  color: white !important;
  
}
  .jumbotron{
  margin-top:-17px;
max-height:435px;
background-color:#ffffff;
 width:100%;
 padding-bottom:25%;
 
  }
  #topbar{
  height:70px;
  background-color:#FFFFFF;
  width:100%;
  }
  
  #brandName{
  padding:2% 5% 2% 3%; 
  cursor:pointer;
  }
  
  #jxsearchbox-blog{
 width:30%;
  margin-top:2% !important;
  
  }
  .topbar-options{
  float:left;
  }
  .custom-select{
  border-radius:50px;
  border-right:none;
  height:50px ;
  z-index:1;
  font-size:12px;
  padding-left:5%;
 
  }
  .jx_blog_search_query{
   border-radius:50px;
  border-left:none !important;
  height:50px ;
  margin-left:-30px;
  padding-left:30px;
  font-size:12px;
 width:140% !important;
  }
.jx_blog_search_query:focus{
  
 outline: none !important;      /* Remove default outline and use border or box-shadow */
  box-shadow: 0 0 0 0 #CED4DA;
  border-color:#CED4DA;
}
.custom-select:focus{
  outline: none !important;      /* Remove default outline and use border or box-shadow */
  box-shadow: 0 0 0 0 #CED4DA;
  border-color:#CED4DA;
}
textarea:focus, input:focus{
    outline: none;
}
#mag{
float:left;
margin-top:-40px;
margin-left:150px;
}

.fa-search:hover{
color:black;
}
#language-selector{
margin-top:2% !important;
float:right;
margin-right:3% !important;
}
#setting{
float:right;
margin-top:2%;
}
.fa-cog{
color:#19B3BD;
}
.fa-cog:hover{
color:black;
}
#heart{
float:right;
margin-top:2%;
margin-left:3%;
}
.fa-heart-o{
color:#19B3BD;
}
.fa-heart-o:hover{
color:black;
}
#user{
float:right;
margin-top:2%;
margin-left:3%;
}
.fa-user-o{
color:#19B3BD;
}
.fa-user-o:hover{
color:black;
}
.fa{
    font-size: 1.3em !important; /*size whatever you like*/
}
#shoppingKart{
float:right;
margin-top:2%;
margin-left:3%;
margin-right:4%;
}

.fa-shopping-cart:hover{
color:black;
}



#topMenu{
margin-top:-22px;
display: inline-block;
height:50px;
background-color:#ffffff;
width:100%;
float:left !important;
margin-bottom:1%;
}

.menuitems{
margin-top:2%;
float:left !important;
margin-left:3%;

}
.menulinks{
color:black;
font-weight:500;
}
.menulinks:hover{
text-decoration:none;
color:#52C6CE !important;
}

#heading1{

margin-left:-50px !important;
letter-spacing:1px;
font-weight:700;
font-size:300%;
text-align:left !important;
margin-right:40%;
}

#caption1{
margin-right:40%;
margin-left:-50px !important;
font-size:100%;
text-align:left !important;

font-family: 'Ubuntu', sans-serif;
letter-spacing:1px;
}
#shop1{
float:left;
margin-bottom:50px !important;
margin-left:-50px !important;
text-align:left !important;
color:#22B6BF;
font-weight:500;
font-size:100%;
border-radius:50px;
padding:7px;
padding-left:50px;
padding-right:50px;
border:3px solid #4E4D4E;
}
#shop1:hover{
border:3px solid #19B3BD;
}
button:focus { 
	outline: none;
}
.shop1-mob{
color:#22B6BF;
border-radius:50px;
padding:4%;
margin-left:20%;
border:3px solid #e0d9d9;
padding-top:2px;
padding-bottom:2px;
margin-top:5%;
}
.shop1-mob:hover{
border:3px solid #19B3BD;
}
#heading2{
color:#19B3BD;
margin-left:-50px !important;
letter-spacing:1px;
font-weight:700;
font-size:300%;
text-align:left !important;

}

#caption2{
color:#19B3BD;
margin-left:-50px !important;
font-size:100%;
text-align:left !important;

font-family: 'Ubuntu', sans-serif;
letter-spacing:1px;
}
#shop2{
float:left;
margin-left:-50px !important;
margin-bottom:60px !important;
color:#22B6BF;
font-weight:500;
font-size:100%;
border-radius:50px;
padding:7px;
padding-left:50px;
padding-right:50px;
border:1px solid #ffffff;
}
#shop2:hover{
border:1px solid #19B3BD;
}

#heading3{
color:#19B3BD;
letter-spacing:1px;
font-weight:700;
font-size:300%;
}

#caption3{
color:#19B3BD;
font-size:100%;
font-family: 'Ubuntu', sans-serif;
letter-spacing:1px;
}

#shop3{

margin-bottom:100px !important;
color:#22B6BF;
font-weight:500;
font-size:100%;
border-radius:50px;
padding:7px;
padding-left:50px;
padding-right:50px;
border:1px solid #ffffff;
}
#shop3:hover{
border:1px solid #19B3BD;
}
.carousel-indicators li {
  width: 10px;
  height: 10px;
  border-radius: 100%;
  border: 2px solid #19B3BD;
  margin-right:10px !important;
  color:#ffffff;
}

#banners1{

}
.coupon1{
width:100%;
height:100%;
}

.coupon2{
width:100%;
height:100%;
}
.coupon3{
width:100%;
height:100%;
}

.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
 
}

#banner-heading1{

font-size:300%;
font-weight:700;
text-align:center !important;
color:#ffffff;
}
.banner-heading1{
text-align:center !important;
color:#ffffff;
}
.banner-caption{
font-weight:500;
color:#ffffff;
}
.banner-caption-1{
color:#ffffff;

}
.banner-caption:hover{
text-decoration:none;
color:black;
}


#banner-heading2{
display:inline-block !important;
font-size:200%;
font-weight:700;
text-align:center !important;
color:#202020;
}
.banner-heading2{
text-align:center !important;
color:#E72C59;
font-size:200%;
}
.banner-caption2{
font-weight:500;
color:#43BDC5;
text-align:center;
}

.banner-caption2:hover{
text-decoration:none;
color:black;
}

#main-content-head1{
font-weight:700;

margin-top:3%;
}

.carousel-inner .carousel-item.active,
.carousel-inner .carousel-item-next,
.carousel-inner .carousel-item-prev {
  display: flex !important;
}

.carousel-inner .carousel-item-right.active,
.carousel-inner .carousel-item-next {
  transform: translateX(25%);
}

.carousel-inner .carousel-item-left.active, 
.carousel-inner .carousel-item-prev {
  transform: translateX(-25%);
}
  
.carousel-inner .carousel-item-right,
.carousel-inner .carousel-item-left{ 
  transform: translateX(0);
  
}
#medicine1:hover{
content: url('https://ld-prestashop.template-help.com/prestashop_eze_567_tf_v2/img/p/2/5/25-home_default.jpg');
}
#medicine2:hover{
content: url('https://ld-prestashop.template-help.com/prestashop_eze_567_tf_v2/img/p/3/1/31-home_default.jpg');
}

#medicine3:hover{
content: url('https://ld-prestashop.template-help.com/prestashop_eze_567_tf_v2/img/p/3/7/37-home_default.jpg');
}

#medicine4:hover{
content: url('https://ld-prestashop.template-help.com/prestashop_eze_567_tf_v2/img/p/4/4/44-home_default.jpg');
}

#medicine5:hover{
content: url('https://ld-prestashop.template-help.com/prestashop_eze_567_tf_v2/img/p/5/1/51-home_default.jpg');
}

#medicine6:hover{
content: url('https://ld-prestashop.template-help.com/prestashop_eze_567_tf_v2/img/p/5/7/57-home_default.jpg');
}

#medicine7:hover{
content: url('https://ld-prestashop.template-help.com/prestashop_eze_567_tf_v2/img/p/6/3/63-home_default.jpg');
}

#medicine8:hover{
content: url('https://ld-prestashop.template-help.com/prestashop_eze_567_tf_v2/img/p/6/9/69-home_default.jpg');
}
#medicine1{
max-width:100% !important;
}
#medicine2{
max-width:100% !important;
}
#medicine3{
max-width:100% !important;
}
#medicine4{
max-width:100% !important;
}
#medicine5{
max-width:100% !important;
}
#medicine6{
max-width:100% !important;
}
#medicine7{
max-width:100% !important;
}
#medicine8{
max-width:100% !important;
}
#prod-description{
text-decoration: none;

}
#prod-description:hover{
color:#19B3BD;
}
#cost1{
color:#E72C59 !important;
font-size:20px;
font-weight:700;
}
#cost1:hover{
color:#E72C59 !important;
}

#pinkBox{
height:50%;
width:100%;
background-color:#E72C59;
padding-bottom:10px;
}
#banner-heading-4{
color:#ffffff;
font-weight:500;
text-align:center;
padding:2%;

}
#banner-caption-4{
color:#ffffff;
font-weight:400;
text-align:center;
padding:2%;
}
.banner-heading-4:hover{
text-decoration:none;
}
.top-left {
  position: absolute;
  top: 8px;
  left: 16px;
}
.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
#shop4{

color:#22B6BF;
font-weight:500;
font-size:90%;
border-radius:50px;
padding:7px;
margin-top:10px;
border:1px solid #ffffff;
}
#shop4:hover{
border:1px solid #19B3BD;
}
#ffp2{
text-align:center;
color:#19B3BD;
font-weight:700;
font-size:400%;
}
#facemask{
text-align:center;
color:#202020;
font-weight:700;
font-size:300%;
}
#one-mask{
text-align:center;
color:#202020;
font-weight:500;
font-size:14px;
margin-top:5px;
}
#cost-banner{
display:inline-block;
text-align:center;
color:#E72C59;
font-weight:700;
font-size:300%;
}
#respirators{
text-align:left;
color:#202020;
font-weight:500;
font-size:200%;
letter-spacing:1px;
}
#off20{
text-align:left;
color:#202020;
font-weight:700;
font-size:400%;
}
#sale-tag{
height:20px;
width:50px;
background-color:#E72C59;
color:#ffffff;
font-size:12px;
padding-left:1px;
transform-origin: top left;
transform:skew(17deg,0deg);
}
#cost-1{
color:#E72C59 !important;

font-weight:700;
}
#cost1:hover{
color:#E72C59 !important;
}
.maskCover {
   width:99vw;
   height:100%;
   padding:0 !important;
}
.cen{
 position: absolute;
  padding-left:10%;
padding-top:7%;
float:left;
}
#packofmasks{
color:#E74C8C;
font-weight:400;
}
#packofmasks-heading{
color:#242424;
font-weight:700;
font-size:250%;
}
#maskcost{
color:#E72C59;
font-weight:700;
}
#shopmaskButton{
background-color:#19B3BD;
color:#ffffff;
font-weight:500;
font-size:100%;
border-radius:50px;
padding:10px;
padding-left:7%;
padding-right:7%;
margin-top:10px;
border:5px solid #b6ecef;
}
#shopmaskButton:hover{
border:5px solid #19B3BD;
}
.contact-info{
margin-top:7%;
background-color:#19B3BD;
max-height:100%;
}
#mailing-list{
color:#ffffff;
font-weight:650;
padding-left:5%;
padding-top:5%;
margin-bottom:5%;
}
.mailing-list{
color:#ffffff;
padding-left:10%;
}
.input-group-mail{
border-radius:50px 0px 0px 50px !important;
width:50%;
height:50px;
margin-left:3%;
margin-left:6%;
}
.btn-white{
background-color:#FFFFFF;
margin-left:-9px;
height:50px;
border-radius:0px 50px 50px 0px!important;
color:#19B3BD;
text-transform:uppercase;
font-weight:500;
}
.input-group-mail:focus{
outline: none !important;      /* Remove default outline and use border or box-shadow */
  box-shadow: 0 0 0 0 #CED4DA;
  border-color:#ffffff;
  }
  .btn-white:focus{
outline: none !important;      /* Remove default outline and use border or box-shadow */
  box-shadow: 0 0 0 0 #CED4DA;
  border-color:#ffffff;
  }
  .btn-white:hover{
  color:#19B3BD;
  background-color:#E6E6E6;
  }
  .icon{
  margin-left:5%;
  font-size: 1.3em;
  width: 2em;
  text-align: center;
  line-height: 1.8em;
 border: 2px solid #bee8ea;
  color: #fff;
  border-radius: 1em; 
  margin-bottom:5%;
  }
  .icon:hover{
  border:2px solid #fff;
  }
  .icon1{
  color:#fff;
  border: 4px solid #bee8ea;
  border-radius:50%;
  padding:15% !important;
  margin-left:7%;
  }
  .icn{
  margin-left:-20px;
  }
  .icon1:hover{
    border: 4px solid #fff;
  }
  .loc-link:hover{
  text-decoration:none;
  }
  .footer-links-col1{
  color:#242424;
  }
  .footer-links-col1:hover{
  text-decoration:none;
  color:#6FB5BD;
  }
  #desk-col1{
  margin-top:13px;
  font-size:12px;
   text-align: justify;
  text-justify: inter-word;
  }
  .slide1Pic{
  color:#fff;
  font-weight:500;
  }
 .slide2Pic{
 color:#19B3BD;
 font-weight:500;
 }
 .slide3Pic{
 color:#19B3BD;
 font-weight:500;
 }
        

       
        
        </style>

    </head>
	<body>
		<!-- HEADER -->
		<header>
			<!-- TOP HEADER -->
			<div id="top-header">
				<div class="container">
					
					<ul class="header-links pull-right">
						
						<li><?php
                             include "db.php";
                            if(isset($_SESSION["uid"])){
                                $sql = "SELECT first_name FROM user_info WHERE user_id='$_SESSION[uid]'";
                                $query = mysqli_query($con,$sql);
                                $row=mysqli_fetch_array($query);
                                
                                echo '
                               <div class="dropdownn">
                                  <a href="#" class="dropdownn" data-toggle="modal" data-target="#myModal" ><i class="fa fa-user-o"></i> HI '.$row["first_name"].'</a>
                                  <div class="dropdownn-content">
                                    <a href="" data-toggle="modal" data-target="#profile"><i class="fa fa-user-circle" aria-hidden="true" ></i>My Profile</a>
                                    <a href="logout.php"  ><i class="fa fa-sign-in" aria-hidden="true"></i>Log out</a>
                                    
                                  </div>
                                </div>';

                            }else{ 
                                echo '
                                <div class="dropdownn">
                                  <a href="#" class="dropdownn" data-toggle="modal" data-target="#myModal" ><i class="fa fa-user-o"></i> My Account</a>
                                  <div class="dropdownn-content">
                                    <a href="" data-toggle="modal" data-target="#Modal_login"><i class="fa fa-sign-in" aria-hidden="true" ></i>Login</a>
                                    <a href="" data-toggle="modal" data-target="#Modal_register"><i class="fa fa-user-plus" aria-hidden="true"></i>Register</a>
                                    
                                  </div>
                                </div>';
                                
                            }
                                             ?>
                               
                                </li>				
					</ul>
					
				</div>
			</div>
			<!-- /TOP HEADER -->
			
			

			<!-- MAIN HEADER -->
			<div id="header">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<!-- LOGO -->
						<div class="col-md-3">
							<div class="header-logo">
								<a href="#" class="logo">
								
								<font style="font-style:normal; font-size: 33px;color: aliceblue;font-family: serif">
                                        CoronaV
                                    </font>
									
								</a>
							</div>
						</div>
						<!-- /LOGO -->

						<!-- SEARCH BAR -->
						<div class="col-md-6">
							<div class="header-search">
								<form>

									<input class="input" id="search" type="text" placeholder="Search here">
									<button type="submit" id="search_btn" class="search-btn">Search</button>
								</form>
							</div>
						</div>
						<!-- /SEARCH BAR -->

						<!-- ACCOUNT -->
						<div class="col-md-3 clearfix">
							<div class="header-ctn">
								

								<!-- Cart -->
								<div class="dropdown">
									<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
										<i class="fa fa-shopping-cart"></i>
										<span>Your Cart</span>
										<div class="badge qty">0</div>
									</a>
									<div class="cart-dropdown"  >
										<div class="cart-list" id="cart_product">
										
											
										</div>
										
										<div class="cart-btns">
												<a href="cart.php" style="width:100%;"><i class="fa fa-edit"></i>  edit cart</a>
											
										</div>
									</div>
										
									</div>
								<!-- /Cart -->

								<!-- Menu Toogle -->
								<div class="menu-toggle">
									<a href="#">
										<i class="fa fa-bars"></i>
										<span>Menu</span>
									</a>
								</div>
								<!-- /Menu Toogle -->
							</div>
						</div>
						<!-- /ACCOUNT -->
					</div>
					<!-- row -->
				</div>
				<!-- container -->
			</div>
			<!-- /MAIN HEADER -->
		</header>
		<!-- /HEADER -->
		<nav id='navigation'>
			<!-- container -->
            <div class="container" id="get_category_home">
                
            </div>
				<!-- responsive-nav -->
				
			<!-- /container -->
		</nav>
            

		<!-- NAVIGATION -->
		
		<div class="modal fade" id="Modal_login" role="dialog">
                        <div class="modal-dialog">
													
                          <!-- Modal content-->
                          <div class="modal-content">
                            <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                              
                            </div>
                            <div class="modal-body">
                            <?php
                                include "login_form.php";
    
                            ?>
          
                            </div>
                            
                          </div>
													
                        </div>
                      </div>
                <div class="modal fade" id="Modal_register" role="dialog">
                        <div class="modal-dialog" style="">

                          <!-- Modal content-->
                          <div class="modal-content">
                            <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                              
                            </div>
                            <div class="modal-body">
                            <?php
                                include "register_form.php";
    
                            ?>
          
                            </div>
                            
                          </div>

                        </div>
                      </div>
		

<style>

.row-checkout {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container-checkout {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.checkout-btn {
  background-color: #4CAF50;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.checkout-btn:hover {
  background-color: #45a049;
}



hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row-checkout {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
</style>

<br/><br/><div class='alert alert-success'>
						<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
						<b>Your payment process is 
											successfully completed <br/>
											You can continue your Shopping</b>
					</div><br/><br/><br/>
					
					<a href="index.php" class="btn btn-success btn-lg">Continue Shopping</a><br/><br/>
<?php
include "footer.php";
?>