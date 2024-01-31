<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.util.Arrays"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="BOOTSTRAP_AND_JQUERY\bootstrap-3.4.1-dist\bootstrap-3.4.1-dist\css\bootstrap.min.css">
  <script src="BOOTSTRAP_AND_JQUERY\jquery\dist\jquery.min.js"></script>
  <script src="BOOTSTRAP_AND_JQUERY\bootstrap-3.4.1-dist\bootstrap-3.4.1-dist\js\bootstrap.min.js"></script>

<style type="text/css">

 .grid{

        border:2px solid black;
    }
    #div1{
        background-color:rgb(99, 108, 121);
        height:19cm;
    margin-left:3%;
    
      
   
   box-shadow: 0px 0px 20px 1px gray;
    width:9cm;
    

    border-top-left-radius:4ch;
    border-bottom-left-radius:4ch;
    
    
        }
    #div2{
         background-color:rgb(242, 242, 242);
        height:19cm;
        border-top-right-radius:4ch;
  
    
    border-bottom-right-radius:4ch;

    
   box-shadow: 10px 10px 20px 1px gray;

    }
    .center{
        margin-left:25%;
    }
    .center2{
        margin-left:10%;
    }




  /*  box-shadow: 0px 0px 20px 1px gray;
    */
        #hedfont{
               font-family: Garamond, serif;
              margin-left:5%;
              width:80%;
        }
        .auto-style2 {
            width: 88%;
            margin-left: 61px;
        }
        

        

        .auto-style5 {
            width: 69%;
            margin-left: 15%;
        }

        .registerBtn2{
                           background-color: rgb(255, 142, 3);

            border-radius:2ch;
            border:none;
        }
        .registerBtn2:hover{
                           background-color:red;

        transition-duration:0.2s;
            }
        #table23{
            margin-left:2%;
        }
        .grid1{
            border:none;
        }
        #td12{
            margin-left:-20%;
        }
        .table84{
            margin-left:17%;
        }
        #table85{
            margin-left:30%;
        }
         #table86{
            margin-left:18%;
        }
           #table87{
            margin-left:20ch;
        }
           .bor {
        
            border-radius:50ch;
        
        }

           .registerBtn3{
                          
                background-color: rgb(255, 255, 255);
            border-radius:2ch;
        }
        .registerBtn3:hover{
                            background-color: rgb(255, 142, 3);

        transition-duration:0.2s;
            }

        .marginNN{
            margin-left:3ch;
        }
        
        
        #span22{
             margin-left:5ch;
        }
        
        .name1{
        width:7cm;
        }
        
        h4{
        color:white;
        }
        
        
        #img2{
        margin-left: 3cm
        }
        
        /*  8888888888888888 folder edit 88888888888888888888888*/
      

.folder{
background-image: url(images/down435.png);
    height:4cm;
    width: 100%;
    background-repeat: no-repeat;
    
    background-size: 100%;
    
    color:red;
text-decoration: none;


}





