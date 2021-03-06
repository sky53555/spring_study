package test.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;
/*
 *  횡단 관심사(Cross Concern)를 Aspect 로 작성 하기 
 */

@Aspect // aspect 가 되기 위한 설정 
@Component  // bean 으로 만들기 위한 설정 
public class PrintLogAspect {
	
	@Around("execution(public void insert())")
	public Object printLog(ProceedingJoinPoint joinPoint) 
				throws Throwable{
		System.out.println("--비즈니스 로직을 수행하기 이전 입니다.");
		/*
		 *  joinPoint 객체의 proceed() 메소드를 호출하는 시점이
		 *  AOP 가 적용된 메소드가 수행되는 시점이다. 
		 *  
		 *  .proceed() 메소드가 리턴해주는 객체가 AOP 가 적용된 메소드가
		 *  리턴해주는 객체이다. 
		 *  만일 AOP 가 적용된 메소드의 리턴 type 이 void 이면
		 *  obj 는 null 이다. 
		 */
		Object obj=joinPoint.proceed();
		
		System.out.println("--비즈니스 로직을 수행했습니다.");
		return obj;
	}
}








