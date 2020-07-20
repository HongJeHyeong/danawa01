<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>조립쟁이마을</title>

	<!-- CDN - W3CSS -->
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<!-- CDN - sw-1.0.0.css -->
	<link rel="stylesheet" href="https://storage.googleapis.com/sw-css/css/sw-1.0.0.css">
	
	<style>
		* {
			font-family: baemin_font;
			font-size: 105%;
		}


		body {
			text-align: center;
		}

		h1 {
			transition: 1s;
			color: #f1f1f1;
		}

		button {
			font-weight: 500;
		}

		/* Style the tab */
		.tab {
			overflow: hidden;
			border: 1px solid #ccc;
			background-color: #f1f1f1;
			display: grid;
			grid-template-columns: 1fr 1fr;
		}

		.grid {
			display: grid;
			grid-template-columns: 1fr 1fr;
		}

		/* Style the buttons inside the tab */
		.tab button {
			background-color: #555;
			float: left;
			border: none;
			outline: none;
			cursor: pointer;
			padding: 14px 16px;
			transition: 0.3s;
			font-size: 17px;
			color: #f1f1f1;
		}

		/* Style the tab content */
		.tabcontent {
			display: none;
			padding: 6px 12px;
		}
	</style>
</head>

<body style="background-color: black;">
	<!-- CONTENT ------------------------------------------------------------------------------------ -->
	<div class="sw-center">
		<!-- 가로복 제한 400~1200 ---------------------------------------------------------------------------------->
		<div class="sw-container-400">
			<!-- <div class="w3-section w3-container w3-card-4 w3-baemint" style="background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQuwM6HOpM_SmFf1y52bSm_VXzIhtEer95DkQ&usqp=CAU'); background-repeat: no-repeat; background-size: cover;z-index:1;"> -->
			<div class="w3-section w3-container w3-card-4">
				<!-- 1 main content start here!!!----------------------------------------------------------- -->

				<h1 class="w3-section" style="color:cyan">조립쟁이마을</h1>

			
				<div style="color:white">
					<form action="./PreMember/loginProc" method="POST" name="loginForm">
						<!-- ------------------------------------------------------------- -->
						<label class="w3-left w3-section">아이디</label>
						<!-- ------------------------------------------------------------- -->
						<input type="text" class="w3-input" name="member_id" id="member_id"  required/>
						<!-- ------------------------------------------------------------- -->
						<label class="w3-left w3-section">비밀번호</label>
						<!-- ------------------------------------------------------------- -->
						<input type="password" class="w3-input" style="font-family: Arial, Helvetica, sans-serif;" required name="member_pw" id="member_pw" />
						<!-- ------------------------------------------------------------- -->

						<div class="grid w3-section">
							<button class="w3-button  w3-border" type="submit" style="color:#45c1bf">
								로그인</button>
							<button class="w3-button  w3-border" type="button" style="color:#45c1bf"
								onClick="location.href='./PreMember/join'">
								회원가입</button>
						</div>
					</form>
				</div>


				<!-- main content end----------------------------------------------------------------------- -->
			</div>
		</div>
	</div>
</body>
</html>