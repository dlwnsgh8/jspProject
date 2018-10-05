package puppy;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import puppy.dao.PuppyDAO;
import puppy.dto.PuppyDTO;

@WebServlet("/puppy_servlet/*")
public class PuppyController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getRequestURI();
		String contextPath = request.getContextPath();
		PuppyDAO dao = new PuppyDAO();
		
		if(url.indexOf("join.do") != -1) {
			String userid = request.getParameter("userid");
			String pwd = request.getParameter("pwd");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String hp = request.getParameter("hp");
			String address = request.getParameter("address");
			PuppyDTO dto = new PuppyDTO();
			dto.setUserid(userid);
			dto.setPwd(pwd);
			dto.setName(name);
			dto.setEmail(email);
			dto.setHp(hp);
			dto.setAddress(address);
			dao.insert(dto);
			String page = "/webProject/login.jsp";
			response.sendRedirect(request.getContextPath()+page);
		} else if(url.indexOf("login.do") != -1) {
			String userid = request.getParameter("userid");
			String pwd = request.getParameter("pwd");
			PuppyDTO dto = new PuppyDTO();
			dto.setUserid(userid);
			dto.setPwd(pwd);
			String result = dao.loginCheck(dto);
			String page = "/webProject/login.jsp";
			if(!result.equals("로그인 실패")) {
				HttpSession session = request.getSession();
				session.setAttribute("userid", userid);
				session.setAttribute("message", result);
				page = "/webProject/main.jsp";
				response.sendRedirect(request.getContextPath()+page);
			} else {
				response.sendRedirect(request.getContextPath()+page+"?message=error");
			}
		} else if(url.indexOf("logout.do") != -1) {
			HttpSession session = request.getSession();
			session.invalidate();
			String page = request.getContextPath()+"/webProject/main.jsp?message=logout";
			response.sendRedirect(page);
		}
}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}