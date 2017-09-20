package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import base.BaseDAOImpl;
import base.IBaseDAO;
import base.PageObject1;
import bean.BankVo;
import bean.CashRecordVo;
import bean.CourseVo;
import bean.MoneyRecordVo;
import bean.TeacherGradeVo;
import bean.TeacherVo;
import bean.UserCourseEvalVo;
import bean.UsersVo;

public class cashrecordServlet extends HttpServlet {

	IBaseDAO base = new BaseDAOImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		HttpSession session = request.getSession();
		UsersVo user =(UsersVo)session.getAttribute("user");
		if(action.equals("list")){
			listPage(request, response);
			request.getRequestDispatcher("/jsp/cashrecordList.jsp").forward(request, response);
		}
	}
	
	//分页显示
	public void listPage(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		//获取页面的参数
		String currentPage = request.getParameter("currentPage");
		String opr = request.getParameter("opr");
		//获取总记录数
		int cnt = base.getCount("select count(*) cnt from CashRecord");
		PageObject1 pager = new PageObject1();
		//设置第一个参数
		pager.setRecordCount(cnt);
		//设置第二个参数
		if(currentPage==null || currentPage.equals("")){
			pager.setCurrentPage(1);
		}else{
			pager.setCurrentPage(Integer.parseInt(currentPage));
		}
		//设置第三个参数
		if(opr==null || opr.equals("")){
			pager.setOpr("first");
		}else{
			pager.setOpr(opr);
		}
		//获取当前页
		int currPage = pager.getCurrentPage();
		//获取数据库中所有的课程数据
//		List<CashRecordVo> cashrecordList = base.findcashrecord(pager.getPageSize(),pager.getStartPos());
		//定义request变量，保存的是所有的课程数据
//		request.setAttribute("cashrecordList", cashrecordList);
		request.setAttribute("pager", pager);
	}
}
