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
a{
color:white;
text-decoration: none;
}
 body {
color:white;
            margin: 0px;
            padding: 0px;


background-image: url(images/img_best_coffee_app.png);

    width: 100%;
    background-size: 79%;

        }
        

#fixed{
position: fixed;

}

.folder{
background-image: url(images/down4.png);
    height:4.5cm;
    width: 100%;
    background-repeat: no-repeat;
    
    background-size: 90%;
}





.folder:hover{
background-image: url(images/down4.png);
    height:4.5cm;
    width: 90%;
    background-repeat: no-repeat;
    transition-duration: 1s;
    background-size: 100%;
      
}


#edit_AND_delete{
margin-left: 30%;
}


#padding3{
padding: 2cm;
}



#backBTN:hover{
width:1.8cm;
height: 1.8cm;
    transition-duration: 1s;
        

 color: rgb(255, 86, 117);
}


#backBTN{
width:2cm;
height: 2cm;
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
width: 2cm;
}


.span2{
width: 79%;
}



</style>
</head>
<body>


<jsp:include page="Admin_navbar_after_Login.jsp"></jsp:include>





<h1 align="center">

Subject Name :
<%=request.getParameter("Subject_Name")%>  

</h1>








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

<a href="Admin_All_Document2.jsp?Corse_Name=<%=request.getParameter("Corse_Name")%>">

<svg id="backBTN" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-rewind-btn" viewBox="0 0 16 16">
  <path d="M7.21 5.093A.5.5 0 0 1 8 5.5v1.886l3.21-2.293A.5.5 0 0 1 12 5.5v5a.5.5 0 0 1-.79.407L8 8.614V10.5a.5.5 0 0 1-.79.407l-3.5-2.5a.5.5 0 0 1 0-.814l3.5-2.5Z"/>
  <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4Zm15 0a1 1 0 0 0-1-1H2a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4Z"/>
</svg>
 <p align="center"> Go back</p>
 
 
 
</td>
</a>
</tr>

</table>







<div id="padding3">


<div class="contener" >





<div class="row">



<%! String a="a"; %>
<%!  String b[]=new String[500];   %>
<%! int  i=0; %>
<%! int  cnt=0; %>
<%! LinkedList<String> stringList = new LinkedList<>(); %>


<%




ResultSet getDoc3 = DatabaseConnection.getResultFromSqlQuery(
	    "SELECT * FROM documents WHERE  department_name='" + request.getParameter("Corse_Name")+   "' and subject_name='" + request.getParameter("Subject_Name")+  "'");
				
				

while (getDoc3.next()) {
		            
		            
		            
		            
						
					%>
						
													
		
			
			
						
				
						
						
						
				
			
			
			<div class="col-sm-2">


<h5 align="center">
<b>Document  Title : </b>  <%=getDoc3.getString("title_of_document")%>
 </h5>
  <a href="DownloadServlet?fileId=<%=getDoc3.getString("Did")%>">

<div class="folder">

</div>
<h5 align="center">
  <%=getDoc3.getString("file_name")%>
 
 </h5>


<div id="edit_AND_delete">


<button type="button" class="btn btn-primary"  >
  Download
</button>
</a>


</div>



									
</div>





 







<%
     }
		            	            
%>







</div>







</div>
</div>



<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>