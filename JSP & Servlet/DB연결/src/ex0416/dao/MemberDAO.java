package ex0416.dao;

import java.sql.SQLException;
import java.util.List;

import ex0416.domain.Member;

/*
 *  ȸ�������� �ʿ��� CRUD..
 */

public interface MemberDAO {
	
	/*
	 *  ȸ�����
	 *  INSERT INTO MEMBER(ID,PWD,NAME,AGE,PHONE,ADDR,JOIN_DATE)
	 *  VALUES(?,?,?,?,?,?,?,SYSDATE)
	 */
	int insert(Member member) throws SQLException;
	
	
	/*
	 *  ȸ�� ID �ߺ�üũ
	 *  @return : true �̸� �ߺ�, false�̸� �ߺ��ƴ�
	 */
	boolean duplicateCheck(String id) throws SQLException;
	
	
	/*
	 *  ȸ�� ��ü�˻� : ��� ���ڵ尡 0���̻� ����. - List
	 */
	List<Member> selectAll() throws SQLException;
	
	/*
	 *  id�� �ش��ϴ� ���ڵ� �˻�
	 *   : ��� ���ڵ尡 0 �Ǵ� 1 �̸� Member�� �����Ѵ�.
	 */
	Member selectById(String id) throws SQLException;
	
	
	/*
	 *  keyField�� �ش��ϴ�(�ʵ��) keyword�� ������ ���ڵ� �˻��ϱ�
	 */
	List<Member> searchByKeyword(String keyField, String keyword) throws SQLException;
	
	/*
	 *  ȸ�� ����
	 */
	int delete(String id, String pwd) throws SQLException;
	
	
}
