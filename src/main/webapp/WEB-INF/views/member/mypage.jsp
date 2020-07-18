<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
	<title>MyPageClient.jsp</title>


	<!-- CDN - Google Icons -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<!-- CDN - Font Awesome 4 -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- CDN - W3CSS -->
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<!-- CDN - sw-1.0.0.css -->
	<link rel="stylesheet" href="https://storage.googleapis.com/sw-css/css/sw-1.0.0.css">

	<!-- CDN - jquery 3.4.1 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<!-- CDN - bootstrap 3.4.1 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/member.js"></script>
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">


<script>
	$(document).ready(function(){
	$(".user").on("click",function(){
    console.log($(this).text());
    w3_close();
	});
})
function checked() {
    if($("#member_grade").val()==2){
        $("#member_grade").prop("checked",true);
    }
}
</script>


</head>

<body onload=checked()>

	<!-- responsive template by SW ----------------------------------------------------------- -->
	<!-- Need   W3CSS  +  FONT AS4  +  sw+topnav offline ------------------------------------- -->
	<div class="sw-topnav-margin">&nbsp;</div>

	<!-- CONTENT ------------------------------------------------------------------------------------ -->
	<div class="sw-center" style="margin-top: 2%">


		<!-- 가로복 제한 400~1200 ---------------------------------------------------------------------------------->
		<!-- 400~1200 사이로 조절 가능 ---------------------------------------------------------------------------------->
		<div class="sw-container-500">
			<div class="w3-container">
				<!--  main content start here!!!----------------------------------------------------------- -->

				<!--사용자 마이 페이지-->
				<form method="post" action="${ctxpath}/memberClient/UpdateClientForm.do" name="myPageForm">
					<!-- Sidebar -->
				 	<div class="w3-sidebar w3-bar-block w3-border-right" style="display:none;height: 85%;" id="mySidebar">
						<button type="button" onclick="w3_close()" class="w3-bar-item w3-large">Close &times;</button>
						<input class="w3-input w3-border w3-padding" type="text" placeholder="Search for names.." id="myInput" onkeyup="myFunction()">
						<ul class="w3-ul w3-margin-top" id="myUL" >
						  <li class="user">Adele</li>
						  <li class="user">Agnes</li>
						  <li class="user">Billy</li>
						 
						</ul>
					</div> 
					<div class="w3-container w3-card">
						<button type="button" class="w3-button w3-xlarge fa fa-male" onclick="w3_open()"></button>
						<!-- Page Content -->
						<div class="w3-section w3-center">

							<h2>회원 정보</h2>
						</div>
						<p>
							<label><b>이름</b></label>
							<div class="w3-input w3-border" readonly>${dto.name }</div>
						</p>

						<p>
							<label><b>아이디</b></label>
							<div class="w3-input w3-border" readonly>${dto.id }</div>
						</p>
					
						<p>
							<label><b>E-Mail</b></label>
							<input type="text" class="w3-input w3-border" readonly value="${dto.email }">
						</p>

						<p>
							<label><b>전화번호</b></label>
							<input type="text" class="w3-input w3-border" readonly name="tel" id="tel"
								value="${dto.tel }">
						</p>

						<p>
							<label><b>주소</b></label>
							<input type="text" class="w3-input w3-border" readonly value="${dto.addr }">

							<label><b>상세주소</b></label>
							<input type="text" class="w3-input w3-border" readonly value="${dto.addr2 }">
						</p>

						<p>
							<label><b>가입일</b></label>
							<input type="text" class="w3-input w3-border" readonly value="${dto.regDate }">
						</p>
						<label><b>등급</b></label><br>
						<span>일반</span>
						<label class="switch">
						 	<input type="checkbox" id="member_grade" name="member_grade" value="2">
							 <span class="slider round"></span>
						  </label>
						  <span>스텝</span>
						  
						<div class="w3-row-padding w3-section">
							<div class="w3-col s6">
								<input class="w3-button w3-baemint w3-block" type="submit" value="정보수정">
							</div>

							<div class="w3-col s6">
								<input class="w3-button w3-baemint w3-block" type="button" value="로그아웃"
									onClick="location='../PreMember/logout'">
							</div>
						</div>
					</div>


				</form>
				<!-- main content end----------------------------------------------------------------------- -->
			</div>
		</div>
	</div>
	<!-- main content end----------------------------------------------------------------------- -->

<!--sideBar-->
	<script>
		function w3_open() {
			document.getElementById("mySidebar").style.display = "block";
		}

		function w3_close() {
			document.getElementById("mySidebar").style.display = "none";
		}
	</script>
<!--Filter-->
<script>
	function myFunction() {
	  var input, filter, ul, li, a, i;
	  input = document.getElementById("myInput");
	  filter = input.value.toUpperCase();
	  ul = document.getElementById("myUL");
	  li = ul.getElementsByTagName("li");
	  for (i = 0; i < li.length; i++) {
		txtValue = li[i].textContent || li[i].innerText;
		if (txtValue.toUpperCase().indexOf(filter) > -1) {
		  li[i].style.display = "";
		} else {
		  li[i].style.display = "none";
		}
	  }
	}
	</script>


	<!-- responsive template by SW ----------------------------------------------------------- -->
	<!-- Need   W3CSS  +  FONT AS4  +  sw+topnav offline ------------------------------------- -->
	<div class="sw-topnav-margin">&nbsp;</div>
	<div class="sw-topnav-margin">&nbsp;</div>


</body>
</html>