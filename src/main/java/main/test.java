package main;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import spring.MemberDao;

public class test {
	


	public static void main(String[] args) {
		AnnotationConfigApplicationContext ctx = 
				new AnnotationConfigApplicationContext(MemberDao.class);
			test t2 = ctx.getBean("t1", test.class);
			
			System.out.println(t2);

	}
}
