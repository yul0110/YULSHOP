(function() {
	
	yul.page = function() { 
		 this.init();
	};
	//init
	yul.page.prototype.init = function() {
		this.clickEvent() 
	}	 

	yul.page.prototype.clickEvent = function() {
		
		$(document).on('click', '#couponRegAjax', function(e){
	 		e.preventDefault();
	 		
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
			
		    const xhr = new XMLHttpRequest();
		    
		    xhr.open("post", "/couponUpdateAjax");
		    
		    xhr.setRequestHeader("Content-type", "application/json; charset=UTF-8;");
		    
		    xhr.responseType = "json";
		    
		    xhr.onprogress = function () {
			};
			
			//ajax 작동완료
		    xhr.onload = function(e) {
				
				if(e.currentTarget.status == 200){

					if(e.currentTarget.response.result != 0){ 
						alert("쿠폰이 수정 되었습니다.");
						location.href = '/bcoupon';
					}else{
						alert("쿠폰 수정에 실패하였습니다 다시 시도해주세요.");
					}												
				}else{
					console.log('서버와통신에 실패 하였습니다. error-code : ' + e.currentTarget.status)
				}				        
		    };
		    xhr.send(JSON.stringify(dataJson));	
		});
	 };
	 
	 $(function() {
	 	yul.page = new yul.page();
	 });
	 
	 return yul.page;
})();