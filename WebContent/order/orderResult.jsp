<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  

		<jsp:include page="../main/header.jsp"/>
	</div><!-- header -->
	
	<div id="container3">
        <div id="contents">

			<div class="titleArea">
				<h2><span>ORDER RESULT</span></h2>
			</div>

			<form id="frm_order_result" name="frm_order_result" action="" method="post" enctype="multipart/form-data">
				<input id="order_id" name="order_id" value="20160424-0154738" type="hidden">
				<input id="bank_url_hidden" name="bank_url_hidden" value="www.kbstar.com" type="hidden">
				<div class="xans-element- xans-order xans-order-result xans-record-">
					<!-- �������� -->
					<div class="bankBenefit ">
				        <h3><strong><span>��������</span></strong></h3>
				        <div class="info">
				            <div class="member">
				                <p><strong><span>������</span></strong> ����, [�Ϲ�ȸ��] ȸ���̽ʴϴ�.</p>
				                <ul class="displaynone">
									<li class="displaynone">
										<span class="displaynone">0</span> �̻� <span class="displaynone"></span> ���Ž� <span></span>�� �߰����� ������ �� �ֽ��ϴ�. <span class="displaynone">(�ִ� 0)</span>
									</li>
									<li class="displaynone">
										<span class="displaynone"></span> �̻� <span class="displaynone"></span> ���Ž� <span></span>�� �߰����� ������ �� �ֽ��ϴ�. <span class="displaynone">(�ִ� )</span>
									</li>
				                </ul>
							</div>
				            <ul class="mileage">
								<li><a href="/myshop/mileage/historyList.html">���������� : <strong>0��</strong></a></li>
				                <li><a href="/myshop/coupon/coupon.html">���� : <strong>4��</strong></a></li>
				            </ul>
						</div>
				    </div>
			    
<!-- �ֹ��Ϸ� -->
					<div class="orderInfo">
				        <p><strong>������ �ֹ��� �Ϸ� �Ǿ����ϴ�.</strong>
					            �ֹ����� �� ��ۿ� ���� �ȳ��� <a href="/myshop/order/list.html">�ֹ���ȸ</a> �� ���Ͽ� Ȯ�� �����մϴ�.
					    </p>
					    <ul>
							<li>�ֹ���ȣ : <strong>20160424-0154738</strong></li>
							<li>�ֹ����� : <span>2016-04-24 13:50:27</span></li>
				        </ul>
					</div>
				
<!-- �������� -->
					<div class="orderArea">
				        <div class="title">
				            <h3>��������</h3>
				        </div>
					
				        <div class="boardView">
				            <table border="1" summary="">
								<caption>��������</caption>
					            <tbody>
									<tr>
										<th scope="row">���������ݾ�</th>
					                    <td class="price">
					                        KRW <strong>11,400</strong><strong class="tail"></strong> <span class="tail displaynone"></span>
					                    </td>
					                </tr>
									<tr>
										<th scope="row">��������</th>
					                    <td>
					                        <strong><span>������ �Ա�</span></strong>
					                        <p>
					                            <span>�Ա��� : ������, ���¹�ȣ : �������� 55730104267085 (������(ž���̺�))</span>                            <span class=""><a href="#none" id="btn_bank_go"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_banking.gif" alt="���ͳݹ�ŷ �ٷΰ���"></a></span>
					                            <span class="displaynone"><a href="#none" id=""><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_order_payment.gif" alt="��������Ʈ �ٷΰ���"></a></span>
					                        </p>
					                    </td>
					                </tr>
									<tr class="displaynone">
										<th scope="row">���ں�������<br>��������</th>
					                    <td></td>
					                </tr>
								</tbody>
							</table>
						</div>
				    </div>
			    
