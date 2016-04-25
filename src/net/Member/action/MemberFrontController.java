package net.Member.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//01.member/memberjoin.jsp���ϻ���
//02.src/net.Member.action��Ű������/ActionForward.javaŬ��������
//03.src/net.Member.action�ȿ�/Action.java�������̽�����
//04.src/net.Member.action�ȿ�/MemberFrontController.javaŬ��������
public class MemberFrontController extends HttpServlet{
//������Ŭ������: MemberFrontController extends(���) HttpServlet�� ��ӹ���.
	
	// ������ �Ϸ��� ProjectFrontController�� ��û�ϴ� �������� �־�� �Ѵ�. ��!! ������Ʈ�ʿ�..
	// ��� .do�� ������ ��û������ �������� �´�
	
	/** ���������� ȣ��ȴ� //get,post �Ѵ� ȣ���Ҷ� doProsess�� **/
	private void doProcess(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException{
		System.out.println("doProcess() �޼ҵ� ȣ��");
		
		/** �����ּ� �������� **/
		String requestURI = request.getRequestURI();
		System.out.println("URI�ּ�: " + requestURI);
		//doProcess�� �޾ƿ� request������ URI�ּ�(������Ʈ��Ʒ��� ���) /Dailyline/memberjoin.me
		
		/** ������Ʈ ���� ������ ���� �޼ҵ尡 �ִ�. **/
		String contextPath = request.getContextPath();
		System.out.println("contextPath : " + contextPath);
		//doProcess�� �޾ƿ� request������ ContextPath�ּ�(�� ������Ʈ��) /Dailyline
		
		/** �����ּҿ��� ������Ʈ���� ���̸�ŭ ���� **/
		String command = requestURI.substring(contextPath.length());
		System.out.println("�����ּ�: " + command);
		//�����س��� requestURI�ּ�(/Dailyline/memberlogin.me)���� 
		//contextPath(/Dailyline)�� substring(���ڿ�������)(�� ������Ʈ���� �� URI�ּ�) /memberjoin.me
		
		/** �̵����� **/
		//�̵����� [�� �ٷ�� ��������]
		//�������� �̿��� ��ɿ�� ���� //�������̽��� �׼�Ÿ�� �������̽���
		ActionForward forward = null;
		Action action = null;
		//02.src/net.Member.action��Ű������/ActionForward.javaŬ���� �� ���� null�� �ʱ�ȭ
		//03.src/net.Member.action�ȿ�/Action.java�������̽� �� ���� null�� �ʱ�ȭ
		
		/** �����ּҺ� **/
		if(command.equals("/memberjoin.me")){//=-:������ּҰ����� , .equals:����ǳ�����ü����
		// command�� ���ִ� /memberjoin.me��� �ּҰ��� memberjoin.me�� ������
			forward=new ActionForward();
			//���ο� ActionForward()��ü�� ����
			forward.setPath("./member/memberjoin.jsp");
			//ActionForward()Ŭ������ setPath()�޼ҵ��� ���� ./member/memberjoin.jsp�� ����
			forward.setRedirect(false);
			//false:forward / true:sendRedirect
			//ActionForward()Ŭ������ setRedirect()�޼ҵ尪�� false�� ����(�� forward��Ļ��)
			/** ��) A.jsp���� B.jsp�� submit�� �ϰ�, B.jsp���� C.jsp�� forward(�Ǵ� redirect)�Ͽ��� ���
	   		   	   A.jsp =>(submit) B.jsp ->(forward or redirect) C.jsp	
			 	forward  : C.jsp������ A.jsp�� B.jsp���� ������ �Ķ���͸� ����Ҽ� ����
			 			    �ּ�â���� B.jsp�� ��������(C.jsp�� ������ ������ ���������� �����)
				redirect : C.jsp������ A.jsp�� B.jsp���� ������ �Ķ���͸� ����Ҽ� ����  
						   �ּ�â���� C.jsp�� ��������(C.jsp�� ������ ������ �󿡼� �����) **/
		} else if(command.equals("/login.me")){
			// ./member/login.jsp
			forward=new ActionForward();
			forward.setPath("./member/login.jsp");
			forward.setRedirect(false);
		}
		
		
		
		
		/** ActionForward ���� ���� **/
		// ��� ó�����(���������)�ܿ� ���ϴ� �������� �̵��ؾ� �ϱ� ������ �� �ʿ�.
		// �̵�
		if (forward != null) {//forward�� ������쳪 ����ڰ� �������� ��� 
		//forward�� ���� null�� �ƴҰ��(�̵������� �������//�ʱ�ȭ���ȵǾ��������)
			// 1.������ �ּ�(.do,.me ��)�� �������� �����̷�Ʈ ���
			//   �ּ�ǥ������ �ּҰ� �ٲ�
			// 2.��ü���� �ּ�(���� �� �ڿ� .jsp ��)�� ������ ������ ���
			//   �ּ�ǥ������ �ּҰ� �ٲ��� ����.
			
			if (forward.isRedirect()) {//true : �����̷�Ʈ //�����̷�Ʈ�� ��쿡��!
				//ActionForward()Ŭ������ isRedirect()�޼ҵ�
				response.sendRedirect(forward.getPath());//������ ����� ������ Path��η� �̵�
			} else {//false : ������ //�����̷�Ʈ�� �ƴ� ��쿡��!
				RequestDispatcher dispacher = request.getRequestDispatcher(forward.getPath());
				//�̵��� ����. // ���� ��������Ʈ�� ������ �ִ� �ڿ��� ���������� ������ �˾Ƽ� �̵�..?
				dispacher.forward(request, response);
			}
		}
	}
	
	// get���� post���� �𸣹Ƿ� �Ѵ� �������̵� �����ش� alt+shift+s+v
	/** ��� get **/
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		System.out.println("get ���(member)");
		doProcess(request, response);
	}
	
	/** ��� post **/
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		System.out.println("post ���(member )");
		doProcess(request, response);
	}

	
	
	
	
}
