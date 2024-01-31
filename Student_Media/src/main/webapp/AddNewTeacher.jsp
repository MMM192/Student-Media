<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="BOOTSTRAP_AND_JQUERY\bootstrap-3.4.1-dist\bootstrap-3.4.1-dist\css\bootstrap.min.css">
  <script src="BOOTSTRAP_AND_JQUERY\jquery\dist\jquery.min.js"></script>
  <script src="BOOTSTRAP_AND_JQUERY\bootstrap-3.4.1-dist\bootstrap-3.4.1-dist\js\bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<style type="text/css">
#bgColor{
 background-color:rgb(238, 238, 238); 

}

.lables{
  color:gray;

}


.btn1{
 background-color:rgb(238, 238, 238);
            border:none;
            border-bottom:2px solid gray;
            Width:309px;
}


#btnSub{
            border-radius:2ch;
             background-color:rgb(238, 238, 238);
             width:95%;
             height: 0.9cm; 
        }
        #btnSub:hover{
              background-color: rgb(255, 142, 3);
        transition-duration:0.2s;
            }
</style>
</head>
<body>



	<jsp:include page="Navebar.jsp"></jsp:include>





<div id="bgColor">

<div class="contener">
<div class="row">
<div class="col-sm-5">
<img src="images/Ragistration1.png">
</div>

<div class="col-sm-6">




<%--inner contener --%>
<form action="AddNewTeacher" method="post">


<div class="contener">
<div class="row">

<div class="col-sm-6">
<h2><b>

Register as a teacher..

</b></h2><br><br>
</div>




</div>

<div class="row">


<div class="col-sm-6">
<label for="name"><b class="lables">Name</b></label>
<br>
<input type="text" name="name" placeholder="Name.." class="btn1" required="">
</div>





<div class="col-sm-6">
<label for="name"><b class="lables">Address</b></label>
<br>
<input type="text" name="Address" placeholder="Address.." class="btn1" required="">
</div>



</div>





<div class="row">


<div class="col-sm-6">
<br><br><br>
<label for="name"><b class="lables">Mail</b></label>
<br>
<input type="email" name="Mail" placeholder="Mail.." class="btn1" required="">
</div>





<div class="col-sm-6">
<br><br><br>
<label for="name"><b class="lables">Department Name</b></label>
<br>
<input type="text" name="Department_Name" placeholder="Department Name.." class="btn1" required="">
</div>



</div>










<div class="row">


<div class="col-sm-6">
<br><br><br>
<label for="name"><b class="lables">Mobile Number</b></label>
<br>
<input type="text" name="Number" placeholder="Number.." class="btn1" required="">
</div>





<div class="col-sm-6">
<br><br><br>
<label for="name"><b class="lables">Deprtment Number</b></label>
<br>
<input type="text" name="Department_Number" placeholder="Deprtment Number.." class="btn1" required="">
</div>



</div>
















<div class="row">


<div class="col-sm-6">
<br><br><br>
<label for="name"><b class="lables">Date Of Birth</b></label>
<br>
<input type="date" name="DOB" placeholder="D-O-B.." class="btn1" required="">
</div>





<div class="col-sm-6">
<br><br><br>
<label for="name"><b class="lables">institute name</b></label>
<br>
<input type="text" name="Institute_name" placeholder="institute name.." class="btn1" required="">
</div>



</div>














<div class="row">


<div class="col-sm-6">
<br><br><br>
<label for="name"><b class="lables">User Name</b></label>
<br>
<input type="text" name="UserId" placeholder="User Name.." class="btn1" required="">
</div>





<div class="col-sm-6">
<br><br><br>
<label for="name"><b class="lables">Password</b></label>
<br>
<input type="Password" name="Password" class="btn1" required="">
</div>



</div>















<div class="row">
<div class="col-sm-12">

<br><br>

<input type="submit" value="signup" id="btnSub">

</div>

</div>









</div>

</form>
<%--inner contener ends--%>










</div>





</div>

</div>



<jsp:include page="footer.jsp"></jsp:include>



</div>
<script type="text/javascript">
	$(function() {
		$('#success').delay(3000).show().fadeOut('slow');
	});

	$(function() {
		$('#danger').delay(3000).show().fadeOut('slow');
	});
	
	$(function() {
		$('#warning').delay(3000).show().fadeOut('slow');
	});
	
	$(function() {
		$('#info').delay(3000).show().fadeOut('slow');
	});
</script>
</body>
</html>