.folder:hover{
background-image: url(images/down435.png);
    height:3.5cm;
    width: 90%;
    background-repeat: no-repeat;
    transition-duration: 1s;
    background-size: 100%;
 color:red;
text-decoration: none;
      
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
     
     
     .h5dynamic{
color: white;
}


.count1{

font-size: 1cm;
}


.count2{

font-size:4.3ch;
}


#table3{
margin-left: 1cm;

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
     
        
         
</style>
</head>
<body>













<jsp:include page="Student_navbar_after_Login.jsp"></jsp:include>


<h4></h4>



 <div>

        <table>
        
        
        
        
        
            <tr>
                <td>  <div  id="div1">

            
            
                     <table >
                     
                     
                     
                     <tr>
                    
                     
                     
                            <td   >
                            <br>
                                <img width="30%" id="img2"alt="" src="images\profile.png">
                            </td>
                          

                        </tr>
                        
                        
                        
               <%!String SUserId; %>         
                        
                        <%
						ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select * from add_student where Sid='"
							+ session.getAttribute("Sid") + "'");
					if (rs.next()) {
						
			
					%>
								<%SUserId=rs.getString("SUserid");%>
                        
                        <tr>
                            <td >
                                   <h4 align="center">
                                       User Id  :

                                        
                                       
                                      <%=rs.getString("SUserid")%> 
                                     
                                     </h4> 
                                       
                                   <hr>
                            </td>
                          

                        </tr>
                        
                        
                        
                        
                        
                        
                        
                         <tr>
                            <td >
                                   <h4 align="center">
                                       Student Name : 

                                       <br>
                                       
                                         
                                       
                                      <%=rs.getString("Sname")%> 
                                     
                                     </h4> 
                                     <hr>
                                      
                                   
                            </td>
                          

                        </tr>
                        
                        
                        
                        
                        
                        
                        
                        
                        <tr>
                            <td width="50%";>
                                   <h4 align="center"> 
                                       Address : 

                                      <br>
                                      <%=rs.getString("SAddress")%> 
                                   
                                    
                                     </h4> 
                                     <hr>
                                       
                                   
                            </td>
                          

                        </tr>
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        <tr>
                            <td >
                                   <h4 align="center"> 
                                      Mail : 


<br>
                                       
                                      
                                      <%=rs.getString("SMail")%> 
       </h4>                             
                     
                     <hr>             
                                   
                                                                            
                                   
                            </td>
                          

                        </tr>
                        
                        
                        
                        
                        <tr>
                            <td width="50%";>
                                   <h4 align="center"> 
                                       Number : 
 
                                   
 <br>
                                     <%=rs.getString("SNumber")%> 
                                   
                                     </h4> 
                                  <hr>
                            </td>
                          

                        </tr>
                        
                        
                        
                        
                        <tr>
                            <td width="50%">
                                   <h4 align="center">
                                       Department Name : 

 <br>
                                     <%=rs.getString("SDeprtmentName")%> 
                                   
                                    
                                     </h4> 
                                  <hr>
                            </td>
                          

                        </tr>
                        
                        
                        
                        
                        
                        
                        <tr>
                            <td width="50%";>
                                   <h4 align="center"> 
                                       DOB : 

 <br>
                                     <%=rs.getString("SDOB")%> 
                                   
                                                                       
                                     </h4> 
                                       
                                
                            </td>
                          

                        </tr>
                        
                        
                        
                        
					<%
						}
					else{
						System.out.println("data not found in my sql");
					}
					
					%>
				
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    </table>
            
            
            
            
                        </div>

                </td>
                
                
                <td width="100%" >

     <div class="container" >
                <div class="row">


                       <div class="col-md-12"  id="div2">
                <!-- box start ******************************************************************-->
                
                
                <br>
                
<div class="contener" >
<div class="row" >

<%--*********************first div of color***************** --%>
<div class="col-sm-4"  >


<a href="Student_All_Document1.jsp" > 
<div id="green" >


<table id="table3"> 
<tr>
<td>
<br>
<%! int  document_count=0; %>


					<%
						ResultSet rsa = DatabaseConnection.getResultFromSqlQuery("select * from documents ");
					while (rsa.next()) {
						document_count++;
						
						
					}
					
					
					%>
					
<p class="count1"><%=document_count%></p>

<%document_count=0; %>

<p >Total Document  available</p>
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
<p class="ptag1">View all document</p>
<td>
</tr>
</table>






</div>

</a>


</div>


<%--*********************first div of color end***************** --%>





<%--*********************second div of color***************** --%>
<div class="col-sm-4">



<a href=""  data-toggle="modal" data-target="#exampleModal"> 
<div id="orange">


