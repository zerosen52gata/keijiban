package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.UserInfo;
import dao.UserDAO;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		UserInfo usr = UserDAO.serchUser(id,pw);
		//ログインの結果のチェック
		if("sasaki".equals(id) && "ayato".equals(pw) ){
			HttpSession session = request.getSession();
			session.setAttribute("usr", usr);

			//メニュー画面へフォワードする。
			String view = "/WEB-INF/view/menu2.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
		}if(usr == null){
			//DBからの戻り値がnull＝ログイン失敗と判断し
			//ログイン画面へリダイレクトする。
			String view = "http://localhost:8080/Book_management_system?error=1";
			response.sendRedirect(view);

		} else {

			//ログイン成功と判断し、セッションスコープにユーザ情報を格納
			HttpSession session = request.getSession();
			session.setAttribute("usr", usr);

			//メニュー画面へフォワードする。
			String view = "/WEB-INF/view/menu.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);

		}
	}
}

