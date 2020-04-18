package ex0414.jstl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.TreeMap;
import java.util.List;
import java.util.Map;

public class ForEachBean {

	private String [] names = {"¼±È£", "¹ÎÈ£", "ÈñÀ±", "È¿Á¤", "ÁøÇõ", "¿µÁø"};
	private List<String> menus = 
			Arrays.asList(new String[] {"Â¥Àå¸é", "Â«»Í", "Â«Â¥¸é", "ÅÁ¼öÀ°", "ÆÈº¸Ã¤", "¿ï¸é", "ÀâÃ¤¹ä"});
	private List<MemberDTO> memberList = new ArrayList<MemberDTO>();
	private Map<String, String> map = new TreeMap<String, String>();
	
	public ForEachBean() {
		
		// memberÀúÀå...
		
		memberList.add(new MemberDTO("jang", 20, "ÆÇ±³", "010-2323-3232"));
		memberList.add(new MemberDTO("kim", 27, "´ë±¸", "010-1234-5678"));
		memberList.add(new MemberDTO("king", 30, "ºÎ»ê", "010-9876-5432"));
		memberList.add(new MemberDTO("girl", 19, "Á¦ÁÖ", "010-1010-2020"));
		memberList.add(new MemberDTO("queen", 72, "¼­¿ï", "010-5555-7777"));
		
		map.put("kr", "´ëÇÑ¹Î±¹");
		map.put("jp", "ÀÏº»");
		map.put("ch", "Áß±¹");
		map.put("us", "¹Ì±¹");
		map.put("fr", "ÇÁ¶û½º");
		
		
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
