<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.util.Arrays"%>
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
        
        
        #blackBG{
        background-color: rgba(32,33,33,255); 
        
        height:120%;





        }
        
        
        #img1{
margin-left:1.5cm;
width: 3cm;
border-radius: 50ch;

}


.h5dynamic{
color: white;
}


.count1{

font-size: 1cm;
}
#table3{
margin-left: 1.5cm;

color: white;

}

.ptag1{

font-size: 0.5cm;
}

.icon1{
margin-left:1cm;
width: 1.5cm;
height: 1.5cm;
}



#green{
background-color: green;
width: 9cm;
height: 4cm;
border-radius: 2ch;
    box-shadow: 10px 10px 20px 1px gray;

}
#orange{
background-color: orange;
width: 9cm;
height: 4cm;
    box-shadow: 10px 10px 20px 1px gray;

border-radius: 2ch;

}
#blue{
background-color: blue;
width: 9cm;
border-radius: 2ch;
    box-shadow: 10px 10px 20px 1px gray;
height: 4cm;
}



#green:hover{
background-color: green;
width: 9cm;
height: 4cm;
transition-duration: 1s;
background-color: rgb(42, 38, 38);
}
#orange:hover{
background-color: orange;
width: 9cm;
height: 4cm;
transition-duration: 1s;
background-color: rgb(42, 38, 38);
}
#blue:hover{
background-color: blue;
width: 9cm;
height: 4cm;
transition-duration: 1s;
background-color: rgb(42, 38, 38);
}



.span1{
width: 2cm;
}


#fixed{
position: fixed;

}

.folder{
background-image: url(images/file66.jpg);
    height:4cm;
    width: 70%;
    background-repeat: no-repeat;
    
    background-size: 70%;
}





.folder:hover{
background-image: url(images/file66.jpg);
    height:4cm;
    width: 70%;
    background-repeat: no-repeat;
    transition-duration: 1s;
    background-size: 65%;
      
}



</style>

</head>
<body>
<jsp:include page="Admin_navbar_after_Login.jsp"></jsp:include>






<div class="contener" >
<div class="row" >
<div class="col-sm-2" >
<div id="blackBG" >



<br>

<img src="images\pexels-tirachard-kumtanom-544115.jpg" id="img1">


<br>
<hr>

<%!String TUserId; %>
					<%
						ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select * from admin where Aid='"
							+ session.getAttribute("Aid") + "'");
					if (rs.next()) {
					%>
					
					
					<h5 align="center" class="h5dynamic" >
					User Id :
					
					
					
					<%=rs.getString("User_Id")%>
					
					<%TUserId=rs.getString("User_Id");%>
					</h5>
					
				
				
				
				
					<hr>
					
					
					
					
					<h5 align="center" class="h5dynamic" >
					Name :
					</h5>
					<h5 class="h5dynamic" align="center">
					<%=rs.getString("Aname")%>
					</h5>
					
					
					
					<hr>
					
					
					<h5 align="center" class="h5dynamic" >
					Mail :
					</h5>
					
					<h5 class="h5dynamic" align="center">
					<%=rs.getString("Amail")%>
					</h5>
					
					
					
					<hr>
					<h5 align="center" class="h5dynamic" >
					Date Of Birth :
					
					
					<%=rs.getString("DOB")%>
					</h5>
					
					

<hr>
<h5 align="center" class="h5dynamic" >
					Address :
					</h5>
					<h5 class="h5dynamic" align="center">
					<%=rs.getString("Aaadress")%>
					</h5>
						
						<hr>
						<h5 align="center" class="h5dynamic" >
					Phone Number :
					</h5>
						<h5 class="h5dynamic" align="center">
					<%=rs.getString("Anumber")%>
					</h5>
					
					
					 
					

 
					<hr>
					

					
			
					<%
						}
					else{
						System.out.println("data not found in my sql");
					}
					
					%>
				
				
				


<br><br><br><br>

</div>


</div>




<%--*********************black area ends***************** --%>


<div class="col-sm-10">
<br>


<div class="contener" >
<div class="row" >
<br> 
<%--*********************first div of color***************** --%>
<div class="col-sm-4"  >


