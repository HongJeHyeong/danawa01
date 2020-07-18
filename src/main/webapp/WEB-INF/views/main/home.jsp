<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"  %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>다너놔 | 컴퓨터 조립은 역시!</title>
  <!-- CDN - W3CSS -->
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <!-- CDN - sw_topNav.css -->
  <link rel="stylesheet" href="https://storage.googleapis.com/sw-css/css/sw-1.0.0.css">
  <!-- CDN - Font Awesome 4 -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <!-- CDN - Google Icons -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

</head>

<body>




  <!-- responsive template by SW ----------------------------------------------------------- -->
  <!-- Need   W3CSS  +  FONT AS4  +  sw+topnav offline ------------------------------------- -->
  <div class="sw-topnav-margin">
    &nbsp;
  </div>

  <!-- CONTENT ------------------------------------------------------------------------------------ -->
  <div class="sw-center">

    <!-- 가로복 제한 400~1200 ---------------------------------------------------------------------------------->
    <div class="sw-container-400">
      <div class="w3-container">
        <!-- 3 main content start here!!!----------------------------------------------------------- -->
        <!-- 2 main content start here!!!----------------------------------------------------------- -->
        <!-- 1 main content start here!!!----------------------------------------------------------- -->

        까꿍


        <!-- main content end----------------------------------------------------------------------- -->
      </div>
    </div>
  </div>

  <!-- HEAD ------------------------------------------------------------------------------------ -->
  <!-- head가 맨 나중?나중에 나온 요소가 레이어 맨위로... ---------------------------------------->
  <header class="topnav w3-card" id="topNav">
    <a href="AAAAAA" class="active">AAAAAA</a>
    <a href="BBBBBB">BBBBBB</a>
    <a href="CCCCCC">CCCCCC</a>
    <a href="DDDDDD">DDDDDD</a>
    <a href="EEEEEE">EEEEEE</a>
    <a href="javascript:void(0);" class="icon" onclick="responsiveMenuPopUp()">
      <i class="fa fa-bars"></i>
    </a>
  </header>

  <script>
    /* Toggle between adding and removing the "responsive" class to topnav when the user clicks on the icon */
    function responsiveMenuPopUp() {
      var x = document.getElementById("topNav");
      if (x.className === "topnav") {
        x.className += " responsive";
      } else {
        x.className = "topnav";
      }
    }

    window.onresize = function () {
      var x = document.getElementById("topNav");
      x.className = "topnav w3-card4";
    }
  </script>




</body>

</html>