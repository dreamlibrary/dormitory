package service;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.resource.cci.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.DbConnect;

/**
 * Servlet implementation class AdminService
 */
@WebServlet("/AdminService")
public class AdminService extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminService() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String admin = request.getParameter("username");
		String pwd = request.getParameter("password");
		if(admin.equals("admin")&&pwd.equals("123")){
			//获取数据库的连接
			Connection con = DbConnect.getConnection();
			String sql = "select * from usertable";
			PreparedStatement ps = null;
			java.sql.ResultSet rs = null;
			try {
				ps = con.prepareStatement(sql);
				rs = ps.executeQuery();
				HttpSession session = request.getSession();
				//设置session有效时间为2小时
				session.setMaxInactiveInterval(7200);
				session.setAttribute("rs", rs);
				response.sendRedirect("main.jsp");
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}else{
			response.sendRedirect("index.jsp");
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
