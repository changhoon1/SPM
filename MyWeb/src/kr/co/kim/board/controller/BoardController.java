package kr.co.kim.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.kim.board.model.BoardDAO;
import kr.co.kim.board.model.BoardVO;
import kr.co.kim.board.service.ContentServiceImpl;
import kr.co.kim.board.service.DeleteServiceImpl;
import kr.co.kim.board.service.GetListServiceImpl;
import kr.co.kim.board.service.IBoardService;
import kr.co.kim.board.service.ModifyServiceImpl;
import kr.co.kim.board.service.RegisterServiceImpl;
import kr.co.kim.board.service.SearchServiceImpl;
import kr.co.kim.board.service.UpdateServiceImpl;

@WebServlet("*.board") //Ȯ���� ����.
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BoardController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doRequest(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doRequest(request, response);
	}
	
	
	protected void doRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI(); //URI
		String conPath = request.getContextPath(); //contextPath
		String com = uri.substring(conPath.length());
		
		IBoardService sv = null;
		
		//����Ʈ ��� ��û
		if(com.equals("/board/list.board")) {
			
			sv = new GetListServiceImpl();
			sv.execute(request, response);
			
			//request��ü�� ���� ȭ����� ����ϱ� ���� forward �̵� 
			RequestDispatcher dp = request.getRequestDispatcher("board_list.jsp");
			dp.forward(request, response);
			
		 //�۾��� ȭ�� �̵� ��û
		} else if(com.equals("/board/writer.board")) {
			response.sendRedirect("board_write.jsp");
		
			//�ۼ��� ��� ��û
		} else if(com.equals("/board/regist.board")) {
			
			sv = new RegisterServiceImpl();
			sv.execute(request, response);
			
			response.sendRedirect("list.board");
			
		//�� �� ���� ��û
		} else if(com.equals("/board/content.board")) {
			
			sv = new ContentServiceImpl();
			sv.execute(request, response);
			
			RequestDispatcher dp = request.getRequestDispatcher("board_content.jsp");
			dp.forward(request, response);
			
		 //�Խñ� ���� ������ �̵� ��û.
		} else if(com.equals("/board/modify.board")) {
			
			//ModifyServiceImpl() ����. 
			//�Խñۿ� �ش��ϴ� ������ �������� �޼��� ����
			//service���� request��ü�� ����
			//ȭ���̵�(dp)�ؼ� �±� �ȿ� ���� ���.
			sv = new ModifyServiceImpl();
			sv.execute(request, response);
			
			RequestDispatcher dp = request.getRequestDispatcher("board_modify.jsp");
			dp.forward(request, response);
		
		// ���� ��û.		
		} else if(com.equals("/board/update.board")) {
			
			/*
			 * 1. UpdateServiceImpl() ����� excute() �޼��� ����
			 * 2. ���񽺿����� bId, title, content�� �޾Ƽ� dao�� updateBoard() �޼��� ����
			 * 3. updateBoard()�� update�������� ������ ���� 
			 * 4. ������ �̵��� ���
			 * 5. sql : UPDATE my_board SET title=?, content=? WHERE board_id =? 
			 */
			sv = new UpdateServiceImpl();
			sv.execute(request, response);
			
			response.sendRedirect("list.board");
		
		// ���� ��û.	
		} else if(com.equals("/board/delete.board")) {
			//sql = DELETE FROM my_board WHERE board_id=?;
			sv = new DeleteServiceImpl();
			sv.execute(request, response);
			
			response.sendRedirect("list.board");
			
		//�˻� ��û.
		} else if(com.equals("/board/search.board")) {
			//sql = "SELECT * FROM my_board WHERE title LIKE ?;
			
			sv = new SearchServiceImpl();
			sv.execute(request, response);
			
			RequestDispatcher dp = request.getRequestDispatcher("board_list.jsp");
			dp.forward(request, response);
			
			
		}
		
		
			
			
			
	
		
		
		
		
	}

	
	
	
	
	
	
	
	
	
	
	
	

}
