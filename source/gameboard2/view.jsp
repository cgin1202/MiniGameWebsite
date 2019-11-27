<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String url ="jdbc:mysql://127.0.0.1:3306/board2";
	String id = "root";
	String pass = "1234";
	int idx = Integer.parseInt(request.getParameter("idx"));
	int pg = Integer.parseInt(request.getParameter("pg"));
	
	try {
		Connection conn = DriverManager.getConnection(url,id,pass);
		Statement stmt = conn.createStatement();
		
		String sql = "SELECT USERNAME, TITLE, MEMO, TIME, HIT FROM board2 WHERE NUM=" + idx;
		ResultSet rs = stmt.executeQuery(sql);
		 if(rs.next()){
				String name = rs.getString(1);
				String title = rs.getString(2);
				String memo = rs.getString(3);
				String time = rs.getString(4);
				int hit = rs.getInt(5);
				hit++;
		
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
 <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/hanna.css">
		<title>요청 게시판</title>
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
								<a href="../main.jsp" class="logo">
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
							<li><a href="../main.jsp">홈</a></li>
							<li><a href="../gameboard3/list.jsp">공략 게시판</a></li>
							<li><a href="list.jsp">요청 게시판</a></li>
							<li><a href="../gameboard/list.jsp">익명 게시판</a></li>
							<li><a href="../inpage.jsp">마이 페이지</a></li>
							<li><a href="../logout.jsp">로그아웃</a></li>
						</ul>
					</nav>
 
				<!-- Main -->
					<div id="main">
						<div class="inner">
							<header>
							</header>
							</div>
							<center>
<table>
  <tr>
   <td>
    <table width="100%" cellpadding="0" cellspacing="0" border="0">
     <tr style="text-align:center;">
      <td width="5"></td>
      <td>내 용</td>
      <td width="5"></td>
     </tr>
    </table>
   <table width="500">
     <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">글번호</td>
      <td width="319"><%=idx%></td>
      <td width="0">&nbsp;</td>
     </tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">조회수</td>
      <td width="319"><%=hit%></td>
      <td width="0">&nbsp;</td>
     </tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">이름</td>
      <td width="319"><%=name%></td>
      <td width="0">&nbsp;</td>
     </tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">작성일</td>
      <td width="319"><%=time%></td>
      <td width="0">&nbsp;</td>
     </tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">제목</td>
      <td width="319"><%=title%></td>
      <td width="0">&nbsp;</td>
     </tr>
                <tr>
      <td width="0"></td>
                   <td width="399" colspan="2" height="200"><%=memo %>
                </tr>
                <% 
 	sql = "UPDATE board2 SET HIT=" + hit + " where NUM=" +idx;
 	stmt.executeUpdate(sql);
 	rs.close();
 	stmt.close();
 	conn.close();
	 	} 
	}catch(SQLException e) {
}

%>
    <tr align="center">
      <td width="0">&nbsp;</td>
      <td colspan="2" width="399"><input type=button value="글쓰기"  OnClick="window.location='write.jsp'">
	<input type=button value="목록" OnClick="window.location='list.jsp?pg=<%=pg%>'">
	<input type=button value="수정" OnClick="window.location='modify.jsp?idx=<%=idx%>&pg=<%=pg%>'">
	<input type=button value="삭제" OnClick="window.location='delete.jsp?idx=<%=idx%>&pg=<%=pg%>'">
      <td width="0">&nbsp;</td>
     </tr>
    </table>
   </td>
  </tr>
 </table>
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