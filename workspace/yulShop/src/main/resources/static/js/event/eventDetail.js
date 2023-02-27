 /**	(function() { })(); 사용하는 이유
 *		IIFE(Immediately-invoked function expression: 즉시 작동하는 함수식)
 *		"이 안에 들어있는 코드를 바로 실행해라" 라는 표현으로 이해하시면 되겠습니다.
 */	  
(function() {
	
	yul.page = function() {
		this.init();
	};
	
	//init
	//prototype 프로토 타입
	yul.page.prototype.init = function() {
		this.clickEvent() // bind form submit event
	}
	
	//작동할 이벤트를 프로토 타입으로 세팅
	yul.page.prototype.clickEvent = function() {

		
	};
	 
	$(function() {
		yul.page = new yul.page();
	});
	 
	return yul.page;
})();