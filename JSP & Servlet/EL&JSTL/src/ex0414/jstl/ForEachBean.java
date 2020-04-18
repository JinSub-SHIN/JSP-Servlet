package ex0414.jstl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.TreeMap;
import java.util.List;
import java.util.Map;

public class ForEachBean {

	private String [] names = {"��ȣ", "��ȣ", "����", "ȿ��", "����", "����"};
	private List<String> menus = 
			Arrays.asList(new String[] {"¥���", "«��", "«¥��", "������", "�Ⱥ�ä", "���", "��ä��"});
	private List<MemberDTO> memberList = new ArrayList<MemberDTO>();
	private Map<String, String> map = new TreeMap<String, String>();
	
	public ForEachBean() {
		
		// member����...
		
		memberList.add(new MemberDTO("jang", 20, "�Ǳ�", "010-2323-3232"));
		memberList.add(new MemberDTO("kim", 27, "�뱸", "010-1234-5678"));
		memberList.add(new MemberDTO("king", 30, "�λ�", "010-9876-5432"));
		memberList.add(new MemberDTO("girl", 19, "����", "010-1010-2020"));
		memberList.add(new MemberDTO("queen", 72, "����", "010-5555-7777"));
		
		map.put("kr", "���ѹα�");
		map.put("jp", "�Ϻ�");
		map.put("ch", "�߱�");
		map.put("us", "�̱�");
		map.put("fr", "������");
		
		
	}

	public String[] getNames() {
		return names;
	}

	public List<String> getMenus() {
		return menus;
	}

	public List<MemberDTO> getMemberList() {
		return memberList;
	}

	public Map<String, String> getMap() {
		return map;
	}
	
	
	
	
}
