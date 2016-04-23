<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
<!--  
	예외 처리(Exception, try~catch, throws, throw)
	
	예외 클래스는 많은데 모든 예외 클래스는 Throwable 클래스를 상속받는다.
	Throwable을 상속받는 클래스는 크게 두 가지로 나뉜다.
	오류 클래스(Error)와 예외 클래스(Exception)!
	Error는 시스템의 문제,Exception은 개발자가 처리할 수 있는 예외 클래스
	
	Exception의 수많은 예외 클래스 중 RuntimeException 클래스는 코드와 관련이 깊은 예외 클래스이다.
	어떤 내용들이냐면 배열의 범위를 벗어나거나,
	값이 null인 변수를 호출하거나 클래스의 형 변환을 잘못하는 등 주로 실수에 의해 발생된다.
	따라서 RuntimeException이 발생할 가능성이 있다면 try~catch 문 보다 코드를 고치는 것이 좋다.

	Exception 클래스 중 RuntimeException 외의 클래스에는 
	FileNotFoundException (없는 파일 처리), 
	ClassNotFoundException (클래스 이름을 잘못 정의), 
	DataFormatException (입력 데이터 형식이 다를 때 처리) 등이 있는데
	이런 종류의 예외들은 반드시 처리를 해줘야 에러가 안난다.
	그러니까 어떻게 보면 예외 에러가 나면 try~catch로 처리해주면 되는 것이다.
	
	try{
		// 예외가 발생할 수 있는 상황
	}catch(예외클래스 e){
		// 예외 발생 상황을 e로 정의하여 처리
	}
	
	** 혹은 catch를 두 번 써서
	try{
		// 예외가 발생할 수 있는 상황
	}catch(예외클래스 e){
		// 예외 발생 상황1을 e로 정의하여 처리
	}catch(예외클래스 e){
		// 예외 발생 상황2를 e로 정의하여 처리
	}

	** 또한 finally를 사용할 수 있다
	finally는 예외 발생 여부와 상관없이 항상 실행이 된다
	try{
		// 예외가 발생할 수 있는 상황
	}catch(예외 클래스 e){
		// 예외 발생 상황을 e로 정의하여 처리
	}finally{
		// 항상 실행됨
	}

	** 예외 처리는 try~catch 문뿐만 아니라 다르게 사용되기도 한다
	throw로 예외 처리를 발생시키면
	throws로 예외 클래스를 받고 던져버림
	throws를 통해 예외를 던지는 것을 예외 회피라고 부름
	이런 경우에는 따로 예외 클래스를 정의
	throws는 메소드에서 사용
	
	void method() throws Exception{ //Exception 예외를 던짐
		//예외 상황
	Exception exception = new Exception();
	throw exception ; //예외 발생
	}
	
	이런 예외 상황을 프로그래머가 직접 정의할 수도 있는데
	이럴 때 Exception을 상속받아서 정의.

	class StudyException extends Exception { // 예외 처리
		StudyException() {
			super("예외상황 입니다."); // getMessage 메소드 호출 시 출력되는 문장
		}
	}

	public class TryCatch {
		public static void main(String[] args) throws StudyException {
			StudyException sexception = new StudyException();
			​sexception.getMessage(); // '예외상황 입니다' 출력
			throw sexception;
		}
	}
-->
</body>
</html>