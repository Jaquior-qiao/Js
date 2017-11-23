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

/**
 * Servlet implementation class DeleteMessagesServlet
 */
@WebServlet("/DeleteMessagesServlet")
public class DeleteMessagesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteMessagesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 int messageId=Integer.parseInt(request.getParameter("messageId"));
	        HttpSession session=request.getSession();
	        MessageDao messageDao=new MessageDao();
	        int num=messageDao.deleteMessageByMessageID(messageId);
	        if(num>0)
	        {
	            List message=messageDao.getMessage();
	            session.setAttribute("message", message);
	            request.getRequestDispatcher("deleteMessage.jsp").forward(request, response);
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
