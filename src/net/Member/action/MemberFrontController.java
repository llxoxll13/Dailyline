package net.Member.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//01.member/login.jsp���ϻ���
//02.src/net.Member.action��Ű������/ActionForward.javaŬ��������
//03.src/net.Member.action�ȿ�/Action.java�������̽�����
//04.src/net.Member.action�ȿ�/MemberFrontController.javaŬ��������
public class MemberFrontController extends HttpServlet{
//������Ŭ������: MemberFrontController extends(���) HttpServlet�� ��ӹ���.
	
	// ������ �Ϸ��� ProjectFrontController�� ��û�ϴ� �������� �־�� �Ѵ�. ��!! ������Ʈ�ʿ�..
	// get���� post���� �𸣹Ƿ� �Ѵ� �������̵� �����ش� alt+shift+s+v
	// ��� .do�� ������ ��û������ �������� �´�
	
	/** ��� get **/
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}
	
	/** ��� post **/
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}

	
	
	
	
}
