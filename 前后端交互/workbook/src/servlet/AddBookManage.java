package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.BookManage;
import entity.BookBean;

/**
 * Servlet implementation class AddBookManage
 */
@WebServlet("/AddBookManage")
public class AddBookManage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddBookManage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		request.setCharacterEncoding("gbk");
		String title=request.getParameter("title");
		String isbn=request.getParameter("isbn");
		String author=request.getParameter("author");
		String copyright=request.getParameter("copyright");
		String description=request.getParameter("description");
		//String imageFile=request.getParameter("picture");
		String imageFile=(String)session.getAttribute("fn");
		double price=Double.parseDouble(request.getParameter("price"));
		//cbPublisher
		int publisherID=Integer.parseInt(request.getParameter("cbPublisher"));
		BookBean bb=new BookBean();
		bb.setAuthor(author);
		bb.setCopyright(copyright);
		bb.setDescription(description);
		bb.setImageFile(imageFile);
		bb.setIsbn(isbn);
		bb.setPrice(price);
		bb.setPublisherID(publisherID);
		bb.setTitle(title);	
		BookManage bm=new BookManage();
		int num=bm.getAddBookManage(bb);
		if(num>0){
            request.getRequestDispatcher("bookManage.jsp").forward(request, response);
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
