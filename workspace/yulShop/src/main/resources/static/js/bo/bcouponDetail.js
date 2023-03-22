(function() {
	
	yul.page = function() { 
		 this.init();
	};
	//init
	yul.page.prototype.init = function() {
		this.clickEvent() 	// 클릭 이벤트 bind
	}	 

	yul.page.prototype.clickEvent = function() {
		
		//상품 업로드 시도 클릭 이벤트
		$(document).on('click', '#couponRegAjax', function(e){
	 		e.preventDefault();
	 		
	 		//노드의 value값
	 		var nowId 		= $("#nowId").val();	   
	 		var nm 			= $("#nm").val();	   
	 		var codeNum		= $('#codeNum').val(); 		
	 		var couponType	= $('#couponType').val();   
	 		var couponSize	= $('#couponSize').val();  
	 		var limitPrice	= $('#limitPrice').val();
	 		var maxPrice	= $('#maxPrice').val();
	 		var issuedCount	= $('#issuedCount').val();
	 		var useDate		= $('#useDate').val();
	 		
			var dataJson 	= {};
	
			dataJson.id 				= nowId;
			dataJson.nm 				= nm;
			dataJson.codeNum 			= codeNum;
			dataJson.couponType 		= couponType;
			dataJson.couponSize			= couponSize;
			dataJson.limitPrice			= limitPrice;
			dataJson.maxPrice 			= maxPrice;
			dataJson.issuedCount 		= issuedCount;
			dataJson.useDate 			= useDate;
			
			//에이작스 통신을 위한 객체 생성
		    const xhr = new XMLHttpRequest();
		    
		    //전송방식과 통신 할 경로 설정
		    xhr.open("post", "/couponUpdateAjax");
		    
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
						alert("쿠폰이 수정 되었습니다.");
						location.href = '/bcoupon';
					}else{
						alert("쿠폰 수정이 실패하였습니다 다시 시도해주세요.");
					}												
			       	//return callback(e.currentTarget.response);
				}else{
					console.log('서버와통신에 실패 하였습니다. error-code : ' + e.currentTarget.status)
				}				        
		    };
		    //전송할 데이터 json 타입으로 변동후 전달
		    xhr.send(JSON.stringify(dataJson));	
		});
	 };
	 
	 $(function() {
	 	yul.page = new yul.page();
	 });
	 
	 return yul.page;
})();