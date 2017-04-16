package com.fitness.test;



import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.alibaba.fastjson.JSON;
import com.fitness.entity.Operator;
import com.fitness.service.UserService;
import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;


public class TestMybatis {
	private ApplicationContext ac;
	private UserService  userService;
	/*extends SpringJUnit4ClassRunner和@RunWith(SpringJUnit4ClassRunner.class)效果一样
	  spring-test 和junit效果一样 
	  @RunWith(SpringJUnit4ClassRunner.class)
	@ContextConfiguration(locations = { "classpath:spring.xml", "classpath:spring-mybatis.xml" })
	@Autowired自动注入
	*/	
	private static final Logger logger = Logger.getLogger(TestMybatis.class);
	@Before
	public void before(){
		//junit测试类，也可以用spring-test类
		ac = new ClassPathXmlApplicationContext(new String[]{"spring.xml","spring-mybatis.xml"});
		userService = (UserService) ac.getBean("userService");
	}

	
    @Test
	public void test1(){
		Integer id = 10001;
		Operator op = userService.getById(id);
		logger.info(op.getOpName());
	}

	
	@Test
	public void test2(){
		List<Operator> list = userService.getAll();
		logger.info(JSON.toJSONStringWithDateFormat(list, "yyyy-MM-dd HH:mm:ss"));
	} 
	
	@Test
	public void test3(){
		Operator op = userService.getByQQnum("541514716");
		logger.info(JSON.toJSONStringWithDateFormat(op, "yyyy-MM-dd HH:mm:ss"));
	} 
	@Test
	public void test4(){
		Operator record = new Operator();
		record.setOpName("teest");
		record.setOpPass("123");
		record.setOpQqnum("5156464");
		record.setOpRole(9001);
		userService.saveOperator(record);
		//logger.info(JSON.toJSONStringWithDateFormat(record, "yyyy-MM-dd HH:mm:ss"));
	} 
	
	
	
	
	@Autowired
	public void setUserService(UserService service){
		this.userService = service;
	}

	
}
