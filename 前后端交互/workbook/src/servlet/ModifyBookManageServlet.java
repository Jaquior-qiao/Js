package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BookManage;
import entity.BookBean;

/**
 * Servlet implementation class ModifyBookManageServlet
 */
@WebServlet("/ModifyBookManageServlet")
public class ModifyBookManageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifyBookManageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("gbk");
		String isbn=request.getParameter("isbn");
		String isbn1=request.getParameter("isbn1");
		String author=request.getParameter("author");
		String copyright=request.getParameter("copyright");
		String description=request.getParameter("description");
		double price=Double.parseDouble(request.getParameter("price"));
		String title=request.getParameter("title");
		BookBean bb=new BookBean();
		bb.setIsbn(isbn1);
		bb.setAuthor(author);
		bb.setDescription(description);
		bb.setCopyright(copyright);
		bb.setPrice(price);
		bb.setTitle(title);
		bb.setAuthor(author);
		BookManage bm=new BookManage();
		int num=bm.getUpdate(bb, isbn);
		if(num==1){
			request.getRequestDispatcher("bookManage.jsp").forward(request,response);
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
