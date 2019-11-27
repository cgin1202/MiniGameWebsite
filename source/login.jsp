<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<%
   session.setAttribute("id","");
%>
<html>
   <head>
       <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/hanna.css">
      <title>로그인</title>
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
                     <center>
                     <header>
                        <br><p style="font-size:35px;">회원/게스트 로그인 후 이용해주세요.</p>
                     </header>
      <table width="45%">
         <tr>
            <td>
                 <form action="check.jsp" method="post" > <!--회원 로그인-->
                  <input type="text" name="ID" placeholder="ID"/>
                  <input type="password" name="PASSWORD" placeholder="PASSWORD" /><br>
               <input type="submit" value="회원로그인" class="special" style="margin-top:0;"/>
                 </form>
         
                 <form action="main.jsp" method="post" style="width:150px;float:left;"> <!--게스트 로그인-->
                    <input type="submit" value="게스트로그인">
                 </form>
                 <form action="create.jsp" method="post" style="width:120px;float:left;"> <!--회원 가입-->
                    <input class="input_making" type="submit" value="회원가입">
                    </form>
                 <form action="explain.jsp" method="post" style="width:100px;float:left;"> <!--프로그램 설명 버튼-->
                    <input type="submit" value="프로그램설명">
               </form>
                </td>
             </tr>
      </table>      
        </center>

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