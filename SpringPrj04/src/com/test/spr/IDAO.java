/*=============
   IDAO.java
=============*/

package com.test.spr;

import java.sql.SQLException;
import java.util.List;

public interface IDAO
{
	// @ 상속받아 메소드 오버라이딩할 때, 메소드가 가지고 있는 예외를 추가해서 처리할 수 없다.
	// @ 재정의된 하위 클래스의 메소드 접근제어지시자는
	//   상위 클래스의 메소드 접근제어지시자보다 범위가 크거나 같아야 한다.
	public List<MemberDTO> list() throws ClassNotFoundException, SQLException;

}
