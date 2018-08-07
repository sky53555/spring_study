package test.main;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import test.service.CafeService;
import test.service.MemberService;

/*
 * 
 * 	 - AOP 란 ?
 *   Aspect Oriented Programming (관점,관심 지향 프로그래밍) 
 *   
 *   1. 로그찍고 분석하는 작업
 *   2. 메소드의 성능(실행시간) 측정
 *   3. 트랜젝션 관리 
 *   4. 인증 작업 
 *   
 *  Aspectj Expression
	
	1. execution(public **(...)) => 접근 지정자가 pulbic 인 메소드가 point cut
	2. execution(* test.service.*.*(..)) =>
	test.service 패키지의 모든 메소드가 point cut
	3. execution(pulic void insert*(...)) =>
	접근 지정자는 pulbic  리턴 tpye은 void 이고 메소드명이
	insert로 시작하는 모든 메소드가 point cut
	4. execution(*delete*(*)) =>
	메소드 명이 delete 로 시작하고 인자로 1개 전달받는
	메소드가 point cut
	5. execution(*delete*(*.*)) =>
	메소드 명이 delete 로 시작하고 인자로 2개 전달받는
	메소드가 point cut
 *   
 *   
 */
public class MainClass {
	public static void main(String[] args) {
		ApplicationContext context=
		new ClassPathXmlApplicationContext("test/main/init.xml");
		
		//MemberService type 객체의 참조값 얻어오기
		MemberService mService=context.getBean(MemberService.class);
		
		mService.insert();
		mService.select();
		
		CafeService cService=context.getBean(CafeService.class);
		cService.insert();
		cService.select();
	}
}













