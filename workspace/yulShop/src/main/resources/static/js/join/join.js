 /**	(function() { })(); 사용하는 이유
 *		IIFE(Immediately-invoked function expression: 즉시 작동하는 함수식)
 *		"이 안에 들어있는 코드를 바로 실행해라" 라는 표현으로 이해하시면 되겠습니다.
 */	  
(function() {
	
	 yul.page = function() {
		 this.form = document.forms.joinForm;
		 
		 // js 파일이 로드되면 메소드를 실행시킴
		 this.init();
	 };
	 /**
	 * init
	 */
	 // prototype 프로토 타입
	 yul.page.prototype.init = function() {
	 	this.clickEvent() // bind form submit event
	 }
	 
	 /**
	 *작동할 이벤트를 프로토 타입으로 세팅
	 */
	 yul.page.prototype.clickEvent = function() {
		
		//아이디 중복확인
	 	$('#idCheck').on('click', function(e) {
	 		e.preventDefault();
	 		
			var userId = $('#userId').val();
			
				//1. 빈칸, 
				//2. 8자미만 
				//3. 30자 초과
				//4. kor
										
			
			
					
				//1.데이터가 있는지? 
				//2.데이터를 DB로가져가서 조회 
				//3.중복이되는 데이터가 있는지?			
			if(userId!='' && userId != undefined){
				//데이터가 있는 경우 Ajax통신
				
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
							alert("사용가능한 아이디 입니다.");
							$("#idCheckFlag").val("Y")
						}												
				       	//return callback(e.currentTarget.response);
					}else{
						console.log('서버와통신에 실패 하였습니다. error-code : ' + e.currentTarget.status)
					}				        
			    };
			    //전송할 데이터 json 타입으로 변동후 전달
			    xhr.send(userId);		
			}else{
				//데이터가 없는 경우
				alert("아이디를 입력해주세요.");
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
	 		
	 		//정규식
	 		const idR = /^[a-z0-9_-]{8,15}$/;
	 		
	 		//아이디 정규식체크와 빈값 체크
	 		if(userId == ""){
				throw alert("아이디를 작성해주세요."); 		
			}else{
				if(!idR.exec(userId)){
					//내가 원하는지 않은 경우
					throw alert("아이디는 소문자와숫자의 혼합 그리고 -,_만 사용이 가능하고 최소 8자 최대15자만 가능합니다.");
				}
			}
			
			//중복체크 버튼을 눌렀는지 확인
			if(idCheckFlag != "Y"){
				throw alert("중복체크를 눌러주세요.");	
			}
			//중복체크 버튼을 누른후에 아이디를 수정할경우 대처방안
			//비밀번호 빈값체크 정규식 규칙확인
			//비밀번호와 비밀번호 확인이 매치되는지 확인
			//이름 빈값 체크 정규식 규칙 확인
			//생년월일 빈값 체크 정규식 확인
			//전화번호 빈값 체크 정규식 확인
			//주소1 빈값체크 정규식 확인
			//주소2 빈값체크 정규식 확인
			//데이터를 ajax를 이용하여 서버로 전송처리
			
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