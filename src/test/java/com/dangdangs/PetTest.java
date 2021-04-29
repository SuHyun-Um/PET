package com.dangdangs;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.dangdangs.pet.dao.PetDAO;
import com.dangdangs.pet.service.PetService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:config/**/*.xml")
public class PetTest {

	@Autowired
	private SqlSessionTemplate ss;
	@Autowired
	private PetDAO dao;
	@Autowired PetService service;

	@Ignore
	@Test
	public void mapperTest() throws Exception{
		
		System.out.println(ss.selectList("pet.dao.PetDAO.deleteDpetByPno", 3));
	}
	
	@Ignore
	@Test
	public void daoTest() throws Exception{
		dao.delete(4);
	}
	
	@Test
	public void serviceTest() throws Exception{
		service.deletePet(5);
	}
}
