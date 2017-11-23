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
import entity.Message;
import entity.UserInfo;

/**
 * Servlet implementation class AddMessageServlet
 */
@WebServlet("/AddMessageServlet")
public class AddMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddMessageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		 HttpSession session=request.getSession();
		 Message message=new Message();
		 String username=((UserInfo)session.getAttribute("userInfo")).getLoginName();
		 String title=request.getParameter("txtTitle");
		 String content=request.getParameter("txtContent");
		 String isbn=(String)session.getAttribute("isbn");
		 String writeDate=request.getParameter("txtDate");
		 MessageDao messagedao=new MessageDao();
		 message.setUsername(username);
		 message.setTitle(title);
		 message.setContent(content);
		 message.setIsbn(isbn);
		 message.setWriteDate(writeDate);
		 int num=messagedao.addMessage(message);
		 if(num>0)
		 {
		       List<Message> listMessage=messagedao.GetMessageByISBN(isbn);
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
