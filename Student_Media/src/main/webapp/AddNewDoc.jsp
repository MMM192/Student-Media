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

 body {

            margin: 0px;
            padding: 0px;


        }
#bgImg1{

background-image: url(images/pexels-tirachard-kumtanom-544115.jpg);
    height: 90ch;
    width: 100%;
    background-size: 100%;
}

#divColor{
margin-left:9cm;
background-color: white;
width :20cm;
height: 10cm;
}

.btn1{
 background-color:white;
            border:none;
            border-bottom:2px solid gray;
            Width:309px;
}

#btn2{
margin-left:10%;
width:6cm;
}

#backBTN{
width:2cm;
height: 2cm;
 color: rgb(255, 86, 117);
}


#backBTN:hover{
width:1.8cm;
height: 1.8cm;
    transition-duration: 1s;
        

 color: rgb(255, 86, 117);
}

#SiomName1{

    font-size: 0.6cm;
    
    margin-left:0.5ch;
coler:white;
margin-left:2.5ch;
}
#tdSIom{
    
    
        border-width:0.3ch ;
      

border-style:solid;

border-color: black;

width:4cm;


}

#educationTxt{

background-color:rgba(243,0,103,255);
    
    border-top-radius:none ;
   
    border-bottom-right-radius: 2ch;
    
    


}


.span1{
width: 0.5cm;
}


.span2{
width: 83%;
}

</style>
</head>
<body>



<jsp:include page="Teacher_navbar_after_Login.jsp"></jsp:include>


<div id="bgImg1">
<br>
<table>
<tr>

<td class="span1"></td>


<td >
<div id="tdSIom">

<h6 id="SiomName1">
S I O M
<h6/>
</div>
<p align="center" id="educationTxt">
EDUCATION

<p/>

<td/>


<td class="span2"></td>

<td>

<a href="Teacher_Home.jsp">

<svg id="backBTN" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-rewind-btn" viewBox="0 0 16 16">
  <path d="M7.21 5.093A.5.5 0 0 1 8 5.5v1.886l3.21-2.293A.5.5 0 0 1 12 5.5v5a.5.5 0 0 1-.79.407L8 8.614V10.5a.5.5 0 0 1-.79.407l-3.5-2.5a.5.5 0 0 1 0-.814l3.5-2.5Z"/>
  <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4Zm15 0a1 1 0 0 0-1-1H2a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4Z"/>
</svg>
 <p align="center"> Go back</p>
 
 
 
</td>
</a>
</tr>

</table>






<br><br><br>
<div id="divColor">
<br>
<h3 align="center">Add New Document</h3>
<form action="New_Document_upload" method="post" enctype="multipart/form-data">
 
<div class="contener">
<div class="row">

<div class="col-sm-12">
<hr>
</div>

</div>


<div class="row">



<div class="col-sm-1">

</div>

<div class="col-sm-5">
<label for="name"><b class="lables">Enter The Subject Name </b></label>
<br>
<input type="text" name="Sub_Name" placeholder="Enter Subject Name.." class="btn1" required="">
</div>

<div class="col-sm-5">
<label for="name"><b class="lables">Title Of Document</b></label>
<br>
<input type="text" name="title_of_document" placeholder="File Name.." class="btn1" required="">
</div>

</div>





<div class="row">



<div class="col-sm-1">

</div>

<div class="col-sm-5"><br>
<label for="name"><b class="lables">Enter Department  </b></label>
<br>
<input type="text" name="department_name" placeholder="Enter Department.." class="btn1" required="">
</div>

<div class="col-sm-5"><br>
<label for="name"><b class="lables">Enter Course Year</b></label>
<br>
<select name="course_year" id="year" placeholder="File Name.." class="btn1" required="">
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
</select>

</div>

</div>






<div class="row">



<div class="col-sm-1">

</div>

<div class="col-sm-5"><br>
<label for="name"><b class="lables">Upload Document </b></label>
<br>
<input type="file" name="pdfFile1" id="pdfFile1"  required class="btn1">

</div>

<div class="col-sm-5"><br><br>
<input type="submit" value="upload" id="btn2" class="btn btn-warning">
</div>

</div>







</div>

</form>
</div>




</div>

	<jsp:include page="footer.jsp"></jsp:include>



</body>
</html>

