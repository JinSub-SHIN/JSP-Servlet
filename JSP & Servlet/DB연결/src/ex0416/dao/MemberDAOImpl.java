package ex0416.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import ex0416.domain.Member;
import ex0416.util.DbUtil;

public class MemberDAOImpl implements MemberDAO {

	@Override
	public int insert(Member member) throws SQLException {
		Connection con= null;
		PreparedStatement ps = null;				
		String sql = "INSERT INTO MEMBER VALUES(?,?,?,?,?,?,sysdate)";
		int i = 0 ;
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, member.getId());
			ps.setString(2, member.getPwd());
			ps.setString(3, member.getName());
			ps.setInt(4, member.getAge());
			ps.setString(5, member.getPhone());
			ps.setString(6, member.getAddr());
			i = ps.executeUpdate();
			
		} finally {
			DbUtil.dbClose(con, ps);
		}
		return i;
	}

	@Override
	public boolean duplicateCheck(String id) throws SQLException {
		
		return false;
	}

	@Override
	public List<Member> selectAll() throws SQLException {
		
		Connection con= null;
		PreparedStatement ps = null;
		ResultSet rs = null;		
		List<Member> list = new ArrayList<Member>();
		String sql ="SELECT ID, PWD, NAME, AGE, PHONE, ADDR, JOIN_DATE FROM MEMBER";
		
		try {
			//로드 연결 실행 닫기
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			// ? 의 개수만큼 setXxx() 필요하다.
			rs = ps.executeQuery();
			while(rs.next()) {
				Member member = new Member(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), 
						rs.getString(5), rs.getString(6), rs.getString(7));
				list.add(member);				
			}			
			
		} finally {
			DbUtil.dbClose(con, ps, rs);
		}		
		
		return list;
	}

	@Override
	public Member selectById(String id) throws SQLException {
		
		return null;
	}

	@Override
	public List<Member> searchByKeyword(String keyField, String keyword) throws SQLException {
		
		Connection con= null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Member> list = new ArrayList<Member>();
		System.out.println(keyField + " : " + keyword);
		String sql ="SELECT ID, PWD, NAME, AGE, PHONE, ADDR, JOIN_DATE FROM MEMBER WHERE "+keyField+" LIKE ?";
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, "%"+keyword+"%");
			rs = ps.executeQuery();
			while(rs.next()) {
				Member member = new Member(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), 
						rs.getString(5), rs.getString(6), rs.getString(7));
				list.add(member);
				System.out.println(list.toString());
			}	
		} finally {
			DbUtil.dbClose(con, ps, rs);
		}
		
		return list;
	}

	@Override
	public int delete(String id, String pwd) throws SQLException {
		Connection con= null;
		PreparedStatement ps = null;		
		int i = 0;
		String sql = "DELETE FROM MEMBER WHERE id=? AND pwd=?";
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, pwd);
			i = ps.executeUpdate();
		} finally {
			DbUtil.dbClose(con, ps);
		}
		return i;
	}

}
