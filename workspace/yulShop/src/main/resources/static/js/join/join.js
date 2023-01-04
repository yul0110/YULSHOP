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
		
		//회원가입 시도 클릭 이벤트
	 	$('#joinusAjax').on('click', function(e) {
	 		e.preventDefault();
	 		
	 		var result;
	 		
	 		let formUserTarget = $("#userId");
	 		let formPwTarget = $("#pw");
	 		let formPwcTarget = $("#pwc");
	 		let formNmTarget = $("#nm");
	 		let formpnoTarget = $("#pno");
	 		let formAddr1Target = $("#addr1");
	 		let formAddr2Target = $("#addr2");
	 			
	 			
	 		/*	 		
	 		//validation 검증
			yul.common.valid("kor", formUserTarget, "아이디는 한글이 불가합니다.");
			yul.common.valid("lenMin", formUserTarget, "8이상 입력해주세요.", 8);
			yul.common.valid("lenMax", formUserTarget, "아이디는 최대 30자 이내로 입력해주세요.", 31);
			yul.common.valid("lenMin", formPwTarget, "최소 8이상 입력해주세요.", 8);
			yul.common.valid("lenMax", formPwTarget, "최대 30자 이내로 입력해주세요.", 31);
			yul.common.valid("lenMin", formPwcTarget, "최소 8이상 입력해주세요.", 8);
			yul.common.valid("lenMax", formPwcTarget, "최대 30자 이내로 입력해주세요.", 31);
			if(formPwTarget.val() != formPwcTarget.val()){
				let errorMsgSelect = formPwTarget.attr('id'); 
				let errorMsgClass  = '#'+errorMsgSelect+'Error';
				$(errorMsgClass).children('strong').text("비밀번호가 틀립니다.");
				throw "비밀번호가 틀립니다."
			}
			yul.common.valid("lenMin", formNmTarget, "최소 2자 이상 입력해주세요.", 2);
			yul.common.valid("lenMax", formNmTarget, "최대 20자 이내로 입력해주세요.", 21);
			yul.common.valid("lenMax", formpnoTarget, "정확히 입력해주세요.", 12);
			yul.common.valid("lenMin", formpnoTarget, "휴대폰 번호를 확인해주세요.", 11);
			yul.common.valid("lenMax", formAddr1Target, "최대 50자 이내로 입력해주세요.", 51);			
			yul.common.valid("lenMax", formAddr2Target, "최대 100자 이내로 입력해주세요.", 101);
	 		
	 		*/
	 		
	 		var parameterData = {
							userId : formUserTarget.val(),
							pw : formPwTarget.val(),
							nm : formNmTarget.val(),
							addr1: formAddr1Target.val(),
							addr2: formAddr2Target.val(),
							pno : formpnoTarget.val()} 
	 		
	 		
	 		yul.common.baseAjax("/joinusAjax", parameterData, 'post', function(d){
																		if(d.result == 1){
																			alert('회원가입에 성공 했습니다.');
																		}else{
																			alert('회원가입에 실패 했습니다.');
																		}
																		
																		$('.col-lg-6').find('h2').html(d.msg);
																	});
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