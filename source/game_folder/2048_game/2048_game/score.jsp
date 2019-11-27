<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="java.sql.*,java.util.*"%>
		<% request.setCharacterEncoding("utf-8"); %>
		<jsp:useBean id="gameboard" class="minigame.GameBoard"/>
		<jsp:setProperty name="gameboard" property="*"/>
		
		<% 
			String id="";
			try{
				id=(String)session.getAttribute("id");
				if(id==null || id.equals("")){
					out.print("<script>");
					out.println("location.href='../../../main.jsp'");
					out.print("</script>");
				}
			}catch(Exception e){
				
			};
		%>

		<%
		Connection conn=null;
		PreparedStatement pstmt=null;
		PreparedStatement pstmt2=null;
		
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
			
		int gamescore1=Integer.parseInt(request.getParameter("score"));
		int datagamescore1=0;
		System.out.println("스코어"+gamescore1);
		String sql2="SELECT GAME2 FROM data where ID=?";
		pstmt2=conn.prepareStatement(sql2);
		pstmt2.setString(1,id);
		ResultSet rs=pstmt2.executeQuery();
		while(rs.next()){
			datagamescore1=rs.getInt("GAME2");
		}
		
		
		if(gamescore1>datagamescore1){
			String sql="UPDATE data SET GAME2 =? where ID=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,gamescore1);
			pstmt.setString(2,id);
			pstmt.executeUpdate();	
		}
		
		}catch(Exception e){
			e.printStackTrace();	
		}finally{
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
		out.print("<script>");
		out.println("location.href='2048_game.jsp';");
		out.print("</script>");
	 %>