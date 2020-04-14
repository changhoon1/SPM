package kr.co.kim.board.service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.kim.board.model.BoardDAO;
import kr.co.kim.board.model.BoardVO;

public class ContentServiceImpl implements IBoardService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		String bId = request.getParameter("boardId");
		
		//��ȸ�� �ߺ� ������ ���� ��Ű�� �ϳ� ����.
		Cookie hitCoo = new Cookie("hitNum", bId);
		hitCoo.setMaxAge(15);
		response.addCookie(hitCoo);
		
		
		//�ߺ� ������ ���� ��Ű ���.
		Cookie[] cookies = request.getCookies();
		String bNum = "";
		for(Cookie c : cookies) {
			if(c.getName().equals("hitNum")) {
				bNum = c.getValue();
			}
		}
	
		BoardVO vo = BoardDAO.getInstance().contentBoard(bId);
		request.setAttribute("content_board", vo);
		
		
		//��ȸ�� �÷��ִ� �޼��� ȣ��.
		if(!bNum.equals(bId)) {
			BoardDAO.getInstance().upHit(bId);

		}
	}

}













