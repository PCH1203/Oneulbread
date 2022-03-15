package spms.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import spms.dao.MySqlMemberDAO;
import spms.vo.Member;

/**
 * Servlet implementation class checkEmail
 */
@WebServlet("/member/checkEmail")
public class checkEmail extends HttpServlet {
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		MySqlMemberDAO mySqlMemberDAO = new MySqlMemberDAO();
		
		try {
			response.setContentType("txt/html;charset=UTF-8");
			Member chkMember = mySqlMemberDAO.chkDuplicate(email);
			String status = "";
			if(chkMember == null) {
				status = "ok";
			} else {
				status = "fail";
			}
			PrintWriter writer = response.getWriter();
			writer.println(status);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