<a href=""   data-toggle="modal" data-target="#myModal"> 
<div id="green" >


<table id="table3"> 
<tr>
<td>
<br>
<%! int  document_count65=0; %>


					<%
						ResultSet rsa = DatabaseConnection.getResultFromSqlQuery("select * from documents");
					while (rsa.next()) {
						document_count65++;
						
					}
					
					
					%>
					
<p class="count1"><%=document_count65%></p>

<%document_count65=0; %>

<p >Total Document Uploaded</p>
<td>

<td>
<br>
<svg  class="icon1"xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-file-earmark-check-fill" viewBox="0 0 16 16">
  <path d="M9.293 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V4.707A1 1 0 0 0 13.707 4L10 .293A1 1 0 0 0 9.293 0zM9.5 3.5v-2l3 3h-2a1 1 0 0 1-1-1zm1.354 4.354-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708.708z"/>
</svg>
<td>


</tr>

<tr>
<td>
<p class="ptag1">Delete document</p>
<td>
</tr>
</table>




 











</div>

</a>


</div>






















<%--*********************second div of color***************** --%>
<div class="col-sm-4">



<a href=""  data-toggle="modal" data-target="#exampleModal"> 
<div id="orange">


<table id="table3"> 
<tr>
<td>
<br>
<p class="count1"><%=TUserId %></p>
<p >you can update your profile.</p>
<td>

<td>
<br>
<svg class="icon1" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-badge" viewBox="0 0 16 16">
  <path d="M6.5 2a.5.5 0 0 0 0 1h3a.5.5 0 0 0 0-1h-3zM11 8a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
  <path d="M4.5 0A2.5 2.5 0 0 0 2 2.5V14a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V2.5A2.5 2.5 0 0 0 11.5 0h-7zM3 2.5A1.5 1.5 0 0 1 4.5 1h7A1.5 1.5 0 0 1 13 2.5v10.795a4.2 4.2 0 0 0-.776-.492C11.392 12.387 10.063 12 8 12s-3.392.387-4.224.803a4.2 4.2 0 0 0-.776.492V2.5z"/>
</svg>


<td>


</tr>

<tr>
<td>
<p class="ptag1">Update Your Profile.</p>
<td>
</tr>
</table>






</div>

</a>


</div>






<%--......................model starts............................ --%>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
        
        <form action="Update_Admin_profile" method="post" >
         
    <%
						ResultSet rsAdminUser = DatabaseConnection.getResultFromSqlQuery("select * from admin where Aid='"
							+ session.getAttribute("Aid") + "'");
					if (rsAdminUser.next()) {
					%>
					
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Update Profile..</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
   
     
    
  
  
  
  <div class="form-group">
    <label for="Name_update">Name :</label>
    <input type="text" required class="form-control" id="Name_update" name="Name_update"  placeholder="Name " value="<%=rsAdminUser.getString("Aname")%>">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  
  
  
  <div class="form-group">
    <label for="Department_Name_update">Address :</label>
    <input type="text" required class="form-control" id="Department_Name_update" name="Address_update"  placeholder="Department Name" value="<%=rsAdminUser.getString("Aaadress")%>">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  
  
  
  
  <div class="form-group">
    <label for="Department_Name_update">Mail :</label>
    <input type="email" required class="form-control" id="Mail_update" name="Mail_update"  placeholder="Mail." value="<%=rsAdminUser.getString("Amail")%>">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  
  
   
  
  
  
  
    
  
  <div class="form-group">
    <label for="Number_update"> Number :</label>
    <input type="text" required class="form-control" id=Number_update" name="Number_update"  placeholder="Department Name." value="<%=rsAdminUser.getString("Anumber")%>">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  
  
     
  
  
  
  <div class="form-group">
    <label for="DOB_update"> Date Of Birth : </label>
    <input type="date" required class="form-control" id="DOB_update" name="DOB_update"  placeholder="Department Number. " value="<%=rsAdminUser.getString("DOB")%>">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  
  
  
  
  
  
  
  
    <div class="form-group">
    <label for="User_id_update"> User Id : </label>
    <input type="text" required class="form-control" id="User_id_update" name="User_id_update"  placeholder="User Id. " value="<%=rsAdminUser.getString("User_Id")%>">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  
  
  
  
    <div class="form-group">
    <label for="pass_update"> Password : </label>
    <input type="password" required class="form-control" id="pass_update" name="pass_update"  placeholder="password. " value="<%=rsAdminUser.getString("Password")%>">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  

  

  
      
        
      
<input type="text" name="Did" id="Did"   value=""  hidden >
        <input type="text" name="department_name_copy" id="department_name_copy"   value=""  hidden >
       
      </div>
      
      
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
       <input type="submit"  class="btn btn-primary" value="Save changes">
      </div>
      
      <%
          }
      
      %>
      
      </form>
    </div>
  </div>
