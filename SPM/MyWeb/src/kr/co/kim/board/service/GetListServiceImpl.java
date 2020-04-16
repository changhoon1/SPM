package kr.co.kim.board.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.kim.board.model.BoardDAO;
import kr.co.kim.board.model.BoardVO;

public class GetListServiceImpl implements IBoardService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		List<BoardVO> list = BoardDAO.getInstance().listBoard();
		request.setAttribute("boardList", list);
		
	}

}
