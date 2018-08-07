package test.service;

import org.springframework.stereotype.Component;

//component scan 했을 때 bean 으로 만들기 위한 어노테이션
@Component
public class WritingServiceImpl implements WritingService {

	@Override
	public void write() {
		System.out.println("쓴다");
		try {
			Thread.sleep(5000);
		}catch(Exception e) {};
		
	}

	@Override
	public void writeToFriend() {
		System.out.println("쓴다 친구에게");
		try {
			Thread.sleep(5000);
		}catch(Exception e) {};
		
	}

	@Override
	public void writeToTeacher(String name) {
		System.out.println(name+"선생님에게");
		try {
			Thread.sleep(5000);
		}catch(Exception e) {};
		
	}

	@Override
	public String writeAndGet(int num) {
		System.out.println("작성하고 문자열을 돌려줍니다.");
		return "Acorn";
	}

}
