package kr.co.kim.board.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDAO {
	
	DataSource ds;
	//�̱��� ���� Ŭ���� ����
	//1. �������� ��ü�� ����.
	private static BoardDAO boardDAO = new BoardDAO();
	
	//2. �����ڿ� private�� �ٿ��� �ܺο��� ��ü ������ ����.
	private BoardDAO() {
		try {
			Context ct = new InitialContext();
			ds = (DataSource)ct.lookup("java:comp/env/jdbc/mysql");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	//3. �ܺο��� ��ü �ּҰ� �䱸�� ������ �޼��带 ���� DAO �ּҰ��� ��ȯ.
	
	public static BoardDAO getInstance() {
		if(boardDAO == null) {
			boardDAO = new BoardDAO();
		}
		return boardDAO;
	}
	
//////////////////////////////////////////////////////////////////////////////	
	
	//��� �Խñ� ������ ������ ���� �޼���.
	public List<BoardVO> listBoard() {
		
		List<BoardVO> articles = new ArrayList<>();
		
		String sql = "SELECT * FROM my_board ORDER BY board_id DESC";
		
		try (Connection conn = ds.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql)){
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BoardVO article = new BoardVO(
						rs.getLong("board_id"),
						rs.getString("writer"),
						rs.getString("title"),
						rs.getString("content"),
						rs.getTimestamp("date"),
						rs.getInt("hit"));
				
				articles.add(article);			
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return articles;
	}
	
	//DB�� �ۼ����� ����ϴ� �޼���
	
	public void regist(String writer, String title, String content) {
		
		String sql = "INSERT INTO my_board(writer,title,content)"
				+ " VALUES(?,?,?)";
		
		try (Connection conn = ds.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql)){
			
			pstmt.setString(1, writer);
			pstmt.setString(2, title);
			pstmt.setString(3, content);
			
			pstmt.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}	
	}
	
	//�� �󼼺��� �޼���.
	public BoardVO contentBoard(String bId){
		
		BoardVO vo = null;
		String sql = "SELECT * FROM my_board WHERE board_id=?";
	
		try (Connection conn = ds.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql)){
			
			pstmt.setString(1, bId);
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo = new BoardVO(
						rs.getLong("board_id"),
						rs.getString("writer"),
						rs.getString("title"),
						rs.getString("content"),
						rs.getTimestamp("date"),
						rs.getInt("hit"));
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	//��ȸ���� ������Ű�� �޼���.
	public void upHit(String bId) {
		
		String sql = "UPDATE my_board SET hit = hit + 1 WHERE board_id=?";
		
		try(Connection conn = ds.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql)) {
			
			pstmt.setString(1, bId);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}	
	}
	

	//�Խñ��� �����ϴ� �޼���.
	public void updateBoard(String bId, String title, String content) {
		
		String sql = "UPDATE my_board SET title=?, content=? WHERE board_id=?";
		
		try(Connection conn = ds.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql)){
			
			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.setString(3, bId);
			
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	//�Խñ� ����
	public void deleteBoard(String bId) {
		String sql = "DELETE FROM my_board WHERE board_id=?";
		
		try(Connection conn = ds.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql)){
			
			pstmt.setString(1, bId);
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
			
	}
	
	//�Խñ� �˻�.
	public List<BoardVO> searchList(String search){
		
		List<BoardVO> articles = new ArrayList<>();
		
		String sql = "SELECT * FROM my_board WHERE title LIKE ?";
		
		try(Connection conn = ds.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql)){
			
			 pstmt.setString(1, "%"+search+"%");
			 ResultSet rs = pstmt.executeQuery();
			 
			 while(rs.next()) {
				 BoardVO article = new BoardVO(
							rs.getLong("board_id"),
							rs.getString("writer"),
							rs.getString("title"),
							rs.getString("content"),
							rs.getTimestamp("date"),
							rs.getInt("hit"));
					
					articles.add(article);	
			 }

		} catch (Exception e) {
			e.printStackTrace();
		}
		return articles;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
