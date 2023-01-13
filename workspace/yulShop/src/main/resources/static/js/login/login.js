 /**	(function() { })(); 사용하는 이유
 *		IIFE(Immediately-invoked function expression: 즉시 작동하는 함수식)
 *		"이 안에 들어있는 코드를 바로 실행해라" 라는 표현으로 이해하시면 되겠습니다.
 */	  
(function() {
	
	//정규식
	const idR = /^[a-z0-9]{8,15}$/g;	// 영문 소문자,숫자 8~15자 입력가능
	
	yul.page = function() {
		 this.form = document.forms.joinForm;	 
		 // js 파일이 로드되면 메소드를 실행시킴
		 this.init();
	};
	
	//init
	//prototype 프로토 타입
	yul.page.prototype.init = function() {
		this.clickEvent() // bind form submit event
	}
	 
	//작동할 이벤트를 프로토 타입으로 세팅
	yul.page.prototype.clickEvent = function() {
		
		//로그인 Ajax
		$('#loginCheckAjax').on('click', function(e) {
	 		e.preventDefault();
		 		
	 		var userId		= $('#userIdData').val();
	 		var pw 			= $('#userpwData').val();
	 		
	 		//아이디 정규식 체크와 빈값 체크
	 		if(userId == ""){
				alert("아이디를 작성해주세요."); 		
				return false;
			}
			if(userId.search(idR) != 0){ 
				alert("아이디는 8~15 영문 소문자와 숫자를 혼합하여 입력해주세요.");
				return false; 		
			}	
						
	 		//비밀번호 정규식 체크와 빈값 체크
	 		if(pw == ""){
				alert("비밀번호를 작성해주세요.");
				return false;		
			}
				
			var userDataJson 	= {};
	
			userDataJson.userId 	= userId;
			userDataJson.pw 		= pw;
							
			//에이작스 통신을 위한 객체 생성
		    const xhr = new XMLHttpRequest();
		    
		    //전송방식과 통신 할 경로 설정
		    xhr.open("post", "/loginAjax");
		    
		    //전송 할 헤더에 전송 데이터타입, 문자타입 설정
		    xhr.setRequestHeader("Content-type", "application/json; charset=UTF-8;");
		    
		    //받는 데이터 타입 설정
		    xhr.responseType = "json";
		    
		    //ajax 작동중 이벤트
		    xhr.onprogress = function () {
			    //데이터 리턴 직전에 발동
			    //프로그래스바 실행
			};
			
			//ajax 작동완료
		    xhr.onload = function(e) {
				
				if(e.currentTarget.status == 200){
					//성공콜백 함수
					if(e.currentTarget.response.result != 0){ 
						alert("로그인 성공");
						//페이지 이동
						location.href = '/';
					}else{
						alert("아이디와 비밀번호를 확인해주세요.");//회원가입에 성공한 경우
					}												
			       	//return callback(e.currentTarget.response);
				}else{
					console.log('서버와통신에 실패 하였습니다. error-code : ' + e.currentTarget.status)
				}				        
		    };
		    //전송할 데이터 json 타입으로 변동후 전달
		    xhr.send(JSON.stringify(userDataJson));	
		});
	 };
	 
	 $(function() {
	 	yul.page = new yul.page();
	 });
	 
	 return yul.page;
})();