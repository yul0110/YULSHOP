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
	 /*** init */

	 // prototype 프로토 타입
	 yul.page.prototype.init = function() {
	 	this.clickEvent() // bind form submit event
	 }
	 
	/***작동할 이벤트를 프로토 타입으로 세팅 */
	yul.page.prototype.clickEvent = function(){
		
		//회원가입 시도 클릭 이벤트	
		
		$('#joinusAjax').on('click', function(e){
			e.preventDefault();		
		
		var resurt;
		
		let formUserTarget = $("#userId");
		
		//validation 검증
		yul.common.valid("kor", formUserTaget, "아이디 8~30자 영문,숫자");
	
		var parameterData = {
			
			userId : formUserTarget.val()
			
			
			
			
		}
	
	
	
		})
		
		
		
		
		

	}	
 })(); 