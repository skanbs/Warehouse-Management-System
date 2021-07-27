package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.LoginDao;
import model.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private LoginDao loginDao = new LoginDao();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Daten aus dem Formular holen
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		// User mit den geholten Daten anlegen
		User newUser = new User();
		newUser.setUsername(username);
		newUser.setPassword(password);
		
		//Die Daten überprüfen
		if (null != username && !username.equals("") && null != password && !password.equals("")) {
			
			
			try {
				//Überprüfen, ob die Daten dem User entsprechen (wenn User existiert)
				if (loginDao.validate(newUser)) {
					response.sendRedirect("index.do");
				// wenn user nicht existiert, zurück zur LoginSeite	
				} else {
					HttpSession session = request.getSession();
					response.sendRedirect("login.jsp");
				}
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
		//Wenn die Daten vertippt wurden	
		}else {
			HttpSession session = request.getSession();
			response.sendRedirect("login.jsp");
		}
	}
}