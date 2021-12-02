package jdbc11;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import jdbc11.bean.Bank;
import jdbc11.dao.BankDao;

/**
 * Servlet implementation class JDBC42Servlet
 */
@WebServlet("/jdbc11/s42")
public class JDBC42Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JDBC42Servlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// v42로 forward
		String path = "/WEB-INF/view/jdbc11/v42.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 0. 사전작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		BankDao dao = new BankDao();

		// 2. request 분석/가공
		String moneyStr = request.getParameter("money");
		int money = Integer.parseInt(moneyStr);

		// 3. business logic
		// 3.0 auto commit disabled
		// 3.1 1번 출금
		try (Connection con = ds.getConnection()) {
			Bank bank1 = dao.getBankById(con, 1); // 1번 계좌 조회
			bank1.setMoney(bank1.getMoney() - money);

			dao.update(con, bank1); // 1번 계좌 update (출금)

			// 3.2 2번 입금
			Bank bank2 = dao.getBankById(con, 2); // 2번 계좌 조회
			bank2.setMoney(bank2.getMoney() + money);

			dao.update(con, bank2); // 2번 계좌 update (입금)
		} catch (Exception e) {
			e.printStackTrace();
		}

		// 3.99 commit

		// 4. add attribute

		// 5. forward/redirect
	}

}