</div>






<%--......................model end............................ --%>











<%--*********************therd div of color***************** --%>
   <%! int stdcnt=0; %>
         
    <%
						ResultSet rssstdCount1 = DatabaseConnection.getResultFromSqlQuery("select * from add_student");
					while (rssstdCount1.next()) {
						stdcnt++;
					}
					%>
<div class="col-sm-4">


<a href=""   data-toggle="modal" data-target="#myModal2">  
<div id="blue">


<table id="table3"> 
<tr>
<td>
<br>
<p class="count1"><%=stdcnt%></p>
<% stdcnt=0;%>
<p >Total Nmber Of Student</p>
<td>

<td>
<br>

<svg class="icon1" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-backpack-fill" viewBox="0 0 16 16">
  <path d="M5 13v-3h4v.5a.5.5 0 0 0 1 0V10h1v3z"/>
  <path d="M6 2v.341C3.67 3.165 2 5.388 2 8v5.5A2.5 2.5 0 0 0 4.5 16h7a2.5 2.5 0 0 0 2.5-2.5V8a6.002 6.002 0 0 0-4-5.659V2a2 2 0 1 0-4 0m2-1a1 1 0 0 1 1 1v.083a6.04 6.04 0 0 0-2 0V2a1 1 0 0 1 1-1m0 3a4 4 0 0 1 3.96 3.43.5.5 0 1 1-.99.14 3 3 0 0 0-5.94 0 .5.5 0 1 1-.99-.14A4 4 0 0 1 8 4M4.5 9h7a.5.5 0 0 1 .5.5v4a.5.5 0 0 1-.5.5h-7a.5.5 0 0 1-.5-.5v-4a.5.5 0 0 1 .5-.5"/>
</svg>


 
<td>


</tr>

<tr>
<td>
<p class="ptag1">Delete Student</p>
<td>
</tr>
</table>






</div>

</a>

</div>




</div>



<br><br><br><br> 
<div class="row">

<!-- 88888888888888888888888888888888888 another row insert here89999999999999999999999999  -->


<%--*********************1st div of color***************** --%>



 <%! int ttdcnt23=0; %>
         
    <%
						ResultSet rssstdCount885 = DatabaseConnection.getResultFromSqlQuery("select * from add_teacher");
					while (rssstdCount885.next()) {
						ttdcnt23++;
					}
					%>
<div class="col-sm-4">


<a href=""   data-toggle="modal" data-target="#myModal234">  
<div id="blue">


<table id="table3"> 
<tr>
<td>
<br>
<p class="count1"><%=ttdcnt23%></p>
<% ttdcnt23=0;%>
<p >Total Nmber Of Teacher</p>
<td>

<td>
<br>

<svg  class="icon1" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-fill-check" viewBox="0 0 16 16">
  <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m1.679-4.493-1.335 2.226a.75.75 0 0 1-1.174.144l-.774-.773a.5.5 0 0 1 .708-.708l.547.548 1.17-1.951a.5.5 0 1 1 .858.514ZM11 5a3 3 0 1 1-6 0 3 3 0 0 1 6 0"/>
  <path d="M2 13c0 1 1 1 1 1h5.256A4.493 4.493 0 0 1 8 12.5a4.49 4.49 0 0 1 1.544-3.393C9.077 9.038 8.564 9 8 9c-5 0-6 3-6 4"/>
