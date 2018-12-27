package service;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.RepairTable;
import db.DbConnect;

/**
 * Servlet implementation class RepairApply
 */
@WebServlet("/RepairApply")
public class RepairApply extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RepairApply() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String build = request.getParameter("build");
		String domotry = request.getParameter("domotry");
		String tell = request.getParameter("tell");
		String week = request.getParameter("week");
		String time = request.getParameter("time");
		String type = request.getParameter("type");
		String discript = request.getParameter("discript");
		RepairTable rep=new RepairTable(name,build,domotry,tell,week,time,type,discript);
		// 获取数据库的连接
		Connection con = DbConnect.getConnection();
		String sql = "insert into wxsq(name,build,domotry,tell,week,time,type,discript) values(?,?,?,?,?,?,?,?)";
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			out.println("进入");
			ps = con.prepareStatement(sql);
			ps.setString(1, rep.getName());
			ps.setString(2, rep.getBuild());
			ps.setString(3, rep.getDomotry());
			ps.setString(4, rep.getTell());
			ps.setString(5, rep.getWeek());
			ps.setString(6, rep.getTime());
			ps.setString(7, rep.getType());
			ps.setString(8, rep.getDiscript());
		
			int i = ps.executeUpdate();
			HttpSession session = request.getSession();	
			if(i==1){
				String sql1 = "select * from student";
				ps = con.prepareStatement(sql1);
				rs = ps.executeQuery();

				// 设置session有效时间为2小时
				session.setMaxInactiveInterval(7200);
				session.setAttribute("rs", rs);
				response.sendRedirect("page/wxcx.jsp");
			}else{
				response.sendRedirect("error.jsp");
			}
		} catch (SQLException e) {
			e.printStackTrace();
			out.println("异常处理");
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
