 /**	(function() { })(); 사용하는 이유
 *		IIFE(Immediately-invoked function expression: 즉시 작동하는 함수식)
 *		"이 안에 들어있는 코드를 바로 실행해라" 라는 표현으로 이해하시면 되겠습니다.
 */	  
(function() {
	
	//정규식
	const pwR = /^(?=.*[a-z])(?=.*[!@#$%^*,./])(?=.*[0-9]).{8,30}$/; // 영문 소문자,숫자, 특수기호!@#$%^*,./ 혼합 8~30자 입력가능	
	
	yul.page = function() {
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
		
		//회원탈퇴 Ajax
		$('#memberResignAjax').on('click', function(e) {
	 		e.preventDefault();

	 		var pw 	= $('#userpwData').val();
						
	 		//비밀번호 정규식 체크와 빈값 체크
	 		if(pw == ""){
				alert("비밀번호를 작성해주세요.");
				return false;		
			}
			if(pw.search(pwR) != 0){
				alert("비밀번호는 8~30 영문 소문자와 숫자,기호를 혼합하여 입력해주세요.");
				return false; 		
			}	
				
			var userDataJson = {};

			userDataJson.pw  = pw;
							
			//에이작스 통신을 위한 객체 생성
		    const xhr = new XMLHttpRequest();
		    
		    //전송방식과 통신 할 경로 설정
		    xhr.open("post", "/memberResignAjax");
		    
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
						//다시한번 물어본다 confirm() 사용
						if(!confirm('정말로 탈퇴를 진행하시겠습니까?')){
							return false;
						}
						
						//진짜 삭제 해주는 ajax 작동
						
						//에이작스 통신을 위한 객체 생성
					    const xhr = new XMLHttpRequest();
					    
					    //전송방식과 통신 할 경로 설정
					    xhr.open("post", "/memberResignOkAjax");
					    
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
									alert("회원정보가 삭제되었습니다. 그동안 이용해주셔서 감사합니다.");
									location.href = "/";
									
								}else{
									alert("회원탈퇴에 실패하였습니다. 관리자에게 문의해주세요.");
								}												
						       	//return callback(e.currentTarget.response);
							}else{
								console.log('서버와통신에 실패 하였습니다. error-code : ' + e.currentTarget.status)
							}				        
					    };
					    //전송할 데이터 json 타입으로 변동후 전달
					    xhr.send(JSON.stringify(userDataJson));	
						
						
						
					}else{
						alert("탈퇴에 실패하였습니다 비밀번호를 확인해주세요.");
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