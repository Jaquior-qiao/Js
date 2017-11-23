package javaweb;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CheckLogin;
import dao.UserOperation;
import entity.UserInfo;

/**
 * Servlet implementation class showuser
 */
@WebServlet(name = "showuser.do", urlPatterns = { "/showuser.do" })
public class showuser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public showuser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		UserInfo ui=new UserInfo();
		UserOperation uo=new UserOperation();
		List listUsers=uo.getShowUsers();
		HttpSession session=request.getSession();
		session.setAttribute("listUsers",listUsers);
		request.getRequestDispatcher("530.html").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
