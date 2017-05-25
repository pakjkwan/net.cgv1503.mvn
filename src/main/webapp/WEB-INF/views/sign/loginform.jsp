<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<ul class="tab-menu-round">
            <li class="on">
                <a href="/user/login/">로그인</a>
            </li>
            <li>
                <a href="/user/guest/">비회원로그인</a>
            </li>
        </ul>
        <div class="box-login">
            <h3 class="hidden">회원 로그인</h3>
            <form id="form1" method="post" action="member_login.do">
            <fieldset>
                <legend>회원 로그인</legend>
                <p>아이디 비밀번호를 입력하신 후, 로그인 버튼을 클릭해 주세요.</p>
                <div class="login">
                    <input type="text" title="아이디" id="email" name="email" data-title="아이디를 " 
                    data-message="입력하세요." required="required" value="" />
                    <input type="password" title="패스워드" id="passwd" name="passwd" 
                    data-title="패스워드를 " data-message="입력하세요." required="required" />
                </div>                
                <button type="submit" id="submit" title="로그인"><span>로그인</span></button>                
                <div class="login-option" style="width:300px;">    
                	<div align="left">                                	                    
                    <input type="checkbox" id="save_id"/><label for="save_id">아이디 저장</label> 
                    <a href="/user/login/find-account.aspx">아이디 찾기</a>
                    <a href="/user/login/find-pw.aspx?act=pw">비밀번호 찾기</a>    
                    </div>
                                 
                </div>                
                
                <!-- <div class="save-id"><input type="checkbox" id="save_id"/><label for="save_id">아이디 저장</label></div> -->
            </fieldset>
            </form>       
          </div>  
          
          	<script type="text/javascript">
	function loginCheck() {
    	if(document.frm.email.value.length ==0) {
    		alert("아이디를 입력해주세요");
    		frm.email.focus();
    		return false;
    	}
    	if(document.frm.passwd.value == "") {
    		alert("암호를 입력해주세요");
    		frm.email.focus();
    		return false;
    	}
    }
</script>  