 /**	(function() { })(); 사용하는 이유
 *		IIFE(Immediately-invoked function expression: 즉시 작동하는 함수식)
 *		"이 안에 들어있는 코드를 바로 실행해라" 라는 표현으로 이해하시면 되겠습니다.
 */	  
(function() {
	
	yul.page = function() { 
		 // js 파일이 로드되면 메소드를 실행시킴
		 this.init();
	};
	//init
	//prototype 프로토 타입
	yul.page.prototype.init = function() {
		this.clickEvent() // bind form submit event
		this.loadFile() // bind form submit event
	}
	
	
	yul.page.prototype.loadFile = function() {
		
			var formData  = new FormData(); //FormData 객체 생성
			var inputFile = $("input[name='uploadFile']");  //input 태그의 type이 file인것을 찾아서 inputFile이라는 변수로 지정
			var files 	  = inputFile[0].files;
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
					$('#preview').attr('src', data.path);  
				},
				fail: function(error) {
					alert('업로드 실패');
				  return false;
				}
			}); //ajax End
	}
	 
	//작동할 이벤트를 프로토 타입으로 세팅
	yul.page.prototype.clickEvent = function() {
		
		//아이디 중복확인
		$('#uploadAjax').on('click', function(e) {
	 		e.preventDefault();
	 		
	 		var formData  = new FormData(); //FormData 객체 생성
			var inputFile = $("input[name='uploadFile']");  //input 태그의 type이 file인것을 찾아서 inputFile이라는 변수로 지정
			var files 	  = inputFile[0].files;
			//files : 선택한 모든 파일을 나열하는 FileList 객체입니다.
            //multiple 특성을 지정하지 않닸다면 두 개 이상의 파일을 포함하지 않습니다.
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
					$('#preview').attr('src', data.path);  
				},
				fail: function(error) {
					alert('업로드 실패');
				  return false;
				}
			}); //ajax End
	 		
		});// #uploadAjax End

	 };
	 
	 $(function() {
	 	yul.page = new yul.page();
	 });
	 
	 return yul.page;
})();