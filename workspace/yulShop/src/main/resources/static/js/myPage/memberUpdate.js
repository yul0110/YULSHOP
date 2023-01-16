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
		
		//회원 정보 수정 시도 클릭 이벤트
	 	$('#pwUpdateAjax').on('click', function(e) {
	 		e.preventDefault();
	 		
	 		var pw 			= $('#pw').val();
	 		var pwc 		= $('#pwc').val();
						
	 		//비밀번호 정규식 체크와 빈값 체크
	 		if(pw == ""){
				alert("비밀번호를 작성해주세요.");
				return false;		
			}
			if(pw.search(pwR) != 0){
				alert("비밀번호는 8~30 영문 소문자와 숫자,기호를 혼합하여 입력해주세요.");
				return false; 		
			}	
			
	 		//비밀번호 확인 빈값 체크 ,비밀번호와 비밀번호 확인이 매치되는지 확인
	 		if(pw != pwc){ 
				 alert("비밀번호를 알맞게 입력했는지 확인해주세요"); 
				 return false;		
			}
	 		if(pwc == ""){ 
				 alert("비밀번호를 알맞게 입력했는지 확인해주세요");
				 return false; 		
			}		
			
			var userDataJson 	= {};
	
			userDataJson.pw 	= pw;
							
			//에이작스 통신을 위한 객체 생성
		    const xhr = new XMLHttpRequest();
		    
		    //전송방식과 통신 할 경로 설정
		    xhr.open("post", "/pwUpdateAjax");
		    
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
						alert("비밀번호 수정이 완료되었습니다.");
					}else{
						alert("비밀번호 수정에 실패하였습니다 관리자에게 문의해주세요.");
					}												
				}else{
					console.log('서버와통신에 실패 하였습니다. error-code : ' + e.currentTarget.status)
				}				        
		    };
		    //전송할 데이터 json 타입으로 변동후 전달
		    xhr.send(JSON.stringify(userDataJson));	
		});
		
		//회원 정보 수정 시도 클릭 이벤트
	 	$('#memberUpdateAjax').on('click', function(e) {
	 		e.preventDefault();
	 		
	 		var pw 			= $('#pw').val();
	 		var pwc 		= $('#pwc').val();
	 		var addr1 		= $('#addr1').val();
	 		var addr2 		= $('#addr2').val();
						
	 		//비밀번호 정규식 체크와 빈값 체크
	 		if(pw == ""){
				alert("비밀번호를 작성해주세요.");
				return false;		
			}
			if(pw.search(pwR) != 0){
				alert("비밀번호는 8~30 영문 소문자와 숫자,기호를 혼합하여 입력해주세요.");
				return false; 		
			}	
			
	 		//비밀번호 확인 빈값 체크 ,비밀번호와 비밀번호 확인이 매치되는지 확인
	 		if(pw != pwc){ 
				 alert("비밀번호를 알맞게 입력했는지 확인해주세요"); 
				 return false;		
			}
	 		if(pwc == ""){ 
				 alert("비밀번호를 알맞게 입력했는지 확인해주세요");
				 return false; 		
			}		
			
			//주소1 빈값체크 정규식 확인
	 		if(addr1 == ""){
				alert("주소를 작성해주세요."); 		
				return false;
			}	
			
			//주소2 빈값체크 정규식 확인
	 		if(addr2 == ""){
				alert("상세주소를 작성해주세요."); 		
				return false;
			}
			
			var userDataJson 	= {};
	
			userDataJson.pw 		= pw;
			userDataJson.addr1 		= addr1;
			userDataJson.addr2 		= addr2;
							
			//에이작스 통신을 위한 객체 생성
		    const xhr = new XMLHttpRequest();
		    
		    //전송방식과 통신 할 경로 설정
		    xhr.open("post", "/memberUpdateAjax");
		    
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
						alert("회원정보 수정이 완료되었습니다.");
						//페이지 이동
						location.href = '/';
					}else{
						alert("회원정보 수정에 실패하였습니다 다시 시도해주세요.");
					}												
				}else{
					console.log('서버와통신에 실패 하였습니다. error-code : ' + e.currentTarget.status)
				}				        
		    };
		    //전송할 데이터 json 타입으로 변동후 전달
		    xhr.send(JSON.stringify(userDataJson));	
		});
		
		
		//주소 zonecode 팝업이벤트
		$('#addr1').on('click', function(e) {
	 		e.preventDefault();
	 		
	 		new daum.Postcode({
		        oncomplete: function(data) {
					//주소에 값을 넣음
					var fullAddr;
					if(data.buildingName == '' || data.buildingName == null){
						fullAddr = data.address;
					}else{
						fullAddr = data.address + ' (' +data.buildingName + ')';
					}
					$('#addr1').attr('value',fullAddr);
		        }
		    }).open();
		});
	 };
	 
	 $(function() {
	 	yul.page = new yul.page();
	 });
	 
	 return yul.page;
})();