<!-- �ֹ� ��ǰ ���� -->
					<div class="orderListArea">
				        <div class="title">
				            <h3>�ֹ� ��ǰ ����</h3>
				        </div>
					
				        <!-- �⺻��� -->
				        <table border="1" summary="" class="boardList " nspace="normal">
							<caption>�⺻���</caption>
				            <thead>
					            <tr>
									<th scope="col" class="thumb">�̹���</th>
				                    <th scope="col" class="product">��ǰ����</th>
				                    <th scope="col" class="price">�ǸŰ�</th>
				                    <th scope="col" class="quantity">����</th>
				                    <th scope="col" class="mileage">������</th>
				                    <th scope="col" class="delivery">��۱���</th>
				                    <th scope="col" class="total">�հ�</th>
				                </tr>
			                </thead>
							<tfoot>
								<tr>
									<td colspan="7">
									<strong class="type">[�⺻���]</strong> ��ǰ���űݾ� <strong>8,900<span class="displaynone"> (0)</span></strong> + ��ۺ� 2,500 + ��������ۺ� 0 = �հ� : <strong class="total">KRW <span>11,400</span></strong> <span class="displaynone"></span>
									</td>
				                </tr>
				            </tfoot>
				            <tbody class="xans-element- xans-order xans-order-normalresultlist">
				            	<tr class="xans-record-">
									<td class="thumb"><a href="/product/detail.html?product_no=1406&amp;cate_no=32"><img src="http://www.dailyline.co.kr/web/product/tiny/201603/1406_shop1_168917.jpg" onerror="this.src='http://img.echosting.cafe24.com/thumb/img_product_small.gif';" alt=""></a></td>
				                    <td class="product">
				                        <a href="/product/detail.html?product_no=1406&amp;cate_no=32"><strong>���� t (5color)</strong></a>
				                        <div class="option ">[�ɼ�: ���̺���]</div>
				                        <p class="free displaynone">�������Һ� ��ǰ</p>
				                    </td>
				                    <td class="price">
										<strong>KRW 8,900</strong><div class="displaynone"></div>
									</td>
				                    <td class="quantity">1</td>
				                    <td class="mileage">90��</td>
				                    <td class="delivery">�⺻���<div class="displaynone">(�ؿܹ�۰���)</div></td>
				                    <td class="total"><strong>KRW 8,900</strong><div class="displaynone"></div></td>
				                </tr>
							</tbody>
						</table>
					</div>
<!-- �����ݾ� -->
					<div class="totalArea">
				        <div class="summary">
				            <table border="1" summary="">
								<caption>�����ݾ�</caption>
					            <thead>
					            	<tr>
										<th scope="col">
											<span>�� �ֹ� �ݾ�</span><a href="#none" onclick="OrderLayer.onDiv('order_layer_detail', event);" class="more"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_list.gif" alt="��������"></a>
										</th>
					                    <th scope="col" class="displaynone">
											<span>�� </span><span class="displaynone">����</span><span class="displaynone"> + </span><span class="displaynone">�ΰ�����</span><span> �ݾ�</span>
										</th>
					                    <th scope="col">�� �����ݾ�</th>
					                </tr>
				                </thead>
								<tbody>
									<tr>
										<td class="price2"><div class="box">KRW <strong>11,400</strong><strong class="tail"></strong><span class="tail displaynone"></span></div></td>
										<td class="option displaynone"><div class="box">KRW <strong>0</strong><strong class="tail"></strong><span class="tail displaynone"></span></div></td>
										<td class="total"><div class="box">KRW <strong>11,400</strong><strong class="tail"></strong><span class="tail displaynone"></span></div></td>
					                </tr>
					           	</tbody>
							</table>
						</div>
				        <div class="detail">
				            <div class="displaynone">
				                <table border="1" summary="">
									<caption>���� ����</caption>
					                <tbody>
										<tr class="total">
											<th scope="row">�� ���αݾ�</th>
					                        <td>KRW <strong>0</strong></td>
					                    </tr>
										<tr class="displaynone">
											<th scope="row">��������</th>
					                        <td>
					                            <span class="grid">KRW 0</span>
					                            <a href="#none" class="eUsedCouponDetail"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_list.gif" alt="��������"></a>
					                        </td>
					                    </tr>
										<tr class="displaynone">
										<th scope="row">�߰����αݾ�</th>
					                        <td>
					                            <span class="grid">KRW 0</span>
					                            <a href="#none" onclick="OrderLayer.onDiv('order_benefit_price_detail_layer', event);"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_list.gif" alt="��������"></a>
					                        </td>
					                    </tr>
									</tbody>
								</table>
							</div>
				            <div class="displaynone">
				                <table border="1" summary="">
									<caption>�ΰ����� ����</caption>
					                <tbody>
										<tr class="total">
											<th scope="row">�� �ΰ������ݾ�</th>
					                        <td>KRW <strong>0</strong></td>
					                    </tr>
										<tr class="displaynone">
											<th scope="row">������</th>
					                        <td>KRW 0</td>
					                    </tr>
										<tr class="displaynone">
											<th scope="row">���̹� ���ϸ���/ĳ��</th>
					                        <td>KRW 0 </td>
					                    </tr>
										<tr class="displaynone">
											<th scope="row">��ġ��</th>
					                        <td>KRW 0</td>
					                    </tr>
									</tbody>
								</table>
							</div>
				            <div class="">
				                <table border="1" summary="">
									<caption>�������� ����</caption>
					                <tbody>
										<tr class="total">
											<th scope="row">�� ���������ݾ�</th>
					                        <td>KRW <strong>90</strong></td>
					                    </tr>
										<tr class="">
											<th scope="row">��ǰ�� ������</th>
					                        <td><span class="grid">KRW 90</span></td>
					                    </tr>
										<tr class="displaynone">
											<th scope="row">ȸ�� ������</th>
					                        <td><span class="grid">KRW 0</span></td>
					                    </tr>
										<tr class="displaynone">
											<th scope="row">���� ������</th>
					                        <td>
					                            <span class="grid">KRW 0</span>
					                            <a href="#none" class="eUsedCouponDetail"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_list.gif" alt="��������"></a>
					                        </td>
					                    </tr>
									</tbody>
								</table>
							</div>
				        </div>
			  		</div>
