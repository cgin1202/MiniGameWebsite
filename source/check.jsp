<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="java.sql.*,java.util.*"%>
		<% request.setCharacterEncoding("utf-8"); %>
		<jsp:useBean id="login" class="minigame.Login"/>
		<jsp:setProperty name="login" property="*"/>
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
			
		String id=login.getID();
		String password=login.getPASSWORD();
		
		String sql="select PASSWORD from data where ID=?";
		pstmt=conn.prepareStatement(sql);
		
		pstmt.setString(1,id);
		ResultSet rs=pstmt.executeQuery();
		String pass;
		if(rs.next()){
			pass=rs.getString("PASSWORD");
			if(pass.equals(password)){
				session.setAttribute("id",id);
				out.print("<script>");
				out.print("alert('반갑습니다 ^^ "+id+"');");
				out.println("location.href='main.jsp';");
				out.print("</script>");
			}
			// PASSWORD is not correct
			else{
				out.print("<script>");
				out.println("alert('비밀번호 정보가 틀렸습니다ㅠ');");
				out.println("location.href='login.jsp'");
				out.print("</script>");
			}
				
		}
		// ID is not correct
		else{
			out.print("<script>");
			out.println("alert('아이디 정보가 틀렸습니다!');");
			out.println("location.href='login.jsp'");
			out.print("</script>");
		}
		
		}catch(SQLException e){
			e.printStackTrace();
		}
		finally{
			if(pstmt !=null){
				try{
					pstmt.close();
				}catch(SQLException e){
					e.printStackTrace();
				}
			}
			if(conn!=null){
				try{
					conn.close();
				}catch(SQLException e){
					e.printStackTrace();
				}
			}
		}
		
		
		//response.sendRedirect("login.jsp");
	 %>