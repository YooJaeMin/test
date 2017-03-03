package services;

import java.util.*;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TestService {
	@Autowired
	SqlSessionFactory factory;
	
	public List<Map> getAll() {
		List<Map> list = new ArrayList<>();
		return list;
	}
}