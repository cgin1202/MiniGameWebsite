<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="java.sql.*,java.util.*"%>
		<% request.setCharacterEncoding("utf-8"); %>
		<jsp:useBean id="customer" class="minigame.Customer"/>
		<jsp:setProperty name="customer" property="*"/>
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
		String sql="insert into data(ID,PASSWORD,NAME,EMAIL) values(?,?,?,?)";
		pstmt=conn.prepareStatement(sql);
		
		String id=customer.getID();
		String password=customer.getPASSWORD();
		String nickname=customer.getNICKNAME();
		String email=customer.getEMAIL();
		
		pstmt.setString(1,id);
		pstmt.setString(2,password);
		pstmt.setString(3,nickname);
		pstmt.setString(4,email);
		
		pstmt.executeUpdate();
		
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
		
		
		response.sendRedirect("login.jsp");
	 %>