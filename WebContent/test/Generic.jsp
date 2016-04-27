<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
Generic(제네릭)<br><br>

/*제네릭 메소드*/<br>
:한번에 서로 다른 데이터 형식을 출력해주는 기능의 메소드<br>
 <> <-- of 오브 : 넘겨올 타입 지정<br><br>
 
------------------<br>
 제네릭 : <br>
 클래스 내부에서 사용할 데이터의 타입을 외부에서 지정하는 기법.<br>
 즉! 클래스를 정의할 때 매개변수의 데이터타입을 확정하지 않고,<br>
 객체생성할때에 데이터타입을 지정하는 기능.<br>
------------------<br><br>

class Person<T>{ //<T>제네릭타입에 맞게 String으로 바뀐다<br>
	//참조변수<br>
	public T info;//T제네릭타입에 맞게 String으로 바뀐다<br><br>
	
	//생성자<br>
	public Person(T infor) {//T제네릭타입에 맞게 String으로 바뀐다<br>
		info = infor;<br>
	}<br>
}<br><br>

public class Ex4 {<br>
	public static void main(String[] args) {<br>
		Person<String> p1 = new Person<String>("안녕"); //1, new Integer(2)<br>
		System.out.println(p1.info);<br>
		Person<Integer> p2 = new Person<Integer>(1+2); <br>
		System.out.println(p2.info);<br>
	}<br>
}<br><br>

---출력결과---<br>
안녕<br>
3<br>
--------------<br>

</body>
</html>