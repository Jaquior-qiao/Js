package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MessageDao;
import entity.UserInfo;

/**
 * Servlet implementation class MessageServet
 */
@WebServlet("/MessageServlet")
public class MessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MessageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("gbk");
        HttpSession session=request.getSession();
        UserInfo userInfo=(UserInfo) session.getAttribute("userInfo");
		if(userInfo==null){
			request.getRequestDispatcher("Login.jsp").forward(request, response);
		}else
		{	
        String isbn=request.getParameter("isbn");
        session.setAttribute("isbn", isbn);
        MessageDao messageDao=new MessageDao();
        List listMessage=messageDao.GetMessageByISBN(isbn);
        session.setAttribute("listMessage", listMessage);
        request.getRequestDispatcher("message.jsp").forward(request, response);
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
