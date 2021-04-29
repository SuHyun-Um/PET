package com.dangdangs;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.dangdangs.board.dao.BoardDAO;
import com.dangdangs.board.service.BoardService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:config/**/*.xml")
public class BoardTest {

	@Autowired
	private SqlSessionTemplate ss;
	@Autowired
	private BoardDAO dao;
	@Autowired
	private BoardService service;
	
	@Ignore
	@Test
	public void 매퍼테스트() throws Exception{
		System.out.println(ss.selectList("board.dao.BoardDAO.selectAll"));
	}
	
	@Ignore
	@Test
	public void 진단테스트() throws Exception{
		// 점수 부여를 위한 map
		Map<String, Double> map = new HashMap<>();
		
		// 증상 리스트
		List<String> symptom = new ArrayList<>();
		symptom.add("눈불투명");
		symptom.add("눈시력저하");
		symptom.add("경련");
		symptom.add("구토");
		symptom.add("열");
		symptom.add("혈뇨");
		// 증상에 따른 가중치 부여
		for(String e: symptom) {
			List<String> list = ss.selectList("board.dao.BoardDAO.selectDnameBySyname", e);
			for(String l: list) {
				if(!map.containsKey(l)) map.put(l, 1.d);
				else map.put(l, map.get(l) + 1);
			}
		}
		// 견종
		String species = "yteri";
		// 종에 따른 가중치 부여
		List<String> list = ss.selectList("board.dao.BoardDAO.selectDnameBySpcode", species);
		for(String l: list) {
			if(!map.containsKey(l)) map.put(l, 0.2);
			else map.put(l, Math.round((map.get(l) + 0.2)*10)/10.0);
		}
		
		// 나이
		int age = 1;
		// 나이에 따른 가중치 부여
		list = ss.selectList("board.dao.BoardDAO.selectDnameByAge", age);
		for(String l: list) {
			if(!map.containsKey(l)) map.put(l, 0.4);
			else map.put(l, Math.round((map.get(l) + 0.4)*10)/10.0);
		}
		
		// 가중치 따라 내림차순 정렬
		List<Map.Entry<String, Double>> orderedList = new LinkedList<>(map.entrySet());
        Collections.sort(orderedList, new Comparator<Map.Entry<String, Double>>() {
			@Override
			public int compare(Map.Entry<String, Double> o1, Map.Entry<String, Double> o2) {
                int comparision = ((o1.getValue() - o2.getValue()) * -1) > 0 ? 1 : -1;
                return comparision == 0 ? o1.getKey().compareTo(o2.getKey()) : comparision;
			}
		});
        
		System.out.println(orderedList);
	}
	
	@Ignore
	@Test
	public void 결과테스트() {
//		BoardVO vo = ss.selectOne("board.dao.BoardDAO.selectResult", 1);
//		System.out.println(vo);
//		System.out.println(service.selectResultBoard(1));
		List<String> list = new ArrayList<>();
		list.add("감기, 백혈병");
		list.add("종양");
		list.add("탈구");
		
		if(list.get(0).contains(", ")) {
			String[] tokens = list.get(0).split(", ");
			for (String e: tokens) {
				System.out.println(e);
			}
		} else {
			System.out.println("없음");
		}
	}
	@Ignore
	@Test
	public void 매퍼테스트2() throws Exception{
		System.out.println(ss.selectList("board.dao.BoardDAO.selectBnoBySpcode", "mpoo"));
	}
	
	@Ignore
	@Test
	public void DaoTest() throws Exception{
		System.out.println(dao.selectSynameByBno(1));
	}
	
	@Ignore
	@Test
	public void ServiceTest() throws Exception{
		System.out.println(service.selectBnoBySpcode("mpoo"));
	}
	
	@Ignore
	@Test
	public void mapperTest() throws Exception{
		
		System.out.println(ss.selectList("board.dao.BoardDAO.selectSyNameByBno", 2));

	}
}
