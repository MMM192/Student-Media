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





<jsp:include page="Teacher_navbar_after_Login.jsp"></jsp:include>





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
						ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select * from add_teacher where Tid='"
							+ session.getAttribute("id") + "'");
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
					<%=rs.getString("Tname")%>
					</h5>
					
					
					
					<hr>
					
					
					<h5 align="center" class="h5dynamic" >
					Mail :
					</h5>
					
					<h5 class="h5dynamic" align="center">
					<%=rs.getString("Mail")%>
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
					<%=rs.getString("Address")%>
					</h5>
						
						<hr>
						<h5 align="center" class="h5dynamic" >
					Phone Number :
					</h5>
						<h5 class="h5dynamic" align="center">
					<%=rs.getString("Number")%>
					</h5>
					
					
					<hr>
					<h5 align="center" class="h5dynamic" >
					Department Name :
					</h5>
						<h5 class="h5dynamic" align="center">
					<%=rs.getString("Department_name")%>
					</h5>
					
					
					<hr>
					<h5 align="center" class="h5dynamic" >
					Department Number :
					</h5>
					<h5 class="h5dynamic" align="center">
					<%=rs.getString("Department_number")%>
					</h5>
					


<hr>
<h5 align="center" class="h5dynamic" >
					Institute Name :
					</h5>
					<h5 class="h5dynamic" align="center">
					<%=rs.getString("Institute_name")%>
					</h5>
					
						
					
					<hr>
					

					
			
					<%
						}
					else{
						System.out.println("data not found in my sql");
					}
					
					%>
				
				
				




</div>


</div>




<%--*********************black area ends***************** --%>


<div class="col-sm-10">
<br>


<div class="contener" >
<div class="row" >

<%--*********************first div of color***************** --%>
<div class="col-sm-4"  >


<a href="AddNewDoc.jsp" > 
<div id="green" >


<table id="table3"> 
<tr>
<td>
<br>
<%! int  document_count=0; %>


					<%
						ResultSet rsa = DatabaseConnection.getResultFromSqlQuery("select * from documents where Tid='"
							+ session.getAttribute("id") + "'");
					while (rsa.next()) {
						document_count++;
						
					}
					
					
					%>
					
<p class="count1"><%=document_count%></p>

