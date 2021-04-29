package com.dangdangs.map.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dangdangs.map.dao.MapDAO;
import com.dangdangs.map.vo.MapVO;


@Service
public class MapServiceImpl implements MapService {
   @Autowired
   private MapDAO MapDAO;

   
   @Override
   public List<MapVO> selectAllMapMap() {
        List<MapVO> hosList = MapDAO.selectAllMap();
        return hosList;
   }
}