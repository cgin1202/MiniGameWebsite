<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
    	<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/hanna.css">
		<title>미니 게임 천국</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<style>
		*:lang(en) { 
			font-family: Courier New, Courier, monospace; 
		}
		*:lang(ko) {
			font-family: 'Hanna', serif; 
		}
		.en {
			font-family: Courier New, Courier, monospace;
		}
		.ko {
			font-family: 'Hanna', serif;
		}
		</style>
	</head>
	<body lang="ko" class="ko">
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<div class="inner">

							<!-- Logo -->
								<a class="logo">
									<span class="symbol"><img src="images/game.png" alt="game_image" /></span>
									<span class="title">미니 게임 천국</span>
								</a>

							<!-- Nav -->
								<nav>
									<ul>
										<li><a href="#menu">Menu</a></li>
									</ul>
								</nav>

						</div>
					</header>

				<!-- Menu -->
					<nav id="menu">
						<h2>Menu</h2>
						<ul>
							<li><a href="javascript:alert('회원/게스트 로그인 후 이용 가능합니다.')">홈</a></li>
							<li><a href="javascript:alert('회원/게스트 로그인 후 이용 가능합니다.')">공략 게시판</a></li>
							<li><a href="javascript:alert('회원/게스트 로그인 후 이용 가능합니다.')">요청 게시판</a></li>
							<li><a href="javascript:alert('회원/게스트 로그인 후 이용 가능합니다.')">익명 게시판</a></li>
							<li><a href="javascript:alert('회원/게스트 로그인 후 이용 가능합니다.')">마이 페이지</a></li>
							<li><a href="javascript:alert('회원/게스트 로그인 후 이용 가능합니다.')">로그아웃</a></li>
						</ul>
					</nav>
					
				<!-- Main -->	
					<div>
					<center>
						<br><p style="font-size:40px;">프로그램 설명</p>
						<table width="60%">
							<tr>
								<td>
									&lt;회원으로 이용하는 경우&gt;<br>
									1. 회원가입 버튼을 누른 뒤 이동한 회원가입 홈페이지에서 정보를 입력 한 뒤 회원가입을 한다.<br>
									2. 회원가입한 ID, PASSWORD를 입력하여 회원 로그인한다.<br>
									3. 회원은 모든 메뉴에 접근이 가능하며 공략 게시판에는 평균점수가 일정 기준을 넘어야 작성이 가능하다.<br>
									4. 이동한 메인 페이지에서 플레이할 게임을 선택하여 플레이한다.<br>
									5. 공략 게시판에는 게임에 대한 공략을 작성할 수 있다.<br>
									6. 요청 게시판에는 원하는 게임에 대한 요청을 할 수 있다.<br>
									7. 익명 게시판에는 자유로운 글쓰기가 가능하다.<br>
									8. 마이 페이지에서 게임별 점수 확인이 가능하다.<br>
									<br><br>
									&lt;게스트로 이용하는 경우&gt;<br>
									1. 게스트 로그인 버튼을 통해 메인 페이지로 이동한다.<br>
									2. 게스트는 홈, 익명 게시판에만 접근이 가능하다.<br>
									3. 플레이할 게임을 선택하여 플레이한다.<br>
									4. 익명 게시판에는 자유로운 글쓰기가 가능하다.<br>
								</td>
							</tr>
						</table>
						<button class="special" onclick="location.href='login.jsp'">이전 페이지로</button><br><br><br><br>
					</center>
					</div>
					
				<!-- Footer -->
					<footer id="footer">
						<div class="inner">
							<section>
								<h2>Get in touch</h2>
								<form method="post" action="#">
									<div class="field half first">
										<input type="text" name="name" id="name" placeholder="Name" />
									</div>
									<div class="field half">
										<input type="email" name="email" id="email" placeholder="Email" />
									</div>
									<div class="field">
										<textarea name="message" id="message" placeholder="Message"></textarea>
									</div>
									<ul class="actions">
										<li><input type="submit" value="Send" class="special" /></li>
									</ul>
								</form>
							</section>
							<section>
								<h2>Follow</h2>
								<ul class="icons">
									<li><a href="#" class="icon style2 fa-twitter"><span class="label">Twitter</span></a></li>
									<li><a href="#" class="icon style2 fa-facebook"><span class="label">Facebook</span></a></li>
									<li><a href="#" class="icon style2 fa-instagram"><span class="label">Instagram</span></a></li>
									<li><a href="#" class="icon style2 fa-dribbble"><span class="label">Dribbble</span></a></li>
									<li><a href="#" class="icon style2 fa-github"><span class="label">GitHub</span></a></li>
									<li><a href="#" class="icon style2 fa-500px"><span class="label">500px</span></a></li>
									<li><a href="#" class="icon style2 fa-phone"><span class="label">Phone</span></a></li>
									<li><a href="#" class="icon style2 fa-envelope-o"><span class="label">Email</span></a></li>
								</ul>
							</section>
							<ul class="copyright">
								<li>&copy; Untitled. All rights reserved</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
							</ul>
						</div>
					</footer>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	</body>
</html>