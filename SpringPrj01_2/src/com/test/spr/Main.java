/*==========================================
   Main.java
   - main() 메소드가 포함된 테스트 클래스
==========================================*/

package com.test.spr;

public class Main
{

	public static void main(String[] args)
	{
		// [스프링이 처리하고 관리하게 될 영역] → 스프링 컨테이너 안에서 벌어지게 될 상황
		//--------------------------------------------------------------------------------

		// ① RecordImpl1(Record) 객체 생성 과정
		Record rec1 = new RecordImpl1();		//-- dependency (의존객체)
		
		// ② RecordImpl2(Record) 객체 생성 과정
		Record rec2 = new RecordImpl2();		//-- dependency (의존객체)
		
		// RecordViewImpl(RecordView) 객체 생성 과정
		//-- Record(의존객체- RecordImpl1 / RecordImpl2) 객체 필요
		RecordView view = new RecordViewImpl();
		
		// check~!!!
		// 의존 객체 주입
		//-- 의존 객체 주입 방법을 사용하게 되면
		//   느슨한 결합을 구성할 수 있게 되고
		//   한 쪽의 변동상황이 다른 쪽에 영향을 덜 줄 수 있게 된다.
		view.setRecord(rec1);		//-- setter injection
									//   (setter 를 통한 주입)
		
		//--------------------------------------------------------------------------------
		//@ → 업무지시서(xml)로 컨트롤

		view.input();
		view.output();
		
		
		/*
		 	Record.java 		→ 모터가 들어갈 공간
			RecordView.java 	→ 선풍기
			RecordImpl1.java 	→ 모터 1
			RecordImpl2.java 	→ 모터 2
			RecordViewImpl.java	→ 모터를 선풍기에 넣는 과정
			Main.java 			→ 컨테이너
		*/
		
	}

}