<%document_count=0; %>

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
<p class="ptag1">add new document</p>
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
        
        <form action="Update_Teacher_profile" method="post" >
         
    <%
						ResultSet rs2 = DatabaseConnection.getResultFromSqlQuery("select * from add_teacher where Tid='"
							+ session.getAttribute("id") + "'");
					if (rs2.next()) {
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
    <input type="text" required class="form-control" id="Name_update" name="Name_update"  placeholder="Name " value="<%=rs.getString("Tname")%>">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  
  
  
  <div class="form-group">
    <label for="Department_Name_update">Address :</label>
    <input type="text" required class="form-control" id="Department_Name_update" name="Address_update"  placeholder="Department Name" value="<%=rs.getString("Address")%>">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  
  
  
  
  <div class="form-group">
    <label for="Department_Name_update">Mail :</label>
    <input type="email" required class="form-control" id="Mail_update" name="Mail_update"  placeholder="Mail." value="<%=rs.getString("Mail")%>">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  
  
  
   <div class="form-group">
    <label for="Department_name_update"> Department Name :</label>
    <input type="text" required class="form-control" id=Department_name_update" name="Department_name_update"  placeholder="Department Name." value="<%=rs.getString("Department_name")%>">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  
  
  
  
    
  
  <div class="form-group">
    <label for="Number_update"> Number :</label>
    <input type="text" required class="form-control" id=Number_update" name="Number_update"  placeholder="Department Name." value="<%=rs.getString("Number")%>">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  
  
    <div class="form-group">
    <label for="Department_number_update"> Department Number :</label>
    <input type="text" required class="form-control" id="Department_number_update" name="Department_number_update"  placeholder="Department Number. " value="<%=rs.getString("Department_number")%>">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  
  
  
  <div class="form-group">
    <label for="DOB_update"> Date Of Birth : </label>
    <input type="date" required class="form-control" id="DOB_update" name="DOB_update"  placeholder="Department Number. " value="<%=rs.getString("DOB")%>">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  
  
  <div class="form-group">
    <label for="Institute_name_update"> Institute Name : </label>
    <input type="text" required class="form-control" id="Institute_name_update" name="Institute_name_update"  placeholder="Institute Name. " value="<%=rs.getString("Institute_name")%>">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  
  
  
  
    <div class="form-group">
    <label for="User_id_update"> User Id : </label>
    <input type="text" required class="form-control" id="User_id_update" name="User_id_update"  placeholder="User Id. " value="<%=rs.getString("User_Id")%>">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  
  
  
  
    <div class="form-group">
    <label for="pass_update"> Password : </label>
    <input type="password" required class="form-control" id="pass_update" name="pass_update"  placeholder="password. " value="<%=rs.getString("Password")%>">
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

















<%--*********************therd div of color***************** --%>
<div class="col-sm-4">

<a href=""> 
<div id="blue">


<table id="table3"> 
<tr>
<td>
<br>
<p class="count1">85</p>
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
<p class="ptag1">add new document</p>
<td>
</tr>
</table>






</div>

</a>

</div>




</div>

<div class="row">

<div class="col-sm-1">
</div>

	<div class="col-sm-5">
			
			
			
			<div class="container">
			<div class="row">
			
<%! String a="a"; %>
<%!  String b[]=new String[500];   %>
<%! int  i=0; %>
<%! int  cnt=0; %>
<%! LinkedList<String> stringList = new LinkedList<>(); %>


<%

try {
	  
	



				ResultSet getDoc2 = DatabaseConnection.getResultFromSqlQuery("select * from documents where Tid='"
						+ session.getAttribute("id") + "'");
				
				
				 List<String> data = new ArrayList<>();
				 
		            
		            // Iterate through the ResultSet and add data to the list
		            while (getDoc2.next()) {
		                String columnValue = getDoc2.getString("department_name"); // Replace "column_name" with the actual column name
		                data.add(columnValue);
		            }
		            
		            // Sort the data in the list
		            Collections.sort(data); // Use a suitable sorting method based on your data type
				
						
		            for (String item : data) {
		                System.out.println(item);
		            }
		            
		            
		            
		            
		            
		            
		            
	//**************************************************************************************************************	            
		            
		            
		            
		            String b=data.get(0);
		            

		            System.out.println("777777777777777777777777777");
		            
		            int length = data.size();
		            
		            for (String item : data) {

		            	  
		            	   
		            	   
		            	 if(cnt==0){
		            		 
		            		 
				            	System.out.println(b);
				            	
		            
						
					%>
						
													
		
			
			
						
				
						

						
				
			
		
			
				<div class="col-sm-4">
			
			
			
			
			
			 
	
	
	
			
<br><br>


<a href="Teacher_Subject_Page.jsp?Corse_Name=<%=b%>">
<div class="folder">

</div>

</a>

<h5> ..
<b> Course Name : </b>  <%=b%> </h5>



	</div>		 
	



	
		

<%

	
				            }
		            	 
		            	 
		            	 
		            if(b.equals(item)){

                        cnt=1;

		            }
		            else{      
		                    b=item;       
		               cnt=0;
		            }          
		            
		            
		            }
		            
		            
		            
		            if(cnt==0){
	            		 
	            		 
		            
		            
		            
%>

<div class="contener">
<div class="row">




			<div class="col-sm-4">
<br><br>


<a href="Teacher_Subject_Page.jsp?Corse_Name=<%=b%>">
<div class="folder">

</div>

</a>
<h5 >..
<b>Course Name : </b>  <%=b%> </h5>

</div>


</div>
</div>




<%

System.out.println(b);

		            }
		            
		            cnt=0;

		            
}
catch(Exception e) {
 
}
%>


	</div>		 
			
			
			
			</div>		 
	</div>	



</div>


</div>







</div>















</div>









<jsp:include page="footer.jsp"></jsp:include>

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