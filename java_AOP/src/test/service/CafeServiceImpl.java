package test.service;

public class CafeServiceImpl implements CafeService {

	@Override
	public void insert() {
		System.out.println("카페에 글을 추가합니다");
		
	}

	@Override
	public void select() {
		System.out.println("카페 글을 선택합니다");
		
	}

}
