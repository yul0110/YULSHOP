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
		this.getList() // bind form submit event
	}
	
	//작동할 이벤트를 프로토 타입으로 세팅
	yul.page.prototype.getList = function() {
		
		var dataJson 	= {};
	
		dataJson.inquiryId 	= $('#currentCode').val();
						
		//에이작스 통신을 위한 객체 생성
	    const xhr = new XMLHttpRequest();
	    
	    //전송방식과 통신 할 경로 설정
	    xhr.open("post", "/inquiryListAjax");
	    
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
				
				var inquiryList = e.currentTarget.response.inquiryList;
				
				inquiryList.forEach(function (item){
					
					var inquiryCopy = $('#inquiryNode').clone();
					inquiryCopy.attr('id', '');
					inquiryCopy.attr('style', '');
					inquiryCopy.find('.inquiryTitle').html(item.title);
					
					$('#inquiryList').append(inquiryCopy);		
				})		
				
			}else{
				console.log('서버와통신에 실패 하였습니다. error-code : ' + e.currentTarget.status)
			}				        
	    };
	    //전송할 데이터 json 타입으로 변동후 전달
	    xhr.send(JSON.stringify(dataJson));	
	}	
	 
	$(function() {
		yul.page = new yul.page();
	});
	 
	return yul.page;
})();