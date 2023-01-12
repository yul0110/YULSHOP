 /**	(function() { })(); 사용하는 이유
 *		IIFE(Immediately-invoked function expression: 즉시 작동하는 함수식)
 *		"이 안에 들어있는 코드를 바로 실행해라" 라는 표현으로 이해하시면 되겠습니다.
 */	  
(function() {
	
	var idMatchData = "";
	
	//정규식
	const idR = /^[a-z0-9]{8,15}$/g;	// 영문 소문자,숫자 8~15자 입력가능
	const pwR = /^(?=.*[a-z])(?=.*[!@#$%^*,./])(?=.*[0-9]).{8,30}$/; // 영문 소문자,숫자, 특수기호!@#$%^*,./ 혼합 8~30자 입력가능	
	const koR = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/; //한글만 입력가능 
	const numR = /^[0-9]+$/; //숫자만 입력가능
	const konR = /^[ㄱ-ㅎ|가-힣|0-9|]+$/; //한글,숫자 입력가능
	
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
		
	//아이디 중복확인
		$('#idCheck').on('click', function(e) {
	 		e.preventDefault();
	 		
			var userIdData		= $('#userId').val();
			var userDataJson 	= {};
			
			//1.데이터가 있는지? 2.데이터를 DB로가져가서 조회 3.중복이되는 데이터가 있는지?			
			if(userIdData!='' && userIdData != undefined){
				//데이터가 있는 경우 Ajax통신
				if(userIdData.search(idR) != 0){
					alert("아이디는 8~15 영문 소문자와 숫자를 혼합하여 입력해주세요.");
					return false;		
				}
				
				userDataJson.userId = userIdData;
							
				//1. 전송객체 생성
			    const xhr = new XMLHttpRequest();
			    
			    //2. init setting
			    xhr.open("post", "/idCheckAjax");
			    
			    //3. 데이터 전송 타입 그리고 문자 setting
			    xhr.setRequestHeader("Content-type", "application/json; charset=UTF-8;");
			    
			    //3-1.응답타입 setting
			    xhr.responseType = "json";
			    
			    //ajax 작동중 이벤트
			    xhr.onprogress = function () {
				    //데이터 리턴 직전에 발동
				};
				//ajax 작동완료
			    xhr.onload = function(e) {
					
					if(e.currentTarget.status == 200){
						//성공콜백 함수
						if(e.currentTarget.response.result != 0){
							alert("이미 사용중인 아이디 입니다.");
						}else{
							alert("사용가능한 아이디 입니다.");//중복체크를 한 경우
							$("#idCheckFlag").val("Y")
							idMatchData = userIdData;
						}												
				       	//return callback(e.currentTarget.response);
					}else{
						console.log('서버와통신에 실패 하였습니다. error-code : ' + e.currentTarget.status)
					}				        
			    };
			    //전송할 데이터 json 타입으로 변동후 전달
			    xhr.send(userDataJson);		
			}else{
				//데이터가 없는 경우
				alert("아이디를 입력해주세요.");
				return false;
			}
		});

		
		//회원가입 시도 클릭 이벤트
	 	$('#joinusAjax').on('click', function(e) {
	 		e.preventDefault();
	 		
	 		var userId		= $('#userId').val();
	 		var idCheckFlag = $("#idCheckFlag").val(); //아이디 중복체크flag
	 		var pw 			= $('#pw').val();
	 		var pwc 		= $('#pwc').val();
	 		var nm 			= $('#nm').val();
	 		var birth 		= $('#birth').val();
	 		var pno 		= $('#pno').val();
	 		var addr1 		= $('#addr1').val();
	 		var addr2 		= $('#addr2').val();
	 		
	 		//아이디 정규식 체크와 빈값 체크
	 		if(userId == ""){
				alert("아이디를 작성해주세요."); 		
				return false;
			}
			if(userId.search(idR) != 0){ 
				alert("아이디는 8~15 영문 소문자와 숫자를 혼합하여 입력해주세요.");
				return false; 		
			}	

			//중복체크 버튼을 눌렀는지 확인
			if(idCheckFlag != "Y"){
				alert("중복체크를 눌러주세요.");	
				return false;
			}else{
				if(userId != idMatchData){
					$("#idCheckFlag").val("N");
					alert("중복체크를 눌러주세요.");
					return false;
				}
			}
						
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
			}
	 		if(pwc == ""){ 
				 alert("비밀번호를 알맞게 입력했는지 확인해주세요"); 		
			}
			
	 		//이름 빈값 체크 정규식 규칙 확인
	 		if(nm == ""){
				alert("이름를 작성해주세요."); 		
				return false;
			}
			if(nm.search(koR) != 0){ 
				alert("이름을 알맞게 작성해주세요.");
				return false; 		
			}	
	 		//생년월일 빈값 체크 정규식 확인
	 		if(birth == ""){
				alert("생년월일을 작성해주세요."); 		
				return false;
			}
			if(birth.search(numR) != 0){ 
				alert("생년월일을 알맞게 작성해주세요.");
				return false; 		
			}	

			//전화번호 빈값 체크 정규식 확인
	 		if(pno == ""){
				alert("휴대폰번호를 작성해주세요."); 		
				return false;
			}
			if(pno.search(numR) != 0){ 
				alert("휴대폰번호를 알맞게 작성해주세요.");
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
			if(addr2.search(konR) != 0){ 
				alert("상세주소를 알맞게 작성해주세요.");
				return false; 		
			}	
				
				var userDataJson 	= {};
	
					userDataJson.userId = userId;
					userDataJson.pw = pw;
					userDataJson.pwc = pwc;
					userDataJson.nm = nm;
					userDataJson.birth  = birth;
					userDataJson.pno = pno;
					userDataJson.addr1 = addr1;
					userDataJson.addr2 = addr2;
							
				//에이작스 통신을 위한 객체 생성
			    const xhr = new XMLHttpRequest();
			    //전송방식과 통신 할 경로 설정
			    xhr.open("post", "/joinusAjax");
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
						if(e.currentTarget.response.result != 0){ //회원가입에 실패한 경우
							alert("회원가입에 실패하였습니다 다시 시도해주세요.");
						}else{
							alert("회원가입 되었습니다.");//회원가입에 성공한 경우
						}												
 				       	//return callback(e.currentTarget.response);
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