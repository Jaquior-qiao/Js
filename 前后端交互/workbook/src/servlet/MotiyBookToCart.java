package servlet;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.BookBean;
import entity.CartItemBean;

/**
 * Servlet implementation class MotiyBookToCart
 */
@WebServlet("/MotiyBookToCart")
public class MotiyBookToCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MotiyBookToCart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int quantity=Integer.parseInt(request.getParameter("txtNum"));
		String isbn=request.getParameter("isbn");
		HttpSession session=request.getSession();
		HashMap cart=(HashMap)session.getAttribute("cart");
	 	CartItemBean cartItem=(CartItemBean)cart.get(isbn);
		BookBean book=cartItem.getBook();
		cartItem.setQuantity(quantity);
		request.getRequestDispatcher("viewCartUpdate.jsp").forward(request,response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
