(function() {
	
	yul.page = function() { 
		 this.init();
	};
	//init
	yul.page.prototype.init = function() {
		this.clickEvent() 	// 클릭 이벤트 bind
	}	 

	yul.page.prototype.clickEvent = function() {
		
		//회원정보 수정 시도 클릭 이벤트
		$(document).on('click', '#updateMemberAjax', function(e){
	 		e.preventDefault();
	 		
	 		//노드의 value값
	 		var nowId 	= $("#nowId").val();
	 		var userId 	= $("#userId").val();	   
	 		var nm		= $('#nm').val(); 		
	 		var pno		= $('#pno').val();   
	 		var birth	= $('#birth').val();  
	 		var addr1	= $('#addr1').val();
	 		var addr2	= $('#addr2').val();
	 		var regDt	= $('#regDt').val();
	 		
			var dataJson 	= {};
	
			dataJson.id 		= nowId;	
			dataJson.userId 	= userId;
			dataJson.nm 		= nm;
			dataJson.pno 		= pno;
			dataJson.birth		= birth;
			dataJson.addr1		= addr1;
			dataJson.addr2 		= addr2;
			dataJson.regDt 		= regDt;
			
			//에이작스 통신을 위한 객체 생성
		    const xhr = new XMLHttpRequest();
		    
		    //전송방식과 통신 할 경로 설정
		    xhr.open("post", "/updateMemberAjax");
		    
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
						alert("회원정보가 수정되었습니다.");
						location.href = '/bmember';
					}else{
						alert("회원정보 수정에 실패하었습니다. 다시 시도해주세요.");
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