<!-- ��������� -->
					<div class="orderArea">
				        <div class="title">
				            <h3>���������</h3>
				        </div>
					
				        <div class="boardView">
				            <table border="1" summary="">
								<caption>����� ����</caption>
					            <tbody>
									<tr>
										<th scope="row">�����ôº�</th>
					                    <td><span>������</span></td>
					                </tr>
									<tr class="displaynone">
										<th scope="row">�����̸�</th>
					                    <td><span></span></td>
					                </tr>
									<tr class="displaynone">
										<th scope="row">�̸�(������ȣ)</th>
					                    <td><span></span></td>
					                </tr>
									<tr class="displaynone">
										<th scope="row">����</th>
					                    <td></td>
					                </tr>
									<tr>
										<th scope="row">�����ȣ</th>
					                    <td><span>50817</span></td>
					                </tr>
									<tr>
										<th scope="row">�ּ�</th>
					                    <td><span>��󳲵� ���ؽ� Ȱõ��285���� 4 (��浿) �뵿����Ʈ ���� 302ȣ</span></td>
					                </tr>
									<tr class="displaynone">
										<th scope="row">����</th>
					                    <td></td>
					                </tr>
									<tr class="displaynone">
										<th scope="row">��/����</th>
					                    <td></td>
					                </tr>
									<tr>
										<th scope="row">�Ϲ���ȭ</th>
					                    <td><span>010-4906-8510</span></td>
					                </tr>
									<tr>
										<th scope="row">�޴���ȭ</th>
					                    <td><span>010-4906-8510</span></td>
					                </tr>
									<tr>
										<th scope="row">��۸޽���</th>
					                    <td></td>
					                </tr>
									<tr class="displaynone">
										<th scope="row">��������</th>
					                    <td><strong></strong></td>
					                </tr>
								</tbody>
							</table>
						</div>
				    </div>
									    
<!-- �߰����� -->  
					<div class="btnArea">
				        <a href="/"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_order_ing.gif" alt="���ΰ���ϱ�"></a>
				        <a href="/myshop/order/list.html"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_order_check.gif" alt="�ֹ�Ȯ���ϱ�"></a>
				    </div> 				 
 				 
<!-- �̿�ȳ� -->
					<div class="help">
				        <h3>�̿�ȳ�</h3>
			       		<div class="content">
				            <ul>
								<li class="item1">��ȸ�� �ֹ��� ���, �ֹ���ȣ�� �� ����ϼ���. �ֹ���ȣ�� �ֹ���ȸ�� �����մϴ�.</li>
				                <li class="item2">����� �����Ϸ� �� ������ ���� 3�� ~ 7�� ������ �ҿ�˴ϴ�. </li>
				                <li class="item3">��ǰ�� �ڼ��� ��۰����� �ֹ���ȸ�� ���Ͽ� ��ȸ�Ͻ� �� �ֽ��ϴ�.</li>
				                <li class="item4">�ֹ��� ��� �� ȯ��, ��ȯ�� ���� ������ �̿�ȳ��� ������ �����Ͻʽÿ�.</li>
				            </ul>
						</div>
				    </div>
				    
<!-- �� �ֹ��ݾ� �󼼳��� ���̾� -->
					<div id="order_layer_detail" class="totalDetail">
				        <h3>�� �ֹ��ݾ� �󼼳���</h3>
				        <div class="content">
				            <p id="total_order_price_id">KRW 11,400</p>
				            <ul>
								<li>
								<strong>��ǰ�ݾ�</strong><span>KRW 8,900</span>
								</li>
								<li class="displaynone">
								<strong>�ΰ���</strong><span>KRW </span>
								</li>
								<li>
								<strong>��ۺ�</strong><span id="total_ship_price_id">KRW 2,500</span>
								</li>
								<li>
								<strong>������ ��ۺ�</strong><span id="total_local_ship_price_id">KRW 0</span>
								</li>
				            </ul>
						</div>
				        <div class="close"><a href="#none" onclick="OrderLayer.offDiv('order_layer_detail');"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/common/btn_close.png" alt="�ݱ�"></a></div>
					</div>			    
				</div>
			</form>
		</div>
	</div>
	
	
	
	<!-- footer -->
	<div>
		<jsp:include page="../main/footer.jsp"/>
	</div><!-- footer -->
</body>
</html>