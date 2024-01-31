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

#divborder{
 
    box-shadow: 10px 10px 20px 1px gray;
    height:100%;
    width: 30cm;
    margin-left:13%;
       border-radius: 2ch;
}

#textbox{
    position: fixed;
            bottom: 6%; /* Adjust the value as needed */
             border-radius: 2ch; 
width:54%;
 height:1cm;

    margin-left:18%;
      box-shadow: 10px 10px 20px 1px gray;
    
}

#SendBtn{
    border-radius: 2ch;
            background-color:rgb(76, 175, 80);
            border:none;
             color: rgb(255, 255, 255);

    
     position: fixed;
          bottom: 6%; /* Adjust the value as needed */
              
          
          
width:5%;

margin-left:73%;
 height:1.1cm;
  box-shadow: 10px 10px 20px 1px gray;
}

#SendBtn:hover{
    border-radius: 2ch;
            background-color: rgb(255, 255, 255);
            border:none;
             color: red;

    
     position: fixed;
          bottom: 6%; /* Adjust the value as needed */
              
          
              transition-duration: 1s;
          
width:5%;

margin-left:73%;
 height:1.1cm;
  box-shadow: 10px 10px 20px 1px gray;
  
  
}




.scroll {
  
      border-radius: 2ch;
    height:18cm;
    width: 30cm;
  overflow: auto;
  display: flex;
   flex-direction: column-reverse;
   
    box-shadow: 10px 10px 20px 1px gray;
   
    margin-left:13%;
 
}


.msgbox1{
    background-color: rgba(198, 46, 46, 0.758);
       height:2cm;
    width: 5cm;
}



   .message-container {
padding:6%;
            display: flex;
            flex-direction: column;
            max-width: 100%;
            /* Adjust the maximum width as needed */
            margin: 10px;
              
        }

        .sender-message {
            background-color: #4CAF50;
            /* Green background for sender's message */
            color: white;
            border-radius: 10px;
            padding: 10px;
            margin-bottom: 5px;
            align-self: flex-end;
              box-shadow: 10px 10px 20px 1px gray;
        }
        
        .name-sender {
             
            align-self: flex-end;
        }

        .receiver-message {
            background-color: #f1f1f1;
            /* Grey background for receiver's message */
            border-radius: 10px;
            padding: 10px;
            margin-bottom: 5px;
            align-self: flex-start;
              box-shadow: 10px 10px 20px 1px gray;
        }
        
        
        #deletetxt{
        color:red;
        }
        
        
        #delete{

    text-decoration: none;

     
}

        
        #delete:hover{

    text-decoration: none;
transition-duration: 0.5s;
          
    color: red;
}
</style>
</head>
<body>
<jsp:include page="Admin_navbar_after_Login.jsp"></jsp:include>




<form action="Groupchat" method="post">
 <div  class="scroll">
 
 
 <h1></h1> 
 
 
 
     <div class="message-container">
       <%! int  cnt=0; %>
       <%
						ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select * from chat_messages");
       while (rs.next()) {
					%>
					
								
								
								
								
								
			    <%
						 
       if (cnt==0) {
					%>					
					
					<p class="name-sender">  <%=rs.getString("username")%> </p>
        <div class="sender-message"><%=rs.getString("message")%></div>
       
       
         
        <p class="name-sender"> 
        
       
        
        <%=rs.getString("timestamp")%>
        
        
       
        
        
        <a id="delete"
href="DeleteChatAdmin.jsp?cid=<%=rs.getString("cid")%>"
  onclick="return confirm('Are you sure Do you want to delete this chat?');">Delete

</a>


         </p>
        
					
					  <%			
					  cnt=1;
       }else{
									  
								  
					%>					
					
        
					<p >  <%=rs.getString("username")%> </p>
        <div class="receiver-message"><%=rs.getString("message")%></div>
        <p  >   <%=rs.getString("timestamp")%> </p>
        
                
        <a id="delete"
href="DeleteChatAdmin.jsp?cid=<%=rs.getString("cid")%>"
  onclick="return confirm('Are you sure Do you want to delete this chat?');">Delete

</a>
        
        
        				<%
        				cnt=0;
       }
       }
					
					%>
					
      
            <br>     <br>
        <!-- Add more messages with appropriate claasses -->
    </div>
 
 
 </div>
 
 
 
<!--  table>
 <tr>
 <td>
  <input type="text"  placeholder="type..." name="msg" id="textbox" required="">
 </td>
  <td>
  
  
  <button id="SendBtn"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-send-fill" viewBox="0 0 16 16">
  <path d="M15.964.686a.5.5 0 0 0-.65-.65L.767 5.855H.766l-.452.18a.5.5 0 0 0-.082.887l.41.26.001.002 4.995 3.178 3.178 4.995.002.002.26.41a.5.5 0 0 0 .886-.083l6-15Zm-1.833 1.89L6.637 10.07l-.215-.338a.5.5 0 0 0-.154-.154l-.338-.215 7.494-7.494 1.178-.471-.47 1.178Z"/>
</svg></button>
 </td>
 </tr>
 </table>-->








	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>