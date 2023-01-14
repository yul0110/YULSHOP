 /**	(function() { })(); 사용하는 이유
 *		IIFE(Immediately-invoked function expression: 즉시 작동하는 함수식)
 *		"이 안에 들어있는 코드를 바로 실행해라" 라는 표현으로 이해하시면 되겠습니다.
 */	  
(function() {
	
	//정규식
	const koR = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/; //한글만 입력가능 
	const numR = /^[0-9]+$/; //숫자만 입력가능
	
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
		$('#findIdAjax').on('click', function(e) {
	 		e.preventDefault();
		 		
	 		var nm		= $('#userNmData').val();
	 		var pno 			= $('#userPnoData').val();
	 		
	 		//이름 정규식 체크와 빈값 체크
	 		if(nm == ""){
				alert("이름을 작성해주세요."); 		
				return false;
			}
			if(nm.search(koR) != 0){ 
				alert("이름은 한글로 작성해주세요.");
				return false; 		
			}	
						
	 		//핸드폰 번호 정규식 체크와 빈값 체크
	 		if(pno == ""){
				alert("핸드폰 번호를 작성해주세요.");
				return false;		
			}
			if(pno.search(numR) != 0){ 
				alert("핸드폰 번호는 숫자로 작성해주세요.");
				return false; 		
			}	
				
			var userDataJson 	= {};
	
			userDataJson.nm 	= nm;
			userDataJson.pno 	= pno;
							
			//에이작스 통신을 위한 객체 생성
		    const xhr = new XMLHttpRequest();
		    
		    //전송방식과 통신 할 경로 설정
		    xhr.open("post", "/findIdAjax");
		    
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
						
						var userId   = e.currentTarget.response.findId;
						var frontId  = userId.substr(0,4);  //앞부분4글자
						//var allLen 	 = userId.length;  //길이
						//var starCount= 0;
						//var star	 = "*";
						var alertMeg = "";         
						
						
						//len - 4 = 나머지의 길이 만큼****
						//1차 방법  frontId + "*****"
						alertMeg = frontId + "****";
						//2차 방법
						//starCount = allLen - frontId.length;
						//for(i=1;starCount > i;i++){
						//	star = star + "*";
						//} 
						//alertMeg = frontId + star;
						//alertMeg = frontId + "****";
						
						//아이디 숨김처리
						//문자열의 앞 0~3번 배열까지 문자만 뺴고 자른다
						//남은뒷 문자열 갯수를 계산하여 수를 담는다
						//남은 문자열만큼 *이 추가된 문자열을 생성해 둔다
						//자른문자열과 생성한 *을 합쳐서 표현해준다.
						
						 
						alert("당신의 아이디는 " + alertMeg + "입니다.");
					}else{
						alert("이름과 핸드폰 번호를 확인해주세요.");
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