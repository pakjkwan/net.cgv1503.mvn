<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<ul class="tab-menu-round">
            <li class="on">
                <a href="/user/login/">�α���</a>
            </li>
            <li>
                <a href="/user/guest/">��ȸ���α���</a>
            </li>
        </ul>
        <div class="box-login">
            <h3 class="hidden">ȸ�� �α���</h3>
            <form id="form1" method="post" action="member_login.do">
            <fieldset>
                <legend>ȸ�� �α���</legend>
                <p>���̵� ��й�ȣ�� �Է��Ͻ� ��, �α��� ��ư�� Ŭ���� �ּ���.</p>
                <div class="login">
                    <input type="text" title="���̵�" id="email" name="email" data-title="���̵� " 
                    data-message="�Է��ϼ���." required="required" value="" />
                    <input type="password" title="�н�����" id="passwd" name="passwd" 
                    data-title="�н����带 " data-message="�Է��ϼ���." required="required" />
                </div>                
                <button type="submit" id="submit" title="�α���"><span>�α���</span></button>                
                <div class="login-option" style="width:300px;">    
                	<div align="left">                                	                    
                    <input type="checkbox" id="save_id"/><label for="save_id">���̵� ����</label> 
                    <a href="/user/login/find-account.aspx">���̵� ã��</a>
                    <a href="/user/login/find-pw.aspx?act=pw">��й�ȣ ã��</a>    
                    </div>
                                 
                </div>                
                
                <!-- <div class="save-id"><input type="checkbox" id="save_id"/><label for="save_id">���̵� ����</label></div> -->
            </fieldset>
            </form>       
          </div>  
          
          	<script type="text/javascript">
	function loginCheck() {
    	if(document.frm.email.value.length ==0) {
    		alert("���̵� �Է����ּ���");
    		frm.email.focus();
    		return false;
    	}
    	if(document.frm.passwd.value == "") {
    		alert("��ȣ�� �Է����ּ���");
    		frm.email.focus();
    		return false;
    	}
    }
</script>  