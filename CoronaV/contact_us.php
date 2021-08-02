<?php
include "header.php";
include "db.php";
?>

<?php
	$error="";
	$successMessage="";
if($_POST){
	

	if(!$_POST["email"]){//! for if is empty
		
		$error.= " An Email address is required.<br>";
		
	}
	if(!$_POST["content"]){
		
		$error.= " Content is required<br>";
		
	}
	if(!$_POST["subject"]){
		
		$error.= " Subject is required<br>";
		
	}
	
	if ($_POST["email"]&&filter_var($_POST["email"], FILTER_VALIDATE_EMAIL)=== false) {
 
 $error.= "Is not a valid email address<br>";
}
if($error!=""){
	$error = '<div class="alert alert-danger" role="alert"><p><strong>There were error(s) !</strong></p>'.$error. 
	'</div>';
}else{
	
	$emailTo="sairinraychoudhury@gmail.com";
	$subject= $_POST["subject"];
	$content=$_POST["content"];
	$headers = 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
$headers = 'From:  ' . $_POST["email"] . ' <' . $_POST["email"] .'>' . " \r\n" .
            'Reply-To: '.  $_POST["email"] . "\r\n" .
            'X-Mailer: PHP/' . phpversion();

	if(mail($emailTo, $subject,$content,$headers)){
		
		$successMessage='<div class="alert alert-success" role="alert"><p><strong>Message Sent !</strong></p> </div>';
	}else{
		$error = '<div class="alert alert-danger" role="alert"><p><strong>Message was\'nt sent, Please try again later!</strong></p></div>';
		
	}
}
	
	
}

?>




  <div class="container">
  <br><br>
	<h1>Get In Touch!</h1>
	  <div id="error"><?php echo   $error.$successMessage; ?></div>
	
	<form method="post" action="">
  <div class="form-group">
    <label for="Email">Email address</label>
    <input type="email" class="form-control" name="email" id="email"  placeholder="Enter your E-mail">
    <small class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="subject">Subject</label>
    <input type="text" class="form-control" name="subject" id="subject">
  </div>
 
 
  
  <div class="form-group">
    <label for="exampleFormControlTextarea1">What would you like to ask us?</label>
    <textarea class="form-control" name="content" id="content" rows="3"></textarea>
  </div>
   <button type="submit" id="submit" class="btn btn-primary">Submit</button><br><br>
  
</form>
	
   </div>
   
 
 
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
	<script type="text/javascript">
  
  	  $("form").submit(function(e){
        
		
		
		var error="";
		if($("#Email").val()==""){
			
			error += "The Email field is required.<br>";
			
		}
		if($("#subject").val()==""){
			
			error += "The subject field is required.<br>";
			
		}
		if($("#content").val()==""){
			
			error += "The content field is required.";
			
		}
		<!--is variable error is not empty that is if there is error show this alert-->
		if(error !=""){
		$("#error").html('<div class="alert alert-danger" role="alert"><p><strong>There were error(s) !</strong></p>'+error+'</div>');
			return false;
		}else{
			return true;
		}
		
    });

 </script> 


<?php
include "footer.php";
?>