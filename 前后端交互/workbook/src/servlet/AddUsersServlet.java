package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserOperation;
import entity.UserInfo;

/**
 * Servlet implementation class AddUsersServlet
 */
@WebServlet("/AddUsersServlet")
public class AddUsersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUsersServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userName=request.getParameter("userName");
		String passWord=request.getParameter("password");
		UserInfo ui=new UserInfo();
		ui.setLoginName(userName);
		ui.setPassword(passWord);
		ui.setUserRoleId(2);
		UserOperation uo=new UserOperation();
		int num=uo.getAddUsers(ui);
		if(num>0){
			request.getRequestDispatcher("ShowUserServlet").forward(request, response);
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
