<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%
	String id="";
	id=(String)session.getAttribute("id");
%>
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
								<a href="main.jsp" class="logo">
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
							<li><a href="main.jsp">홈</a></li>
							<li><a href="gameboard3/list.jsp">공략 게시판</a></li>
							<li><a href="gameboard2/list.jsp">요청 게시판</a></li>
							<li><a href="gameboard/list.jsp">익명 게시판</a></li>
							<li><a href="inpage.jsp">마이 페이지</a></li>
							<li><a href="logout.jsp">로그아웃</a></li>
						</ul>
					</nav>

				<!-- Main -->
					<div id="main">
						<div class="inner">
							<header>
								<h2>원하시는 게임을 선택하여 플레이해보세요.</h2>
							</header>
							
							<!--  -->
							<section class="tiles">
								
								
								<article class="style6">
									<span class="image">
										<img src="images/monkey.PNG" alt="" />
									</span>
									<a href="game_folder/jolly-jumper_game/jolly-jumper_game.jsp">
										<h2>jolly-jumper</h2>
										<div class="content">
											
										</div>
									</a>
								</article>
								<article class="style2">
									<span class="image">
										<img src="images/2048.PNG" alt="" />
									</span>
									<a href="game_folder/2048_game/2048_game/2048_game.jsp">
										<h2>2048</h2>
										<div class="content">
											
										</div>
									</a>
								</article>
								<article class="style3">
									<span class="image">
										<img src="images/bird.PNG" alt="" />
									</span>
									<a href="game_folder/bird_game/bird_game.jsp">
										<h2>clumsy-bird</h2>
										<div class="content">
											
										</div>
									</a>
								</article>
								<article class="style4">
									<span class="image">
										<img src="images/1945.PNG" alt="" />
									</span>
									<a href="game_folder/1945_game/1945_game/1945_game.jsp">
										<h2>1945</h2>
										<div class="content">
											
										</div>
									</a>
								</article>
								
								<article class="style1">
									<span class="image">
										<img src="images/pacman.png" alt="" />
									</span>
									<a href="game_folder/pakman/pacman.jsp">
										<h2>pacman</h2>
										<div class="content">
											
										</div>
									</a>
								</article>
								
								<article class="style5">
									<span class="image">
										<img src="images/hex.PNG" at="" />
									</span>
									<a href="game_folder/hex_game/hex_game/hex.jsp">
										<h2>hextris</h2>
										<div class="content">
											
										</div>
									</a>
								</article>
								
									
								
							</section>
						</div>
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