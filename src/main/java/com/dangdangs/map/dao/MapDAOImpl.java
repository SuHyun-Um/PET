package com.dangdangs.map.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dangdangs.map.vo.MapVO;
@Repository
public class MapDAOImpl implements MapDAO {

    @Autowired
    private SqlSessionTemplate session;
   @Override
   public List<MapVO> selectAllMap() {
       List<MapVO> hosList = session.selectList("map.dao.MapDAO.selectAllMap");
           return hosList;
   }
}