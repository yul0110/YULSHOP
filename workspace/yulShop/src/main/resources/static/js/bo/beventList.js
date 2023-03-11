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
	
		dataJson.pageNum 		= $('#pageNum').val();
						
		//에이작스 통신을 위한 객체 생성
	    const xhr = new XMLHttpRequest();
	    
	    //전송방식과 통신 할 경로 설정
	    xhr.open("post", "/eventListAjax");
	    
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
				
				var d 			= e.currentTarget.response;
				var itemList	= d.eventList;
				
				var pagingNodeCopy = $('#pageNode').clone();
				pagingNodeCopy.attr('id', '');
				
				//init 초기화
				$('#eventList').html('');
				$('#pagingList').html('');
				
				
				//리스트를 뿌려주는 each
				$.each(itemList, function( i, item ) {
					
					var eventNodeCopy = $('#eventNode').clone();
					
					eventNodeCopy.attr('id', '');
					eventNodeCopy.attr('style', '');
					eventNodeCopy.find('.eventCount').html(item.id);
					eventNodeCopy.find('.eventTitle').html(item.title);
					
					//시간작업
					let f = new Date(item.regDt);
					let y = f.getFullYear(); 
					let m = f.getMonth()+1;
					let d = f.getDate();
					
					if(m<10){
						m = "0" + m;
					}
					if(d<10){
						d = "0" + d;
					}
					let full = y + " - " + m + " - " + d ; 
					eventNodeCopy.find('.eventRegDt').html(full);
					eventNodeCopy.find('.eventUseYn').html(item.useYn);
					eventNodeCopy.find('.titleCilck').data('eid',item.id);
					
					$('#eventList').append(eventNodeCopy);
				});
				//페이지를 뿌려주는 append
				
				
				if(d.firstPageData > 0){ //페이지를 그릴지 안그릴지 선택
					
					if(d.firstPageData <= 1){//첫페이지로 보내기를 그릴지 말지
						pagingNodeCopy.find('.firstPage').data('number', d.firstPageData);
						pagingNodeCopy.find('.prevPage').data('number', d.prevPageData);
					}else{
						pagingNodeCopy.find('.firstPage').remove();
						pagingNodeCopy.find('.prevPage').remove();
					}
					
					
					if(d.pageNumPageData > 1){
						pagingNodeCopy.find('.pagingPrevNum').data('number', d.pageNumPageData - 1);
						pagingNodeCopy.find('.pagingPrevNum').html(d.pageNumPageData - 1);
					}else{
						pagingNodeCopy.find('.pagingPrevNum').remove();
					}
					
					pagingNodeCopy.find('.pagingNum').data('number', d.pageNumPageData);
					pagingNodeCopy.find('.pagingNum').html(d.pageNumPageData);
					
					if(d.pageNumPageData != d.endPageData){
						pagingNodeCopy.find('.pagingNextNum').data('number', d.pageNumPageData + 1);
						pagingNodeCopy.find('.pagingNextNum').html(d.pageNumPageData + 1);
					}else{
						pagingNodeCopy.find('.pagingNextNum').remove();
					}
					
					if(d.nextPageData > 0){
						pagingNodeCopy.find('.nextPage').data('number', d.nextPageData);
					}else{
						pagingNodeCopy.find('.nextPage').remove();
					}
					if(d.endPageData != d.pageNumPageData){
						pagingNodeCopy.find('.endPage').data('number', d.endPageData);
					}else{
						pagingNodeCopy.find('.endPage').remove();
					}
					
					pagingNodeCopy.attr('style', '');
					
					$('#pagingList').append(pagingNodeCopy);
				}
				
				location.href = '#eventList';
				
			}else{
				console.log('서버와통신에 실패 하였습니다. error-code : ' + e.currentTarget.status)
			}				        
	    };
	    //전송할 데이터 json 타입으로 변동후 전달
	    xhr.send(JSON.stringify(dataJson));	
	}	
	
	//작동할 이벤트를 프로토 타입으로 세팅

	yul.page.prototype.clickEvent = function() {
		
		$(document).on('click', '.pagingCilck', function(){
			
			$('#pageNum').val($(this).data('number'));
			yul.page.getList();
		})
			
		$(document).on('click', '.titleCilck', function(){
			
			location.href = "/beventDetail?beventId=" + $(this).data('eid'); 
		})
		
	};
	
 
	$(function() {
		yul.page = new yul.page();
	});
	 
	return yul.page;
})();