<table id="table3"> 
<tr>
<td>
<br>
<p class="count1"><%=SUserId %></p>
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
        
        <form action="Update_Student_profile" method="post" >
         
    <%
						ResultSet rs2 = DatabaseConnection.getResultFromSqlQuery("select * from add_student where Sid='"
							+ session.getAttribute("Sid") + "'");
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
    <input type="text" required class="form-control" id="Name_update" name="Name_update"  placeholder="Name " value="<%=rs.getString("Sname")%>">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  
  
  
  <div class="form-group">
    <label for="Department_Name_update">Address :</label>
    <input type="text" required class="form-control" id="Department_Name_update" name="Address_update"  placeholder="Department Name" value="<%=rs.getString("SAddress")%>">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  
  
  
  
  <div class="form-group">
    <label for="Department_Name_update">Mail :</label>
    <input type="email" required class="form-control" id="Mail_update" name="Mail_update"  placeholder="Mail." value="<%=rs.getString("SMail")%>">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  
  
  
   <div class="form-group">
    <label for="Department_name_update"> Department Name :</label>
    <input type="text" required class="form-control" id=Department_name_update" name="Department_name_update"  placeholder="Department Name." value="<%=rs.getString("SDeprtmentName")%>">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  
  
  
  
    
  
  <div class="form-group">
    <label for="Number_update"> Number :</label>
    <input type="text" required class="form-control" id=Number_update" name="Number_update"  placeholder="Department Name." value="<%=rs.getString("SNumber")%>">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  
  
    
  
  
  
  <div class="form-group">
    <label for="DOB_update"> Date Of Birth : </label>
    <input type="date" required class="form-control" id="DOB_update" name="DOB_update"  placeholder="Department Number. " value="<%=rs.getString("SDOB")%>">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  
  
  <div class="form-group">
    <label for="Institute_name_update"> Institute Name : </label>
    <input type="text" required class="form-control" id="Institute_name_update" name="Institute_name_update"  placeholder="Institute Name. " value="<%=rs.getString("Sinstitute_name")%>">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  
  
  
   <div class="form-group">
    <label for="student_id_update"> StudentId : </label>
    <input type="text" required class="form-control" id="student_id_update" name="student_id_update"  placeholder="Student Id. " value="<%=rs.getString("StudentId")%>">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  
  
    <div class="form-group">
    <label for="User_id_update"> User Id : </label>
    <input type="text" required class="form-control" id="User_id_update" name="User_id_update"  placeholder="User Id. " value="<%=rs.getString("SUserid")%>">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  
  
  
  
    <div class="form-group">
    <label for="pass_update"> Password : </label>
    <input type="password" required class="form-control" id="pass_update" name="pass_update"  placeholder="password. " value="<%=rs.getString("SPassword")%>">
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














<%--*********************second div of color end ***************** --%>









 


<%--*********************therd div of color***************** --%>
<div class="col-sm-4">

<a href="Groupchat.jsp"> 
<div id="blue">


<table id="table3"> 
<tr>
<td>
<br>
<p class="count2">
Group Chat
</p>
<p >interact with  others</p>
<td>

<td>
<br>
<svg class="icon1" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chat-left-text-fill" viewBox="0 0 16 16">
  <path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H4.414a1 1 0 0 0-.707.293L.854 15.146A.5.5 0 0 1 0 14.793V2zm3.5 1a.5.5 0 0 0 0 1h9a.5.5 0 0 0 0-1h-9zm0 2.5a.5.5 0 0 0 0 1h9a.5.5 0 0 0 0-1h-9zm0 2.5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5z"/>
</svg>

 
<td>


</tr>

<tr>
<td>
<p class="ptag1"> Send a new message</p>
<td>
</tr>
</table>






</div>

</a>

</div>




<%--*********************therd div of color end***************** --%>








</div>
        
</div>
                
                
                
                <!-- box end ******************************************************************-->
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          <h2 align="center">
                       recommended content for you.
                          </h2>
                  




<!-- start ******************************************************************-->


<%! String a="a"; %>
<%!  String b[]=new String[500];   %>
<%! int  i=0; %>
<%! int  cnt=0; %>
<%! LinkedList<String> stringList = new LinkedList<>(); %>


<%




ResultSet getDoc2 = DatabaseConnection.getResultFromSqlQuery(
		"SELECT * FROM documents WHERE department_name_no_year = '" + session.getAttribute("Sdep") + "'");
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
						
													
		
			
			
						
				
						
						
						
				
			
			
			<div class="col-sm-2">


<a id="Atagedit" href="Student_Subject_page.jsp?Corse_Name=<%=b%>">
<div class="folder">

</div>
<h5 align="center">
<b>Department and year: </b>  <%=b%> </h5>

</div>
</a>

			 
		




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




			<div class="col-sm-2">
 

<a id="Atagedit" href="Student_Subject_page.jsp?Corse_Name=<%=b%>">

<div class="folder">

</div>
<h5 align="center">
<b>Department and year  : </b>  <%=b%> </h5>

</div>
</a>




<%

System.out.println(b);

		            }
		            
		            cnt=0;

%>

<!-- end************************************************************ -->

                                            





                        </div>

                        </div>
                        </div>


                </td>

            </tr>
        </table>
                  

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