</svg>


 
<td>


</tr>

<tr>
<td>
<p class="ptag1">Delete Techer</p>
<td>
</tr>
</table>






</div>

</a>

</div>






<%--*********************2nd div of color***************** --%>


  <%! int admincnt=0; %>
         
    <%
						ResultSet rsadmin2 = DatabaseConnection.getResultFromSqlQuery("select * from admin");
					while (rsadmin2.next()) {
						admincnt++;
					}
					%>
					
<div class="col-sm-4"  >


<a href=""   data-toggle="modal" data-target="#exampleModaladdadmin"> 
<div id="green" >


<table id="table3"> 
<tr>
<td>
<br>
 

					
<p class="count1"><%=admincnt%></p>

 <% admincnt=0;%>

<p >Total Admin</p>
<td>

<td>
<br>
<svg   class="icon1" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-fill-gear" viewBox="0 0 16 16">
  <path d="M11 5a3 3 0 1 1-6 0 3 3 0 0 1 6 0m-9 8c0 1 1 1 1 1h5.256A4.493 4.493 0 0 1 8 12.5a4.49 4.49 0 0 1 1.544-3.393C9.077 9.038 8.564 9 8 9c-5 0-6 3-6 4m9.886-3.54c.18-.613 1.048-.613 1.229 0l.043.148a.64.64 0 0 0 .921.382l.136-.074c.561-.306 1.175.308.87.869l-.075.136a.64.64 0 0 0 .382.92l.149.045c.612.18.612 1.048 0 1.229l-.15.043a.64.64 0 0 0-.38.921l.074.136c.305.561-.309 1.175-.87.87l-.136-.075a.64.64 0 0 0-.92.382l-.045.149c-.18.612-1.048.612-1.229 0l-.043-.15a.64.64 0 0 0-.921-.38l-.136.074c-.561.305-1.175-.309-.87-.87l.075-.136a.64.64 0 0 0-.382-.92l-.148-.045c-.613-.18-.613-1.048 0-1.229l.148-.043a.64.64 0 0 0 .382-.921l-.074-.136c-.306-.561.308-1.175.869-.87l.136.075a.64.64 0 0 0 .92-.382l.045-.148ZM14 12.5a1.5 1.5 0 1 0-3 0 1.5 1.5 0 0 0 3 0"/>
</svg>
 
<td>


</tr>

<tr>
<td>
<p class="ptag1">Add New Admin</p>
<td>
</tr>
</table>

 
</div>

</a>


</div>





<%--......................model starts............................ --%>
<div class="modal fade" id="exampleModaladdadmin" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
        
        <form action="Admin_Add_Admin" method="post" >
         
 
					
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add New Admin..</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
   
     
    
  
  
  
  
 
  
          <div class="userid">
    <label for="exampleInputEmail1">Name </label>
    <input type="text" class="form-control" id="userid"  placeholder="Name" name="name">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  
          <div class="userid">
    <label for="exampleInputEmail1">Mail </label>
    <input type="email" class="form-control" id="userid"  placeholder="Mail" name="mail">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  
  
  
  
  
          <div class="userid">
    <label for="exampleInputEmail1">Number </label>
    <input type="text" class="form-control" id="userid"  placeholder="Number" name="number">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  
  
  
  
            <div class="userid">
    <label for="exampleInputEmail1">DOB</label>
    <input type="date" class="form-control" id="userid"  placeholder="DOB" name="DOB">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
          <div class="userid">
    <label for="exampleInputEmail1">Address</label>
    <input type="text" class="form-control" id="userid"  placeholder="Address" name="address">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  
  
  
  
  
  
  
          <div class="userid">
    <label for="exampleInputEmail1">User Id </label>
    <input type="text" class="form-control" id="userid"  placeholder="UserId" name="userId">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  
  
  
  
       
  
  
  
          <div class="userid">
    <label for="exampleInputEmail1">Password </label>
    <input type="Password" class="form-control" id="userid"  placeholder="Password" name="password">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  
 
  
  
  
   
  
  
  
  
    
 
  
  
     
  
  
 
  
  
  
  
  
  
  
  
  
  
  
  
   

  

  
      
        
 
      </div>
      
      
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
       <input type="submit"  class="btn btn-primary" value="Submint">
      </div>
      
      
      
      </form>
    </div>
  </div>
