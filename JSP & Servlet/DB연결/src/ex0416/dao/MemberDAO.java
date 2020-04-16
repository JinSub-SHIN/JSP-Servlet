package ex0416.dao;

import java.sql.SQLException;
import java.util.List;

import ex0416.domain.Member;

/*
 *  회원관리에 필요한 CRUD..
 */

public interface MemberDAO {
	
	/*
	 *  회원등록
	 *  INSERT INTO MEMBER(ID,PWD,NAME,AGE,PHONE,ADDR,JOIN_DATE)
	 *  VALUES(?,?,?,?,?,?,?,SYSDATE)
	 */
	int insert(Member member) throws SQLException;
	
	
	/*
	 *  회원 ID 중복체크
	 *  @return : true 이면 중복, false이면 중복아님
	 */
	boolean duplicateCheck(String id) throws SQLException;
	
	
	/*
	 *  회원 전체검색 : 결과 레코드가 0개이상 가능. - List
	 */
	List<Member> selectAll() throws SQLException;
	
	/*
	 *  id에 해당하는 레코드 검색
	 *   : 결과 레코드가 0 또는 1 이면 Member로 리턴한다.
	 */
	Member selectById(String id) throws SQLException;
	
	
	/*
	 *  keyField에 해당하는(필드명) keyword를 포함한 레코드 검색하기
	 */
	List<Member> searchByKeyword(String keyField, String keyword) throws SQLException;
	
	/*
	 *  회원 삭제
	 */
	int delete(String id, String pwd) throws SQLException;
	
	
}
