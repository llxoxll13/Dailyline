package net.Member.action;

// 01.member/memberjoin.jsp���ϻ���
// 02.src/net.Member.action��Ű������/ActionForward.javaŬ��������
public class ActionForward {
	//>�������
	private boolean isRedirect; // false:forward / true:sendRedirect
	//private:�ڽ��� Ŭ���� �������� ��밡�� //boolean:���� true,false���� ��ȯ //������:isRedirect
	private String path;
	//private:�ڽ��� Ŭ���� �������� ��밡�� //String:���ڿ��� //������:path
	
	/** ��) A.jsp���� B.jsp�� submit�� �ϰ�, B.jsp���� C.jsp�� forward(�Ǵ� redirect)�Ͽ��� ���
   		   A.jsp =>(submit) B.jsp ->(forward or redirect) C.jsp	
	 	forward  : C.jsp������ A.jsp�� B.jsp���� ������ �Ķ���͸� ����Ҽ� ����
		redirect : C.jsp������ A.jsp�� B.jsp���� ������ �Ķ���͸� ����Ҽ� ����  **/
	//>�޼ҵ�
	public boolean isRedirect(){
	//public:��簴ü��밡��(����) //boolean:���� true,false���� ��ȯ
	//�Լ���:isRedirect()
		return isRedirect;
		//�޼ҵ��� ��ȯ���� boolean(��,����)���̹Ƿ� return�ʿ�
	}
	//>ALT+SHIFT+S+R(getters&setters��������Ű)
	/** getter : �ʵ�(�������)�� ������ �ִ� ���� �������� ����� �Ѵ�.
		setter : ���� �ִ� ����. �Ű����� 1���� �ʿ��ϴ�. �ϳ��� ��������� �ϳ��� getter�� �ϳ��� setter�� ���� �� �ִ�. **/
	public void setRedirect(boolean isRedirect) {
	//������ ��ȯ���� ���� setRedirect������������ �޼ҵ�. �Ű�����:boolean�� ������:isRedirect
		this.isRedirect = isRedirect; //��ȭ�ɰ� = �޾ƿ°�
		//����ȭ�Ͽ���(private) boolean���� isRedirect�� ���� set�޼ҵ带 ����Ͽ� �޾ƿ°����� �����Ŵ.(f/t)
	}
	public String getPath() {
	//������ String���� ��ȯ���� ���� getPath()�޼ҵ�.	
		return path;
		//������ ����Ǿ��ִ� path���� ������ �޼ҵ尡 ȣ��� ������ ����.
	}
	public void setPath(String path) {
	//������ ��ȯ���� ���� setPath(String path)�޼ҵ�. �Ű�����:String�� ������:path
		this.path = path; //��ȭ�ɰ� = �޾ƿ°�
		//����ȭ�Ͽ���(private) String���� path�� ���� set�޼ҵ带 ����Ͽ� �޾ƿ°����� �����Ŵ.
	}
}
