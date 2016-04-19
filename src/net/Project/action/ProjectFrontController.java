package net.Project.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("*.do") //�����Ϸ��� ���� �ּ�! @
public class ProjectFrontController extends HttpServlet {
		
	// ������ �Ϸ��� ProjectFrontController�� ��û�ϴ� �������� �־�� �Ѵ�. ��!! ������Ʈ�ʿ�..
	// get���� post���� �𸣹Ƿ� �Ѵ� �������̵� �����ش� alt+shift+s+v
	// ��� .do�� ������ ��û������ �������� �´�
		
	/** ���������� ȣ��ȴ� //get,post �Ѵ� ȣ���Ҷ� doProsess�� **/
	private void doProcess(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		System.out.println("doProcess() �޼ҵ� ȣ��");
		//http://localhost:8080/Dailyline/main.do
		
		/** �����ּ� �������� **/
		String requestURI = request.getRequestURI();
		System.out.println("URI address : "+requestURI);
		
		/** ������Ʈ ���� ������ ���� �޼ҵ尡 �ִ�. **/
		String contextPath = request.getContextPath();
		System.out.println("ContextPath : "+contextPath);
		
		/** �����ּҿ��� ������Ʈ���� ���̸�ŭ ���� **/
		String command = requestURI.substring(requestURI.length());
		System.out.println("command : " + command);
		//System.out.println("�����ּ� : "+ command);
		
		/** �������� ���� **/
		ActionForward forward = null;
		//�̵����� [�� �ٷ�� �������� �� �ʱ�ȭ�� ���ִ°� ���� �׷��� = null�� �Ἥ �ʱ�ȭ]
		Action action = null;
		//�������� �̿��� ��ɿ�� ���� //�������̽��� �׼�Ÿ�� �������̽���
		
		
		/** ���� ��� **/
		if(command.equals("/main.do")){
			// main.do�� ��û�� ���
			forward = new ActionForward();
			// ���ο� ActionForward()��ü�� ������
			forward.setPath("./main/main.jsp");
			// ./main/main.jsp�� �̵��ؾ� ��, 
			forward.setRedirect(false);
			// �����̷�Ʈ�� ���ϰڴ� false. ������ ����� ���ڴٴ� ��
		}
		
		/** ActionForward ���� ���� **/
		// ��� ó����� �ܿ� ���ϴ� �������� �̵��ؾ� �ϱ� ������ �� �ʿ�.
		// �̵�
		if (forward != null) {//forward�� ������쳪 ����ڰ� �������� ���
			// 1.������ �ּ�(.do ��)�� �������� �����̷�Ʈ ���
			//   �ּ�ǥ������ �ּҰ� �ٲ�
			// 2.��ü���� �ּ�(���� �� �ڿ� .jsp ��)�� ������ ������ ���
			//   �ּ�ǥ������ �ּҰ� �ٲ��� ����.
			
			if (forward.isRedirect()) {//true : �����̷�Ʈ //�����̷�Ʈ�� ��쿡��!
				response.sendRedirect(forward.getPath());//������ ����� ������ Path��η� �̵�
			} else {//false : ������ //�����̷�Ʈ�� �ƴ� ��쿡��!
				RequestDispatcher dispacher = request.getRequestDispatcher(forward.getPath());
				//�̵��� ����. // ���� ��������Ʈ�� ������ �ִ� �ڿ��� ���������� ������ �˾Ƽ� �̵�..?
				dispacher.forward(request, response);
			}
		}
	}
	
	/** ��� get **/
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		System.out.println("get ���");
		doProcess(request, response);
	}

	/** ��� post **/
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		System.out.println("post ���");
		doProcess(request, response);
	}
	
	/** �����̷�Ʈ��� **/
	// : Ŭ���̾�Ʈ���� ������ �ּҸ� ��û�ϰ� ���鶧
	// response.sendRedirect("./main/main.jsp");
	// sendRedirect�� Ŭ���̾�Ʈ�� �ٽ� ��û�ϵ��� ���� ������ ������..
	// ��û�ϴ½����� �������� ���ŵȴ�. ��2���� �������� ����

	/** ������ ��� **/
	// : Ŭ���̾�Ʈ�� �����ּ� ��û�� ���ؼ� ���� ���ڿ��� �������� �ٶ�
	// dispatcher���������� �ޱ�
	// RequestDispatcher dispatcher =
	// request.getRequestDispatcher("./main/main.jsp");
	// dispatcher.forward(request, response);
	// forward(������Ʈ,��������);�� �޴´� ���� �츮�� �޾ƿ� ���� ������ �پ��� ������ �״�� �� �� �ִ�
	// �ٽ� ��û�ϴ� �����̷�Ʈ�� �ƴ϶� �ѹ��� ��û�� �������� �޾ƿ��� ������ �ּ�ǥ���ٿ� main.do���
	// ������ �ּҰ� ����

	// ��û�ϴ� �ּҰ� ��ü���ϰ�� ������ ����� ���,
	// main.do���� �������� �������� ���� ������ �ּҸ� ����� �� ���� ������ �ּ�ǥ���ٵ� ���� ���������
	// �ϱ⶧���� �׷����
	// �����̷�Ʈ ����� ����ϰ� �ȴ�.
	
}
