package controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.CommandHandler;
import repository.DTO.DeclBean;
import service.AdminService;
import service.AdminServiceImpl;

//신고 게시판(목록)
public class Decl implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		AdminService as = new AdminServiceImpl();
		
		// 관리자인지 확인하기
		HttpSession session = req.getSession();
		String uId = (String)session.getAttribute("uId_Session");
		
		if (uId == null) {
			req.setAttribute("errorMsg", "로그인 시 이용할 수 있는 페이지입니다.");
			return "/index.jsp";
		
		// 로그인이 되었으나 관리자 등급이 아닌 경우
		} else if (!as.isAdmin(uId)) {
			req.setAttribute("errorMsg", "관리자만 이용할 수 있는 페이지입니다.");
			return "/index.jsp";

		}

		List<DeclBean> declList = as.reportList(req, resp);
		req.setAttribute("declList", declList);
		
		return "/viewPage/bbs.jsp";
	}
	
}