 /**	(function() { })(); 사용하는 이유
 *		IIFE(Immediately-invoked function expression: 즉시 작동하는 함수식)
 *		"이 안에 들어있는 코드를 바로 실행해라" 라는 표현으로 이해하시면 되겠습니다.
 */	  
(function() {
	
	//정규식
	const numR = /^[0-9]+$/; //숫자만 입력가능
	var imgNum = 1;
	var imgMax = 5;
	
	yul.page = function() { 
		 this.init();
	};
	//init
	//prototype 프로토 타입
	yul.page.prototype.init = function() {
		this.clickEvent() 	// 클릭 이벤트 bind
		this.loadFile() 	// 이미지업로드 이벤트 bind
	}	 


	yul.page.prototype.loadFile = function() {
			
			//무조건 사진 하나를 넣어야함
			if(imgNum > 5){
				alert('사진은 최대 5장 입니다.');
				return false;	
			}
		
			var formData  = new FormData(); //FormData 객체 생성
			var inputFile = $("input[name='uploadFile']");  //input 태그의 type이 file인것을 찾아서 inputFile이라는 변수로 지정
			var files 	  = inputFile[0].files;
			//files : 선택한 모든 파일을 나열하는 FileList 객체입니다.
            //multiple 특성을 지정하지 않닸다면 두 개 이상의 파일을 포함하지 않습니다.
			
			//add file data to formdata
			for(var i=0; i<files.length; i++){
				formData.append("uploadFile",files[i]); //키,값으로 append 
			}
			$.ajax({
				url			:'/uploadImgAjax',
				processData : false,  //ajax 통신을 통해 데이터를 전송할 때, 기본적으로 key와 value값을 Query String으로 변환해서 보냅니다.
				contentType : false,  // multipart/form-data타입을 사용하기위해 false 로 지정
				type		: 'post',
				data		: formData,
				dataType	: 'json',
				success: function(data){
					//전송에 성공하면 실행될 코드;
					imgNum = imgNum + 1;
					$('#previewZone').append('<img id="preview' + imgNum + '" src="'+ data.path +'" style= "width: 100px; height: 100px;"/>');
					$('#previewZone').append('<input type="hidden" id="imgPath' + imgNum + '" value="'+ data.path +'" />');
					
					//카운트 추가
				},
				fail: function(error) {
					alert('업로드 실패');
				  return false;
				}
			}); //ajax End
		}


	//작동할 이벤트를 프로토 타입으로 세팅
	yul.page.prototype.clickEvent = function() {
		
		//상품 업로드 시도 클릭 이벤트
	 	$('#uploadAjax').on('click', function(e) {
	 		e.preventDefault();
	 		
	 		var no		= $('#no').val(); //상품번호
	 		var nm 			= $("#nm").val();	   //상품이름
	 		var price 		= $('#price').val();   //상품가격
	 		var dprice 		= $('#dprice').val();  //할인가격
	 		var wareHousing = $('#wareHousing').val();//입고일자
	 		var inventory 	= $('#inventory').val();  //재고수량
	 		var fabric 		= $('#fabric').val();  //소재
	 		var info 		= $('#info').val();    //상품정보
	 		var descliption = $('#descliption').val(); //상세정보
	 		
	 		//상품번호 빈값 체크
	 		if(no == ""){
				alert("상품번호를 작성해주세요."); 		
				return false;
			}
		
	 		//상품명 빈값 체크
	 		if(nm == ""){
				alert("상품명을 작성해주세요.");
				return false;		
			}
			
	 		//가격 빈값 체크 정규식 규칙 확인
	 		if(price == ""){
				alert("가격을 작성해주세요."); 		
				return false;
			}
			if(price.search(numR) != 0){ 
				alert("가격을 알맞게 작성해주세요.");
				return false; 		
			}	
			
	 		//할인가격 빈값 체크 정규식 규칙 확인
	 		if(dprice == ""){
				alert("생년월일을 작성해주세요."); 		
				return false;
			}
			if(dprice.search(numR) != 0){ 
				alert("생년월일을 알맞게 작성해주세요.");
				return false; 		
			}	

			//입고일자 빈값 체크 
	 		if(wareHousing == ""){
				alert("입고일자를 작성해주세요."); 		
				return false;
			}
			
			//재고수량 빈값체크 정규식 확인
	 		if(inventory == ""){
				alert("재고수량을 작성해주세요."); 		
				return false;
			}
			if(inventory.search(numR) != 0){ 
				alert("재고수량을 알맞게 작성해주세요.");
				return false; 		
			}	
	
			//소재 빈값체크
	 		if(fabric == ""){
				alert("소재를 작성해주세요."); 		
				return false;
			}	
			
			//상품설명 빈값체크
	 		if(info == ""){
				alert("상품설명을 작성해주세요."); 		
				return false;
			}
			
			//상세설명 빈값체크 
	 		if(descliption == ""){
				alert("상세설명을 작성해주세요."); 		
				return false;
			}
			
			var userDataJson 	= {};
	
			userDataJson.no 		= no;
			userDataJson.nm 		= nm;
			userDataJson.price 		= price;
			userDataJson.dprice 	= dprice;
			userDataJson.wareHousing= wareHousing;
			userDataJson.inventory  = inventory;
			userDataJson.fabric 	= fabric;
			userDataJson.info 		= info;
			userDataJson.descliption= descliption;
							
			//에이작스 통신을 위한 객체 생성
		    const xhr = new XMLHttpRequest();
		    
		    //전송방식과 통신 할 경로 설정
		    xhr.open("post", "/uploadAjax");
		    
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
						alert("상품이 등록 되었습니다.");
						//페이지 이동
						location.href = '/';
					}else{
						alert("상품등록에 실패하였습니다 다시 시도해주세요.");
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