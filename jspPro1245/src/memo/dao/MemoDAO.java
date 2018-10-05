package memo.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import memo.dto.MemoDTO;
import sqlmap.MybatisManager;

public class MemoDAO {
	public List<MemoDTO> listMemo(String searchkey, String search) {
		SqlSession session = MybatisManager.getInstance().openSession();
		List<MemoDTO> list = null;
		try {
			if(searchkey.equals("writer_memo")) {
				list = session.selectList("memo.listAll", search);
			} else {
				Map<String, String> map = new HashMap<>();
				map.put("searchkey", searchkey);
				map.put("search", search);
				list = session.selectList("memo.list", map);
			}
			for(MemoDTO dto : list) {
				String memo = dto.getMemo();
				memo = memo.replace("  ", "&nbsp;&nbsp;");
				memo = memo.replace("<", "&lt;");
				memo = memo.replace(">", "&gt;");
				if(searchkey.equals("memo")) {
					if(memo.indexOf(search) != -1) {
						memo = memo.replace(search, "<font color='red'>"+search+"</font>");
					}
				}
				dto.setMemo(memo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(session != null) session.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return list;
	} //listMemo()

	public void insertMemo(MemoDTO dto) {
		SqlSession session = MybatisManager.getInstance().openSession();
		session.insert("memo.insert", dto);
		session.commit();
		session.close();
	} //insertMemo()
	
	public MemoDTO viewMemo(int idx) {
		SqlSession session = MybatisManager.getInstance().openSession();
		MemoDTO dto = session.selectOne("memo.view", idx);
		session.close();
		return dto;
	} //viewMemo()

	public void updateMemo(MemoDTO dto) {
		//mybatis
		SqlSession session = MybatisManager.getInstance().openSession();
		session.update("memo.update", dto);
		session.commit();
		session.close();
	}//updateMemo()

	public void deletMemo(int idx) {
		SqlSession session = MybatisManager.getInstance().openSession();
		session.delete("memo.delete", idx);
		session.commit();
		session.close();
	}
}