</div>






<%--......................model end............................ --%>








<%--*********************3rd div of color***************** --%>
<div class="col-sm-4">



<a href=""   > 
<div id="orange">


<table id="table3"> 
<tr>
<td>
<br>
<p class="count1">21</p>
<p >Total Number Of Download .</p>
<td>

<td>
<br>
<svg class="icon1" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-badge" viewBox="0 0 16 16">
  <path d="M6.5 2a.5.5 0 0 0 0 1h3a.5.5 0 0 0 0-1h-3zM11 8a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
  <path d="M4.5 0A2.5 2.5 0 0 0 2 2.5V14a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V2.5A2.5 2.5 0 0 0 11.5 0h-7zM3 2.5A1.5 1.5 0 0 1 4.5 1h7A1.5 1.5 0 0 1 13 2.5v10.795a4.2 4.2 0 0 0-.776-.492C11.392 12.387 10.063 12 8 12s-3.392.387-4.224.803a4.2 4.2 0 0 0-.776.492V2.5z"/>
</svg>


<td>


</tr>

<tr>
<td>
<p class="ptag1">Count Of Download.</p>
<td>
</tr>
</table>






</div>

</a>


</div>





 




<!-- slc,kvdsmvksmvvsdvsdvvvvvvvv  end of second boxes -->


</div>



















</div>







</div>









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




	<jsp:include page="footer.jsp"></jsp:include>


<%--......................model lare for total document(BOX 1) start............................ --%>


 

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <p>This is a large modal.</p>
          
          
          
                 
        <form action="Update_Teacher_profile" method="post" >
         
    <%
						ResultSet rsfordocCount = DatabaseConnection.getResultFromSqlQuery("select * from documents");
					while (rsfordocCount.next()) {
					%>
          <table class="table">
  <caption>List of users</caption>
  <thead>
    <tr>
      <th scope="col">Did</th>
      <th scope="col">Tname</th>
      <th scope="col">subject_name</th>
      <th scope="col">department_name</th>
      
       <th scope="col">title_of_document</th>
       
        <th scope="col">file_name</th>
        
          <th scope="col">Download</th>
        
        <th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      
      
      <td><%=rsfordocCount.getString("Did")%></td>
      <td><%=rsfordocCount.getString("Tname")%></td>
      <td><%=rsfordocCount.getString("subject_name")%></td>
      <td><%=rsfordocCount.getString("department_name")%></td>
      <td><%=rsfordocCount.getString("title_of_document")%></td>
      <td><%=rsfordocCount.getString("file_name")%></td>
      
      <td>
      <a href="DownloadServlet?fileId=<%=rsfordocCount.getString("Did")%>">
      <button type="button" class="btn btn-info">Download</button>
      </a>
      </td>
      <td>
      
      
      
      <a
href="Admin-delete-Document.jsp?Did=<%=rsfordocCount.getString("Did")%>&Corse_Name=<%=request.getParameter("Corse_Name")%>
&Subject_Name=<%=request.getParameter("Subject_Name")%>"
class="btn btn-danger" onclick="return confirm('Are you sure Do you want to delete this Document?');">Delete

</a>

      
      
      </td>
      
    </tr>
     
  </tbody>
</table>

<%
					}
%>
</form>
          
          
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
</div>




 


<%--......................model lare for total document(BOX 1) end............................ --%>








