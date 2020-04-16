package kr.co.kim.board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.kim.board.model.BoardDAO;
import kr.co.kim.board.model.BoardVO;

public class ModifyServiceImpl implements IBoardService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String bId = request.getParameter("bId");
		
		BoardDAO dao = BoardDAO.getInstance();
		
		BoardVO vo = dao.contentBoard(bId);
		
		
		//BoardVO vo = BoardDAO.getInstance().contentBoard(request.getParameter("bId"));
		
		request.setAttribute("modify_board", vo);
		
		
		
		

	}

}
