package com.dangdangs.diag.service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dangdangs.board.dao.BoardDAO;
import com.dangdangs.board.vo.BoardVO;
import com.dangdangs.diag.dao.DiagDAO;
import com.dangdangs.diag.vo.DiagVO;

@Service
public class DiagServiceImpl implements DiagService {

	@Autowired
	private DiagDAO diagDAO;
	@Autowired
	private BoardDAO boardDAO;
	
	@Override
	public List<String> doDiag(DiagVO diagVO) {
		// ���� �ο��� ���� map
		Map<String, Double> map = new HashMap<>();
		List<String> synameList = diagVO.getSyname();
		
		// ���� ���� ����ġ �ο�
		for(String syname: synameList) {
			List<String> tempList = diagDAO.selectDnameBySyname(syname);
			map = makeMap(map, tempList, 1.d);
		}
		
		// ������ ���� ����ġ �ο�
		List<String> tempList = diagDAO.selectDnameBySpcode(diagVO.getSpcode());
		map = makeMap(map, tempList, 0.2);
		
		// ���̿� ���� ����ġ �ο�
		tempList = diagDAO.selectDnameByDAge(diagVO.getDage());
		map = makeMap(map, tempList, 0.4);
		

		// 1�� �̸��� ����ġ�� ������ �ĺ������� ����

		// Comparator Ŭ���� �����Ǹ� ����, ����ġ ���� �������� ����
		List<Map.Entry<String, Double>> sortedList = new LinkedList<>(map.entrySet());
		
        Collections.sort(sortedList, new Comparator<Map.Entry<String, Double>>() {
			@Override
			public int compare(Map.Entry<String, Double> o1, Map.Entry<String, Double> o2) {
                int comparision = ((o1.getValue() - o2.getValue()) * -1) > 0 ? 1 : -1;
                return comparision == 0 ? o1.getKey().compareTo(o2.getKey()) : comparision;
			}
		});
		
        // ���������� ���� LinkedHashMap�� ���
        Map<String, Double> sortedMap = new LinkedHashMap<>();
        for(Iterator<Map.Entry<String, Double>> iter = sortedList.iterator(); iter.hasNext();){
            Map.Entry<String, Double> entry = iter.next();

            // ����ġ�� 1�� �̸��� ������ ���� 
            if (entry.getValue() >= 1) {
            	sortedMap.put(entry.getKey(), entry.getValue());
            }


        }
        System.out.println("����ǥ: " + sortedMap);
        int tieCount = countTie(sortedMap);
        // ���ܰ�� ���� ��ȯ
        List<String> sortedKeyset = new ArrayList<>(sortedMap.keySet());
        return makeResult(sortedKeyset, tieCount);
	}
	
	@Override
	public List<BoardVO> getBnoByDname(List<String> dnameList) {
		List<BoardVO> voList = new ArrayList<>();
		List<String> list = new ArrayList<>(); 
		List<String> tempList = new ArrayList<>(dnameList);
		if(tempList.get(0).contains(", ")) {
			String[] tokens = tempList.get(0).split(", ");
			tempList.remove(0);
			for (String t: tokens) {
				list.add(t);
			}
			for (String dname: tempList) {
				list.add(dname);
			}
		} else list = dnameList;
		for (String dname: list) {
			voList.add(boardDAO.selectBnoByDname(dname));
		}
		return voList;
	}
	
	@Override
	public String makeURL(List<String> dnameList) {
		StringBuffer sb = new StringBuffer("result?");
		Iterator<String> itr = dnameList.iterator();
		while(itr.hasNext()) {
			sb.append("dname=");
			sb.append(itr.next());
			if (itr.hasNext()) {
				sb.append("&");
			}
		}
		return sb.toString();
	}

	// ����ġ�� ����Ͽ� �� ���·� ��ȯ
	private Map<String, Double> makeMap(Map<String, Double> map, List<String> list, double weight) {
		for(String e: list) {
			if(!map.containsKey(e)) map.put(e, weight);
			else map.put(e, Math.round((map.get(e) + weight)*10)/10.0);
		}
		return map;
	}
	
	// 1��� ������ �ִ��� �˻� �� ���� ���� ��ȯ
	private int countTie(Map<String, Double> map){
		List<Double> scoreList = new ArrayList<>(map.values());
		double highScore = scoreList.get(0);
		int count = 0;
		
		for(double score: scoreList) {
			if(highScore == score) count++;
			else break;
		}
		return count;
	}
	
	// ���� ������ ���� ��� list ��ȯ
	private List<String> makeResult(List<String> sortedKeyset, int count){
		List<String> result = new ArrayList<>();
		StringBuffer sb = new StringBuffer();
		if (count > 5 ) {
			return null;
		} else {
			if (count != 1) {
				// ���� ���� �� ó��
				// 0��° �ε����� ���� �÷� ��ġ��
	        	for(int i = 0; i < count; i++) {
	        		sb.append(sortedKeyset.get(i));
	        		if (i == (count - 1)) break;
	        		sb.append(", ");
	        	}
	        	sortedKeyset.set(0, sb.toString());
	        	for(int i = 1; i < count; i++) {
	        		sortedKeyset.remove(1);
	        	}
	        }
			// ����� 6�� �̻��� �� ���� 5�� �׸� ���
			if(sortedKeyset.size() > 5) {
				for(int i = 0; i < 6-count; i++) {
		    		result.add(sortedKeyset.get(i));
		    	}
			} else {
				for(String s: sortedKeyset) {
					result.add(s);
				}
			}
			return result;
		}
	}
}
