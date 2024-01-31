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




<style type="text/css">
 body {

            margin: 0px;
            padding: 0px;


        }

#Nnavbar1{
    height: 5%;
    width: 100%;
    background-color:rgba(37,43,51,255);

}

#NLogout{
height: 5.5ch;
    width: 15ch;
    background-color:rgba(243,0,103,255);
    


}

#Nspan{
width:4ch;
}

.NsigninLink{
color: rgb(255, 255, 255);
    font-size: 2.5ch;
    text-decoration: none;
    background-color:rgba(243,0,103,255);
     border: none; 
         
        

}
#Nmanicon{
color: rgb(255, 255, 255);
    width:5ch;
    height:3ch;
    
    margin-top:1ch;
         


}

.Nspan2{
width:0.5cm;

}
.Nspan3{
width:9%;

}

.Nicon2{

color: rgb(255, 255, 255);
}

.Ncoler_white{

color: rgb(255, 255, 255);
}



#NtdSIom{
    
    
        border-width:0.3ch ;
      

border-style:solid;

border-color: black;

width:4cm;


}

#NSiomName1{

    font-size: 0.6cm;
    
    margin-left:0.5ch;
coler:white;
margin-left:2.5ch;
}


#NeducationTxt{

background-color:rgba(243,0,103,255);
    
    border-top-radius:none ;
   
    border-bottom-right-radius: 2ch;
    
    


}



.Nspan4{

width:35%;

}

.Nspan5{

width:5%;

}


.NnavLink{

color:red;
  text-decoration: none;
    font-size: 2ch;
                          
                

}

.NnavLink:hover{

color:red;
  text-decoration: none;
    font-size: 2ch;
               transition-duration:1s ;         
                

}

.NnavLink1{

color:white;
  text-decoration: none;
    font-size: 2ch;
                      
                

}

.NnavLink1:hover{

color:red;
  text-decoration: none;
    font-size: 2ch;
                transition-duration:1s ;
    
                      
                

}


.Nspan6{

width:1.5ch;
}
</style>
</head>
<body>





<%--  navbar start --%>

<div id="Nnavbar1">

<table>
<tr>
<td id="Nspan">


<td/>
<td>
<div id="NLogout">

<table>
<tr>
<td>
<svg id="Nmanicon" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
  <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z"/>
</svg>
<td/>


<td >
<h4></h4>



<form action="Teacher_LogOut" method="post">
<input type="submit"  class="NsigninLink" value="Logout"  id="dropdownMenuButton">
</form>

  
  
  



<td/>






<tr/>
</table>


</div>



<td/>



<td class="Nspan2">


<td/>

<td >
<svg class="Nicon2"xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
  <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/>
</svg>
<td/>



<td class="Nspan2">
<td/>

<td>
<svg class="Nicon2"xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-instagram" viewBox="0 0 16 16">
  <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z"/>
</svg>

<td/>




<td class="Nspan2">
<td/>



<td>
<svg class="Nicon2"xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-twitter" viewBox="0 0 16 16">
  <path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"/>
</svg>
<td/>




<td class="Nspan2">
<td/>



<td>
<svg class="Nicon2"xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-linkedin" viewBox="0 0 16 16">
  <path d="M0 1.146C0 .513.526 0 1.175 0h13.65C15.474 0 16 .513 16 1.146v13.708c0 .633-.526 1.146-1.175 1.146H1.175C.526 16 0 15.487 0 14.854V1.146zm4.943 12.248V6.169H2.542v7.225h2.401zm-1.2-8.212c.837 0 1.358-.554 1.358-1.248-.015-.709-.52-1.248-1.342-1.248-.822 0-1.359.54-1.359 1.248 0 .694.521 1.248 1.327 1.248h.016zm4.908 8.212V9.359c0-.216.016-.432.08-.586.173-.431.568-.878 1.232-.878.869 0 1.216.662 1.216 1.634v3.865h2.401V9.25c0-2.22-1.184-3.252-2.764-3.252-1.274 0-1.845.7-2.165 1.193v.025h-.016a5.54 5.54 0 0 1 .016-.025V6.169h-2.4c.03.678 0 7.225 0 7.225h2.4z"/>
</svg>
<td/>




<td class="Nspan3">

<td >

<a href="Teacher_Home.jsp" class="NnavLink">
<b>Home</b>

</a>
<td/>



<td class="Nspan5">

<td/>



<td >
<a href="" class="NnavLink1">
<b>
Teacher :
</b>
</a>
<td/>



<td class="Nspan6">

<td/>



<td >
<a href="" class="NnavLink1">

<%
						ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select * from add_teacher where Tid='"
							+ session.getAttribute("id") + "'");
					if (rs.next()) {
					%>
					
					<b>
						<%=rs.getString("Tname")%>
					
					</b>
			
					<%
						}
					%>
	
</a>
<td/>


<td class="Nspan5">

<td/>



<td >
<a href="AddNewDoc.jsp" class="NnavLink1">
<b>
Upload Document
</b>
</a>
<td/>



<td/>


<td class="Nspan3">

<td >

<td>


<table>
<tr>
<td>

<svg class="Nicon2"xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone-plus-fill" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511zM12.5 1a.5.5 0 0 1 .5.5V3h1.5a.5.5 0 0 1 0 1H13v1.5a.5.5 0 0 1-1 0V4h-1.5a.5.5 0 0 1 0-1H12V1.5a.5.5 0 0 1 .5-.5z"/>
</svg>
<td/>

<td>

<a  href=""class="Ncoler_white">

142 5897555
<a/>
<td/>


<tr/>

</table>






<td/>









<td class="Nspan2">
<td/>



<td>

<svg class="Nicon2"xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope-at-fill" viewBox="0 0 16 16">
  <path d="M2 2A2 2 0 0 0 .05 3.555L8 8.414l7.95-4.859A2 2 0 0 0 14 2H2Zm-2 9.8V4.698l5.803 3.546L0 11.801Zm6.761-2.97-6.57 4.026A2 2 0 0 0 2 14h6.256A4.493 4.493 0 0 1 8 12.5a4.49 4.49 0 0 1 1.606-3.446l-.367-.225L8 9.586l-1.239-.757ZM16 9.671V4.697l-5.803 3.546.338.208A4.482 4.482 0 0 1 12.5 8c1.414 0 2.675.652 3.5 1.671Z"/>
  <path d="M15.834 12.244c0 1.168-.577 2.025-1.587 2.025-.503 0-1.002-.228-1.12-.648h-.043c-.118.416-.543.643-1.015.643-.77 0-1.259-.542-1.259-1.434v-.529c0-.844.481-1.4 1.26-1.4.585 0 .87.333.953.63h.03v-.568h.905v2.19c0 .272.18.42.411.42.315 0 .639-.415.639-1.39v-.118c0-1.277-.95-2.326-2.484-2.326h-.04c-1.582 0-2.64 1.067-2.64 2.724v.157c0 1.867 1.237 2.654 2.57 2.654h.045c.507 0 .935-.07 1.18-.18v.731c-.219.1-.643.175-1.237.175h-.044C10.438 16 9 14.82 9 12.646v-.214C9 10.36 10.421 9 12.485 9h.035c2.12 0 3.314 1.43 3.314 3.034v.21Zm-4.04.21v.227c0 .586.227.8.581.8.31 0 .564-.17.564-.743v-.367c0-.516-.275-.708-.572-.708-.346 0-.573.245-.573.791Z"/>
</svg>

<a  href=""class="Ncoler_white">

Need help? Contact Us
<a/>
<td/>







<tr/></table>

</div>



<%--  navbar ends --%>




</body>
</html>