<%--......................model lare for total  students(BOX 3) start............................ --%>


 

  <!-- Modal -->
  <div class="modal fade" id="myModal2" role="dialog">
    <div class="">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">students</h4>
        </div>
        <div class="modal-body">
          <p>This is a large modal.</p>
          
          
          
                 
        <form action="Update_Teacher_profile" method="post" >
        
 
         
    <%
						ResultSet rsstdCount = DatabaseConnection.getResultFromSqlQuery("select * from add_student");
					while (rsstdCount.next()) {
						 
						
					%>
          <table class="table">
  <caption>List of users</caption>
  <thead>
    <tr>
      <th scope="col">Sid</th>
      <th scope="col">Sname</th>
      <th scope="col">SAddress</th>
      <th scope="col">SMail</th>
      
       <th scope="col">SNumber</th>
       
        <th scope="col">Sinstitute_name</th>
        
          <th scope="col">SDeprtmentName</th>
        
        <th scope="col">SDOB</th>
                <th scope="col">SUserid</th>
                
                
        
                <th scope="col">delete</th>
                
    </tr>
  </thead>
  <tbody>
    <tr>
      
      
      <td><%=rsstdCount.getString("Sid")%></td>
      <td><%=rsstdCount.getString("Sname")%></td>
      <td><%=rsstdCount.getString("SAddress")%></td>
      <td><%=rsstdCount.getString("SMail")%></td>
      <td><%=rsstdCount.getString("SNumber")%></td>
      <td><%=rsstdCount.getString("Sinstitute_name")%></td>
      
      <td><%=rsstdCount.getString("SDeprtmentName")%></td>
      <td><%=rsstdCount.getString("SDOB")%></td>
      <td><%=rsstdCount.getString("SUserid")%></td>
      <td>
       
      </td>
      <td>
      
      
      
      <a
href="Admin-delete-Student.jsp?Did=<%=rsstdCount.getString("Sid")%>"
class="btn btn-danger" onclick="return confirm('Are you sure Do you want to delete this Document?');">Delete

</a>

      
      
      </td>
      
    </tr>
     
  </tbody>
</table>



<%
					}
%>
</form>
          
          
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
</div>




 


<%--......................model lare for total students(BOX 3) end............................ --%>




 





<%--......................model lare for total techdents(BOX 4) start............................ --%>


 

  <!-- Modal -->
  <div class="modal fade" id="myModal234" role="dialog">
    <div class="">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Techer</h4>
        </div>
        <div class="modal-body">
          <p>This is a large modal.</p>
          
          
          
                 
        <form action="Update_Teacher_profile" method="post" >
        
 
         
    <%
						ResultSet rsstdCount23 = DatabaseConnection.getResultFromSqlQuery("select * from add_teacher");
					while (rsstdCount23.next()) {
						 
						
					%>
          <table class="table">
  <caption>List of users</caption>
  <thead>
    <tr>
      <th scope="col">Tid</th>
      <th scope="col">Tname</th>
      <th scope="col">Address</th>
      <th scope="col">Mail</th>
      
       <th scope="col">Department_name</th>
       
        <th scope="col">Number</th>
        
          <th scope="col">Department_number</th>
        
        <th scope="col">DOB</th>
                <th scope="col">User_Id</th>
                
                
        
                <th scope="col">delete</th>
                
    </tr>
  </thead>
  <tbody>
    <tr>
      
      
      <td><%=rsstdCount23.getString("Tid")%></td>
      <td><%=rsstdCount23.getString("Tname")%></td>
      <td><%=rsstdCount23.getString("Address")%></td>
      <td><%=rsstdCount23.getString("Mail")%></td>
      <td><%=rsstdCount23.getString("Department_name")%></td>
      <td><%=rsstdCount23.getString("Number")%></td>
      
      <td><%=rsstdCount23.getString("Department_number")%></td>
      <td><%=rsstdCount23.getString("DOB")%></td>
      <td><%=rsstdCount23.getString("User_Id")%></td>
      <td>
       
      </td>
      <td>
      
      
      
      <a
href="Admin-delete-Techer.jsp?Did=<%=rsstdCount23.getString("Tid")%>"
class="btn btn-danger" onclick="return confirm('Are you sure Do you want to delete this Content?');">Delete

</a>

      
      
      </td>
      
    </tr>
     
  </tbody>
</table>



<%
					}
%>
</form>
          
          
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
</div>




 


<%--......................model lare for total teudents(BOX 4) end............................ --%>




 









</body>
</html>