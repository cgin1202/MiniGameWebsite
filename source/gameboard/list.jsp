<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*,java.text.SimpleDateFormat,java.util.Date"%>


<%
   final int ROWSIZE = 10; 
   final int BLOCK = 5;

   int pg = 1;
   
   if(request.getParameter("pg")!=null) {
      pg = Integer.parseInt(request.getParameter("pg"));
   }
   
   int start = (pg*ROWSIZE) - (ROWSIZE-1);
   int end = (pg*ROWSIZE);
   
   int allPage = 0;
   
   int startPage = ((pg-1)/BLOCK*BLOCK)+1;
   int endPage = ((pg-1)/BLOCK*BLOCK)+BLOCK;

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/hanna.css">
		<title>익명 게시판</title>
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
 <%
   Class.forName("com.mysql.jdbc.Driver");
   String url = "jdbc:mysql://127.0.0.1:3306/board";
   String id = "root";
   String pass = "1234";
   int total = 0;
   
   try {
      Connection conn = DriverManager.getConnection(url,id,pass);
      Statement stmt = conn.createStatement();
      Statement stmt1 = conn.createStatement();
      String sql = "";

      String sqlCount = "SELECT COUNT(*) FROM board";
      ResultSet rs = stmt.executeQuery(sqlCount);
      
      if(rs.next()){
         total = rs.getInt(1);
      }

      int sort=1;
      String sqlSort = "SELECT NUM from board order by REF desc, STEP asc";
      rs = stmt.executeQuery(sqlSort);
   
      
      while(rs.next()){
         int stepNum = rs.getInt(1);
         sql = "UPDATE board SET STEP=" + sort + " where NUM=" +stepNum;
          stmt1.executeUpdate(sql);
          sort++;
      }
      
      allPage = (int)Math.ceil(total/(double)ROWSIZE);
      
      if(endPage > allPage) {
         endPage = allPage;
      }
      
      String sqlList = "SELECT NUM, USERNAME, TITLE, TIME, HIT, INDENT from board where STEP >="+start + " and STEP <= "+ end +" order by STEP asc";
      rs = stmt.executeQuery(sqlList);
      
%>
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
							<li><a href="../gameboard2/list.jsp">요청 게시판</a></li>
							<li><a href="list.jsp">익명 게시판</a></li>
							<li><a href="../inpage.jsp">마이 페이지</a></li>
							<li><a href="../logout.jsp">로그아웃</a></li>
						</ul>
					</nav>

				<!-- Main -->
					<div id="main">
						<div class="inner">
							<header>
								<h2>자유롭게 글을 작성해보세요.</h2>
							</header>
							</div>
							<center>
							<br><p style="font-size:40px;">익명 게시판</p></center>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<% out.print("총 게시물 : " + total + "개"); %>
<table width="100%" cellpadding="0" cellspacing="0" border="0">
 
 <tr style="text-align:center;">
   <td width="5"></td>
   
   <td width="200">제목</td>
   <td width="150">작성자</td>
   <td width="150">작성일</td>
   <td width="100">조회수</td>
   <td width="7"></td>
  </tr>
<%
   if(total==0) {
%>
          <tr align="center" bgcolor="#FFFFFF" height="30">
          <td colspan="6">등록된 글이 없습니다.</td>
         </tr>
<%
    } else {
          
      while(rs.next()) {
         int idx = rs.getInt(1);
         String name = rs.getString(2);
         String title = rs.getString(3);
         String time = rs.getString(4);
         int hit = rs.getInt(5);
         int indent = rs.getInt(6);
         
         Date date = new Date();
         SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd"); 
         String year = (String)simpleDate.format(date);
         String yea = time.substring(0,10);
      
%>
<tr height="25" align="center">
   <td>&nbsp;</td>
   <td align="center">
   <% 
      
   for(int j=0;j<indent;j++){
%>      &nbsp;&nbsp;&nbsp;<%
   }
   if(indent!=0){
%>     
<%
   }
%>
   <a href="view.jsp?idx=<%=idx%>&pg=<%=pg%>"><%=title %></a>
<%
   if(year.equals(yea)){
%>
       
<%
      } 
%>
   </td>
   <td align="center"><%=name %></td>
   <td align="center"><%=yea %></td>
   <td align="center"><%=hit %></td>
   <td>&nbsp;</td>
</tr>
  <tr bgcolor="#D2D2D2"><td colspan="7"></td></tr>
<% 
      }
   } 
   rs.close();
   stmt.close();
   conn.close();
} catch(SQLException e) {
   out.println( e.toString() );
}
%>
 </table>
 <center>
      <%
         if(pg>BLOCK) {
      %>
         [<a href="list.jsp?pg=1">◀◀</a>]
         [<a href="list.jsp?pg=<%=startPage-1%>">◀</a>]
      <%
         }
      %>
      
      <%
         for(int i=startPage; i<= endPage; i++){
            if(i==pg){
      %>
               <u><b>[<%=i %>]</b></u>
      <%
            }else{
      %>
               [<a href="list.jsp?pg=<%=i %>"><%=i %></a>]
      <%
            }
         }
      %>
      
      <%
         if(endPage<allPage){
      %>
         [<a href="list.jsp?pg=<%=endPage+1%>">▶</a>]
         [<a href="list.jsp?pg=<%=allPage%>">▶▶</a>]
      <%
         }
      %>
      <br><br><input type=button value="글쓰기" OnClick="window.location='write.jsp'">
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