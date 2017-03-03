package services;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TestService {
	@Autowired
	SqlSessionFactory factory;
	
	public List<Map> getAll() {
		List<Map> list = new ArrayList<>();
		SqlSession session = factory.openSession();
		list = session.selectList("mappers.fish.getList");
		session.close();
		return list;
	}
	
	public List<Map> getalchorList() {
		List<Map> list = new ArrayList<>();
		SqlSession session = factory.openSession();
		list = session.selectList("mappers.fish.alchorList");
		session.close();
		return list;
	}
	
	public List<Map> getStyleList(String style) {
		List<Map> list = new ArrayList<>();
		HashMap map = new HashMap();
		map.put("style", style);
		SqlSession session = factory.openSession();
		list = session.selectList("mappers.fish-mapper.styleList",map);
		session.close();
		return list;
	}
	
	public List<Map> getScoreList() {
		List<Map> list = new ArrayList<>();
		SqlSession session = factory.openSession();
		list = session.selectList("mappers.fish-mapper.scoreList");
		session.close();
		return list;
	}
	
	
	
	public Boolean insertOne() {
		Boolean b = true;
		return b;
	}
}