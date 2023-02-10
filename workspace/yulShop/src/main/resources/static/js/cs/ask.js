 /**	(function() { })(); 사용하는 이유
 *		IIFE(Immediately-invoked function expression: 즉시 작동하는 함수식)
 *		"이 안에 들어있는 코드를 바로 실행해라" 라는 표현으로 이해하시면 되겠습니다.
 */	  
(function() {
	
	var imgNum = 1;
	
	yul.page = function() {

		 this.init();
	};
	//init
	//prototype 프로토 타입
	yul.page.prototype.init = function() {
		this.clickEvent() // bind form submit event
		this.onChangeEvent()
	}
	 
	//첨부파일  
	
	yul.page.prototype.listImgUploadEvent = function(node) {
		
		
		var formData  = new FormData(); //FormData 객체 생성
		var files 	  = node.files;
		//files : 선택한 모든 파일을 나열하는 FileList 객체입니다.
        //multiple 특성을 지정하지 않았다면 두 개 이상의 파일을 포함하지 않습니다.
		console.log(files);			
		
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
				
				var nodeImgCopy; 
				var nodeInputCopy; 
				
				nodeImgCopy		= $('#listImgTempl').clone();
				nodeInputCopy	= $('#filePathTempl').clone();
				
				nodeImgCopy.attr('id', "listImgData");
				nodeImgCopy.attr('src', data.path);
				nodeImgCopy.attr('class', "listPreview");
				nodeImgCopy.attr('style', "width: 100px; height: 100px;");
				
				nodeInputCopy.attr('id', "listPath");
				nodeInputCopy.attr('class', "listPath");
				nodeInputCopy.attr('value', data.path);
				
				$('#listPreviewZone').append(nodeImgCopy);
            	$('#listPreviewZone').append(nodeInputCopy);
				
			},
			fail: function(error) {
				alert('업로드 실패');
			  return false;
			}
		}); //ajax End
	}
	
	yul.page.prototype.onChangeEvent = function() {
        
        //이미지
        $("#uploadFile").change(function(){
	
			var listImgCount = $('.listPreview').length;
	
			//이미지 갯수 벨리데이션
			if(listImgCount >= 5){
				alert('리스트 이미지는 5개만 등록할수있습니다.');
			  return false;
			}
			
			yul.page.listImgUploadEvent(this);
            
			//카운트 ++
			imgNum = imgNum +1;
			
			//초기화
			this.value= '';	//같은 이미지가 연속 선택되어도 가져올수있다.
        });
	}; 
	 
	//작동할 이벤트를 프로토 타입으로 세팅
	yul.page.prototype.clickEvent = function() {

		//문의하기 시도 클릭 이벤트
	 	$('#askAjax').on('click', function(e) {
	 		e.preventDefault();
	 		
	 		var title		= $('#titleData').val();
	 		var context 	= $("#contextData").val(); 
	 		
			//노드 배열
	 		var listImgPathArr 		= $('.listPath'); //리스트 이미지경로

	 		//제목 빈값 체크
	 		if(title == ""){
				alert("문의 제목을 작성해주세요."); 		
				return false;
			}

	 		//문의내용 빈값 체크
	 		if(context == ""){
				alert("문의 내용을 작성해주세요."); 		
				return false;
			}
			//리스트이미지 배열만들기
			var pathListArr = new Array();
			for(i=0;i<listImgPathArr.length;i++){
				pathListArr.push(listImgPathArr[i].value);
			}
	
			var userDataJson 	= {};
	
			userDataJson.title 				= title;
			userDataJson.context 			= context;
			userDataJson.listImgPathArr	= pathListArr;

			//에이작스 통신을 위한 객체 생성
		    const xhr = new XMLHttpRequest();
		    
		    //전송방식과 통신 할 경로 설정
		    xhr.open("post", "/askAjax");
		    
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
						alert("문의가 등록 되었습니다.");
						//페이지 이동
						location.href = '/';
					}else{
						alert("문의등록에 실패하였습니다 다시 시도해주세요.");
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