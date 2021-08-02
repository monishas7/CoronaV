
   <div class="main main-raised">
        <div class="container mainn-raised" style="width:100%;">
  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
   
  
    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="img/1.jpg" alt="Los Angeles" style="width:100%;">
        <div class="carousel-caption ">
    <h1 id="heading1">MEDICAL  EQUIPMENT  STORE</h1>
    <p id="caption1">Find everything for your medical equipment needs</p>
  <a href="product.php?p=1" class="cta-btn">SHOP NOW <i class="fa fa-arrow-circle-right"></i></a>
  </div>
      </div>

      <div class="item">
       <img src="img/2.jpg" style="width:100%;">
         <div class="carousel-caption ">
    <h1 id="heading2">DISPOSABLE MASKS</h1>
    <p id="caption2">Don't miss your special offer!</p>
  <a href="product.php?p=9" class="cta-btn">SHOP NOW <i class="fa fa-arrow-circle-right"></i></a>
  </div>
      </div>
    
      <div class="item">
       <img src="img/3.jpg" alt="New York" style="width:100%;">
        <div class="carousel-caption ">
    <h1 id="heading3">NEW COLLECTION</h1>
    <p id="caption3">Surgical Equipment</p>
  <a href="product.php?p=15" class="cta-btn">SHOP NOW <i class="fa fa-arrow-circle-right"></i></a>
  </div>
      </div>
      
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control _26sdfg" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only" >Previous</span>
    </a>
    <a class="right carousel-control _26sdfg" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
      
	  <div class="carousel-inner">
      <div class="item active">
        <img src="img/456.jpg" alt="Los Angeles" style="width:100%;">
        <div class="carousel-caption ">  
        <a href="product.php?p=11" class="cta-btn">SHOP NOW <i class="fa fa-arrow-circle-right"></i></a>
        </div>
      </div>
	  </div>
		

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<!-- section title -->
					<div class="col-md-12">
						<div class="section-title">
							<center><h3 class="title">Popular Products</h3></center>
							
						</div>
					</div>
					<!-- /section title -->

					<!-- Products tab & slick -->
					<div class="col-md-12 mainn mainn-raised">
						<div class="row">
							<div class="products-tabs">
								<!-- tab -->
								<div id="tab1" class="tab-pane active">
									<div class="products-slick" data-nav="#slick-nav-1" >
									
									<?php
                    include 'db.php';
								
                    
					$product_query = "SELECT * FROM products,categories WHERE product_cat=cat_id AND product_id ";
                $run_query = mysqli_query($con,$product_query);
                if(mysqli_num_rows($run_query) > 0){

                    while($row = mysqli_fetch_array($run_query)){
                        $pro_id    = $row['product_id'];
                        $pro_cat   = $row['product_cat'];
                        $pro_title = $row['product_title'];
                        $pro_price = $row['product_price'];
                        $pro_image = $row['product_image'];

                        $cat_name = $row["cat_title"];

                        echo "
				
                        
                                
								<div class='product'>
									<a href='product.php?p=$pro_id'><div class='product-img'>
										<img src='product_images/$pro_image' style='max-height: 170px;' alt=''>
										
									</div></a>
									<div class='product-body'>
										<p class='product-category'>$cat_name</p>
										<h3 class='product-name header-cart-item-name'><a href='product.php?p=$pro_id'>$pro_title</a></h3>
    								<h4 class='product-price header-cart-item-info'>Rs $pro_price/-</h4>
										
									</div>
									<div class='add-to-cart'>
										<button pid='$pro_id' id='product' class='add-to-cart-btn block2-btn-towishlist' href='#'><i class='fa fa-shopping-cart'></i> add to cart</button>
									</div>
								</div>
                               
							
                        
			";
		}
        ;
      
}
?>
										<!-- product -->
										
	
										<!-- /product -->
										
										
										<!-- /product -->
									</div>
									<div id="slick-nav-1" class="products-slick-nav"></div>
								</div>
								<!-- /tab -->
							</div>
						</div>
					</div>
					<!-- Products tab & slick -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->
		
	<div class="carousel-inner">

      <div class="item active">
        <img src="img/789.jpg" alt="Los Angeles" style="width:100%;">
        <div class="carousel-caption ">
        <a href="product.php?p=10" class="cta-btn">SHOP NOW <i class="fa fa-arrow-circle-right"></i></a>
        </div>
      </div>
	 </div>
	

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<!-- section title -->
					<div class="col-md-12">
						<div class="section-title">
							<center><h3 class="title">On Sale</h3></center>
							
						</div>
					</div>
					<!-- /section title -->

					<!-- Products tab & slick -->
					<div class="col-md-12 mainn mainn-raised">
						<div class="row">
							<div class="products-tabs">
								<!-- tab -->
								<div id="tab2" class="tab-pane fade in active">
									<div class="products-slick" data-nav="#slick-nav-2">
										<!-- product -->
										<?php
                    include 'db.php';
								
                    
					$product_query = "SELECT * FROM products,categories WHERE product_cat=cat_id AND product_id ";
                $run_query = mysqli_query($con,$product_query);
                if(mysqli_num_rows($run_query) > 0){

                    while($row = mysqli_fetch_array($run_query)){
                        $pro_id    = $row['product_id'];
                        $pro_cat   = $row['product_cat'];
                        $pro_title = $row['product_title'];
                        $pro_price = $row['product_price'];
                        $pro_image = $row['product_image'];

                        $cat_name = $row["cat_title"];

                        echo "
				
                        
                                
								<div class='product'>
									<a href='product.php?p=$pro_id'><div class='product-img'>
										<img src='product_images/$pro_image' style='max-height: 170px;' alt=''>
										<div class='product-label'>
										<span class='sale'>-20%</span>
											
										</div>
									</div></a>
									<div class='product-body'>
										<p class='product-category'>$cat_name</p>
										<h3 class='product-name header-cart-item-name'><a href='product.php?p=$pro_id'>$pro_title</a></h3>
										<h4 class='product-price header-cart-item-info'>Rs $pro_price<del class='product-old-price'>Rs 550.00</del></h4>
										
										
									</div>
									<div class='add-to-cart'>
										<button pid='$pro_id' id='product' class='add-to-cart-btn block2-btn-towishlist' href='#'><i class='fa fa-shopping-cart'></i> add to cart</button>
									</div>
								</div>
                               
							
                        
			";
		}
        ;
      
}
?>
										
										<!-- /product -->
									</div>
									<div id="slick-nav-2" class="products-slick-nav"></div>
								</div>
								<!-- /tab -->
							</div>
						</div>
					</div>
					<!-- /Products tab & slick -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<div class="carousel-inner">

      <div class="item active">
        <img src="img/10.jpg" alt="Los Angeles" style="width:100%;">
        <div class="carousel-caption ">
    
    <h1 id="heading1">BASIC MEDICAL FACE MASK <br> Rs 5000/-</h1>
  <a href="product.php?p=9" class="cta-btn">SHOP NOW <i class="fa fa-arrow-circle-right"></i></a>
  </div>
      </div>
	  </div>
	
	
	<div class="container">

