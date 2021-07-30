<%-- 
    Document   : frames.jsp
    Created on : 22 Jul, 2021, 7:20:44 PM
    Author     : iamsm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>GymKhana/Profile</title>
    <style>

      .my-header h1 { 
        display: inline;
      }
      .my-header span { 
        float: right;
      }

      .header {
        background-color: #f1f1f1;
        padding-left: 45%;
        position: fixed;
        width: 70%;
      }

      .header a {
        float: left;
        color: black;
        text-align: center;
        padding: 12px;
        text-decoration: none;
        font-size: 18px; 
        line-height: 25px;
        border-radius: 4px;
      }

      .header a:hover {
        background-color: #f78359c7;
        color: black;
      } 

       .header-right a.active {
        background-color: #f78359c7;
        color: white;
      }

       .header-right a:hover:not(.active) {
        background-color: #f78359c7;
        color: white;
      } 
      
      #imageUpload
{
    display: none;
}


#profile-container {
    width: 50px;
    height: 50px;
   /* overflow: hidden; */
    float: right;
    -webkit-border-radius: 50%;
    -moz-border-radius: 50%;
    -ms-border-radius: 50%;
    -o-border-radius: 50%;
    border-radius: 50%;
    margin-right: 20px;
}

#profile-container img  {
    width: 50px;
    height: 50px;
}
#profile-container button  {
    width: 50px;
    height: 50px;
}   
.tooltip {
  position:relative;
  display: inline-block;
}


.tooltip .tooltiptext {
  visibility: hidden;
  width: 120px;
  background-color: black;
  color: #fff;
  text-align: center;
  padding: 5px ;
  border-radius: 6px;

  z-index: 1;
  top: -5px;
  right: 105%;
}


.tooltip:hover .tooltiptext {
  visibility: visible;
}
/* Dropdown Button */
.dropbtn {
  transform: translate(14%,-100%);
  background-color: transparent;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}


/* The container <div> - needed to position the dropdown content */
.dropdown {
  position: relative;
  display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
  display: block;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 80px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
  
}

.profileImage{
  transform: translate(-30%,-30%);
}

/* Links inside the dropdown */
.dropdown-content a {
  color: black;
  padding: 5px 6px;
  text-decoration: none;
  display: block;
  transform: translateX(-20%);
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #ddd}

/* Show the dropdown menu (use JS to add this class to the .dropdown-content container when the user clicks on the dropdown button) */
.show {display:block;}
   </style>
     <script src = "scripts/userpg.js">
 /*    $("#profileImage").click(function(e) {
    $("#imageUpload").click();
    });

      function fasterPreview( uploader ) {
      if ( uploader.files && uploader.files[0] ){
          $('#profileImage').attr('src', 
             window.URL.createObjectURL(uploader.files[0]) );
      }
      }

       $("#imageUpload").change(function(){
        fasterPreview( this );
      });
     
  */
   </script>

  </head>
  <body>
      <% 
           //To prevent caching secure webpages
            response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); //HTTP 1.1
            response.setHeader("pragma", "no-cache");  // for HTTP 1.0
            response.setHeader("Expires","0");    //for proxy servers
          //To make it a secure webpage
            if(session.getAttribute("email") == null)
            {
                response.sendRedirect("login.html");
            }
        %>
    <div class="my-header">
      <img src="images/logo.png" width="50" height="50" style="border-radius: 50%;"> <h1>Profile</h1>
     
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <div id="profile-container">
        <!--  <div class="tooltip"> -->
        <div class="dropdown">
            <!-- <img id="profileImage" src="images/avatar.png"> -->
        <button onclick="profMenu()" class="dropbtn"> <img id="profileImage" src="images/avatar.png"></button>
        <!--  <span class="tooltiptext">Click to change profile pic<img id="profileImage" src="images/avatar.png"le photo</span> -->
         
        <div id="myDropdown" class="dropdown-content">
            <form action = "logout" method = "GET">    
         <a href="#" onclick = "this.parentNode.submit()">Logout</a>
             </form>
         </div>
         
        </div>
     </div>
   <!--   <input id="imageUpload" type="file" name="profile_photo" placeholder="Photo" required="" capture> -->

    </div>

  <hr width= 100% color="#1E90FF">

  <div class="header">
    <div class="header-right">
      <a href="partners.jsp" target="mainlink">Partners</a>
      <a class="act" href="activities.jsp" target="mainlink">Activities</a>
    </div>
  </div>


   <iframe src="partners.jsp" width="100%" height="640px" name="mainlink"></iframe>

 
  </body>
</html>
