package servlet;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jspsmart.upload.SmartUpload;

/**
 * Servlet implementation class UpLoadBookImageServlet
 */
@WebServlet("/UpLoadBookImageServlet")
public class UpLoadBookImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpLoadBookImageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
        //1.�ϴ�ͼƬ��������
		SmartUpload  su=new SmartUpload();
		//2.�ϴ���ʼ��
		su.initialize(this.getServletConfig(), request, response);
		//�趨�ϴ����ƣ�����ÿ���ϴ��ļ�����󳤶�
		su.setMaxFileSize(100000);
		//�������ϴ����ݵĳ���
		su.setTotalMaxFileSize(100000);

		//3.�趨�����ϴ����ļ���ͨ����չ�����ƣ�����������jpg ,gif,bmp�ļ�
		su.setAllowedFilesList("jpg,gif,bmp,png");
		String picPath;
		try {
			//�趨��ֹ�ϴ����ļ���ͨ����չ�����ƣ�
			su.setDeniedFilesList("exe,bat,jsp,html,htm");
			//�ϴ��ļ�
			su.upload();
			//���ϴ��ļ�ȫ�����浽ָ��Ŀ¼
			String filepath="images/";
			int count=su.save(filepath,SmartUpload.SAVE_VIRTUAL);
			String fn=su.getFiles().getFile(0).getFileName();
			picPath=filepath+fn;
			System.out.println(picPath);
		    session.setAttribute("fn", fn);
		} catch (Exception e) {
			// TODO: handle exception
		}
		 request.getRequestDispatcher("addbook.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