<div class="row mt-5 d-flex justify-content-center" style="margin-top:9%">
<h2><strong><center>BRANDS</center></strong></h2>
</div>
<br><br>
<div class="row mt-5">

<div class="col-md-2 col-6">
<a href="https://www.activanaturals.com/">
<img src="https://ld-prestashop.template-help.com/prestashop_eze_567_tf_v2/img/m/2-manufacturer_home.jpg" alt="brandname">
</a>
</div>

<div class="col-md-2 col-6">
<a href="https://www.gardenoflife.com/">
<img src="https://ld-prestashop.template-help.com/prestashop_eze_567_tf_v2/img/m/3-manufacturer_home.jpg" alt="brandname">
</a>
</div>

<div class="col-md-2 col-6">
<a href="http://hiddenvalleyherbfarm.com.au/">
<img src="https://ld-prestashop.template-help.com/prestashop_eze_567_tf_v2/img/m/4-manufacturer_home.jpg" alt="brandname">
</a>
</div>

<div class="col-md-2 col-6">
<a href="https://himalayausa.com/">
<img src="https://ld-prestashop.template-help.com/prestashop_eze_567_tf_v2/img/m/5-manufacturer_home.jpg" alt="brandname">
</a>
</div>

<div class="col-md-2 col-6">
<a href="https://www.hylands.com/">
<img src="https://ld-prestashop.template-help.com/prestashop_eze_567_tf_v2/img/m/6-manufacturer_home.jpg" alt="brandname">
</a>
</div>

<div class="col-md-2 col-6">
<a href="https://www.jarrow.com/">
<img src="https://ld-prestashop.template-help.com/prestashop_eze_567_tf_v2/img/m/7-manufacturer_home.jpg" alt="brandname">
</a>
</div>

</div>

</div>
		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

</div>
		