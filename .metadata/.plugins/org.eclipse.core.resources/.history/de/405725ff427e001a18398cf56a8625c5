package board.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sun.org.apache.bcel.internal.generic.RETURN;

import board.DTO.BoardDTO;

public class BoardDAO {
		private String url = "jdbc:oracle:thin:@localhost:1521:xe";
		private String user = "SPM", pwd="1234";
		private Connection con;
		private PreparedStatement ps;
		private ResultSet rs;
		public BoardDAO() {//생성자로 호출되기 때문에 바로 드라이버가 로드된다.
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
			} catch (Exception e) {e.printStackTrace();}
		}
		
		public ArrayList<BoardDTO> list(){
			//String sql = "select * from board";
			String sql = "select * from board order by idgroup desc, step asc";
			ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
			try {
				con = DriverManager.getConnection(url,user,pwd);
				ps = con.prepareStatement(sql);
				rs = ps.executeQuery();
				while (rs.next()) {
					BoardDTO dto = new BoardDTO();
					dto.setId(rs.getInt("id"));
					dto.setHit(rs.getInt("Hit"));
					dto.setIdgroup(rs.getInt("Idgroup"));
					dto.setIndent(rs.getInt("Indent"));
					dto.setStep(rs.getInt("Step"));
					
					dto.setContent(rs.getString("Content"));
					dto.setName(rs.getString("Name"));
					dto.setTitle(rs.getString("Title"));
					dto.setSavedate(rs.getTimestamp("Savedate"));
					list.add(dto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
		}
		public void write_save(String name, String title, String content) {
			String sql = 
					"insert into board(id,name,title,content,hit,idgroup,step,indent)"+
							"values(board_seq.nextval,?,?,?,0,board_seq.currval,0,0)";
			try {
				con = DriverManager.getConnection(url,user,pwd);
				ps = con.prepareStatement(sql);
				ps.setString(1, name);
				ps.setString(2, title);
				ps.setString(3, content);
				ps.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		public BoardDTO contentView(String id) {
			upHit(id);
			String sql = "select * from board where id=?";
			BoardDTO dto = new BoardDTO();
			
			try {
				con = DriverManager.getConnection(url,user,pwd);
				ps = con.prepareStatement(sql);
				ps.setString(1, id);
				rs = ps.executeQuery();
				if(rs.next()) {
					dto.setId(rs.getInt("id"));
					dto.setHit(rs.getInt("Hit"));
					dto.setIdgroup(rs.getInt("Idgroup"));
					dto.setIndent(rs.getInt("Indent"));
					dto.setStep(rs.getInt("Step"));
					
					dto.setContent(rs.getString("Content"));
					dto.setName(rs.getString("Name"));
					dto.setTitle(rs.getString("Title"));
					dto.setSavedate(rs.getTimestamp("Savedate"));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return dto;
		}
		private void upHit(String id) {
			String sql = "update board set hit=hit+1 where id="+id;
			try {
				con = DriverManager.getConnection(url,user,pwd);
				ps = con.prepareStatement(sql);
				ps.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		public void modify(BoardDTO dto) {
			String sql = "update board set name=?, title=?, content=? where id=?";
			try {
				con = DriverManager.getConnection(url,user,pwd);
				ps = con.prepareStatement(sql);
				ps.setString(1, dto.getName());
				ps.setString(2, dto.getTitle());
				ps.setString(3, dto.getContent());
				ps.setInt(4, dto.getId());
				ps.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		public void delete(String id) {
			String sql = "delete from board where id = "+id;
			try {
				con = DriverManager.getConnection(url,user,pwd);
				ps = con.prepareStatement(sql);
				ps.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		public BoardDTO reply_view(String id) {
			String sql = "select * from board where id=?";
			BoardDTO dto = new BoardDTO();
			
			try {
				con = DriverManager.getConnection(url,user,pwd);
				ps = con.prepareStatement(sql);
				ps.setString(1, id);
				rs = ps.executeQuery();
				if(rs.next()) {
					dto.setId(rs.getInt("id"));
					dto.setHit(rs.getInt("Hit"));
					dto.setIdgroup(rs.getInt("Idgroup"));
					dto.setIndent(rs.getInt("Indent"));
					dto.setStep(rs.getInt("Step"));
					
					dto.setContent(rs.getString("Content"));
					dto.setName(rs.getString("Name"));
					dto.setTitle(rs.getString("Title"));
					dto.setSavedate(rs.getTimestamp("Savedate"));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return dto;
		}
		private void replyShape(BoardDTO dto) {
			String sql = 
				"update board set step=step+1 where idgroup=? and step>?";
				//?값이 step값보다 크다면 step+1해라
				//답변을 달면 step이 올라가서 순서를 정렬해준다.
			try {
				con = DriverManager.getConnection(url,user,pwd);
				ps = con.prepareStatement(sql);
				ps.setInt(5, dto.getIdgroup());
				ps.setInt(6, dto.getStep());
				ps.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		public void reply(BoardDTO dto) {
			replyShape(dto);
			String sql = 
					"insert into board(id,name,title,content,idgroup,step,indent)"+
							"values(board_seq.nextval,?,?,?,?,?,?)";
			try {
				con = DriverManager.getConnection(url,user,pwd);
				ps = con.prepareStatement(sql);
				ps.setString(1, dto.getName());
				ps.setString(2, dto.getTitle());
				ps.setString(3, dto.getContent());
				ps.setInt(4, dto.getIdgroup());
				ps.setInt(5, dto.getStep()+1);
				ps.setInt(6, dto.getIndent()+1);
				ps.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		
}
