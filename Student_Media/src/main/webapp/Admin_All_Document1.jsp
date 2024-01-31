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
        
        
     
     
     
     </style>
</head>
<body>
    
    
<jsp:include page="Admin_navbar_after_Login.jsp"></jsp:include>



<br>
	
			<div class="container">
			<div class="row">
			

<!-- start ******************************************************************-->


<%! String a="a"; %>
<%!  String b[]=new String[500];   %>
<%! int  i=0; %>
<%! int  cnt=0; %>
<%! LinkedList<String> stringList = new LinkedList<>(); %>


<%




ResultSet getDoc2 = DatabaseConnection.getResultFromSqlQuery(
		"SELECT * FROM documents ");
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


<a id="Atagedit" href="Admin_All_Document2.jsp?Corse_Name=<%=b%>">
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
 

<a id="Atagedit" href="Admin_All_Document2.jsp?Corse_Name=<%=b%>">

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

             
</div></div>
   
<br><br><br><br><br><br><br><br><br><br><br><br><br><br> <br> <br> <br> <br> <br> 
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