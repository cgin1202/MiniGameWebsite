<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*,java.util.*"
    pageEncoding="UTF-8"%>
    
<% 
	String id="";
	try{
		id=(String)session.getAttribute("id");
		if(id==null || id.equals("")){
			out.print("<script>");
			out.print("alert('게스트는 접근이 불가능합니다.');");
			out.println("location.href='main.jsp'");
			out.print("</script>");
		}
	}catch(Exception e){
		
	};
%>


<%
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		/*MySQL 연결정보*/
		String jdbc_driver="com.mysql.jdbc.Driver";
		String jdbc_url="jdbc:mysql://127.0.0.1:3306/member";
		
		/*데이터베이스 연결 메소드*/
		try{
		Class.forName(jdbc_driver);
		conn=DriverManager.getConnection(jdbc_url,"root","1234");
		}catch(Exception e){
			e.printStackTrace();
		}
		
		 try{
		String sql="select NAME, GAME1, GAME2, GAME3, GAME4, GAME5, GAME6 from data where ID=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs=pstmt.executeQuery();
		
 %>
	 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/hanna.css">
		<title>마이 페이지</title>
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
								<h2>게임별 점수를 확인해보세요.</h2>
							</header>
							</div>
							<center>
							
							<br><p style="font-size:40px;">마이 페이지</p>
							
							<table width="80%" cellpadding="0" cellspacing="0" border="0" style="text-align:center;">
							<tr>
							<%
								while(rs.next()){
							%>
							<td>&nbsp;</td>
							<td>&nbsp;&nbsp;닉네임: <%=rs.getString(1) %></td>
							<td>&nbsp;</td>
							</tr>
							<tr>
							<td>&nbsp;</td>
							<td>게임별 점수</td>
							<td>&nbsp;</td>
							</tr>
							<tr>
							<td>1번 게임:  <%=rs.getInt(2) %></td>
							<td>2번 게임:  <%=rs.getInt(3) %></td>
							<td>3번 게임:  <%=rs.getInt(4) %></td>
							</tr>
							<tr>
							<td>4번 게임:  <%=rs.getInt(5) %></td>
							<td>5번 게임:  <%=rs.getInt(6) %></td>
							<td>6번 게임:  <%=rs.getInt(7) %></td>
							</tr>
							<%
								}
							%>
							</table>
							
							<%
							rs.close(); //ResultSet종료
							pstmt.close(); //Statement 종료
							conn.close(); //Connection 종료
							}catch(Exception e){
								e.printStackTrace();
							}
							%>
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