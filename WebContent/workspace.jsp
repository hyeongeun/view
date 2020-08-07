<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="jquery-3.5.1.js"></script>
<script type="text/javascript" src="jquery-ui.js"></script>
<link rel="stylesheet" href="jquery-ui.css"/>
<link rel="stylesheet" href="jquery-ui.structure.css"/>
<link rel="stylesheet" href="jquery-ui.theme.css"/>
<script type="text/javascript">
       $(function(){
              $( "#date1" ).datepicker({
                       dateFormat: "yy-mm-dd",
                       monthNames:["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
                       dayNamesMin: [ "일", "월", "화", "수", "목", "금", "토" ],
                       changeMonth: true,
                       changeYear: true,
                       currentText: "Today",
                       showOtherMonths: true,
                       yearRange: "2010:2020"
                      
                     });
              $( "#date2" ).datepicker({
                  dateFormat: "yy-mm-dd",
                  monthNames:["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
                  dayNamesMin: [ "일", "월", "화", "수", "목", "금", "토" ],
                  changeMonth: true,
                  changeYear: true,
                  currentText: "Today",
                  showOtherMonths: true,
                  yearRange: "2010:2020"
                     });
              
              $("#btn").click(function(){
                     $("#resultDate").text($("#date1").val());
              });
              $("#btn").click(function(){
                  $("#resultDate").text($("#date2").val());
           });
              
                    
              $("#secondUl li:first-child").click(function(){
             	 // alert("확인");
             	 $("#secondUl li:first-child").css("color","white"); 
             	 $("#secondUl li:first-child").css("background","#6799FF"); 
             	 $("#secondUl li:nth-child(2)").css("color","black"); 
             	 $("#secondUl li:nth-child(2)").css("background","white");
             	 $("#secondUl li:nth-child(3)").css("color","black"); 
              	 $("#secondUl li:nth-child(3)").css("background","white"); 
               });              
              $("#secondUl li:nth-child(2)").click(function(){
            	 // alert("확인");
            	 $("#secondUl li:first-child").css("color","black"); 
            	 $("#secondUl li:first-child").css("background","white"); 
            	 $("#secondUl li:nth-child(2)").css("color","white"); 
            	 $("#secondUl li:nth-child(2)").css("background","#47C83E");
            	 $("#secondUl li:nth-child(3)").css("color","black"); 
             	 $("#secondUl li:nth-child(3)").css("background","white"); 
              });
              $("#secondUl li:nth-child(3)").click(function(){
             	  //alert("확인");
             	 $("#secondUl li:first-child").css("color","black"); 
             	 $("#secondUl li:first-child").css("background","white");
             	 $("#secondUl li:nth-child(2)").css("color","black"); 
             	 $("#secondUl li:nth-child(2)").css("background","white"); 
             	 $("#secondUl li:nth-child(3)").css("color","white"); 
             	 $("#secondUl li:nth-child(3)").css("background","#cccccc"); 
               });
              
              $(".addIndex").click(function(){
            	 //alert("확인");
            	 $(".addIndexDiv").css("display","block");
            	 $(".addIndex").css("display","none");
              });
       });
       
       function myFun(){
     	  //alert("확인");
          window.open("http://localhost:8181/view/workList.html","","width=300px, height=200px");
           //"주소","윈도우이름","가로세로스크롤"
    }
       function workPost(){
    	   $(".workLiDivRead").css("display","block");
       }
       
  
       
</script>
<style type="text/css">
	li{
		list-style-type: none;
		padding: 5px 15px;
		border:1px solid #cccccc;
		float:left;
		border-left-width: 0px;
		display: inline-block;
		overflow: hidden;
		cursor: pointer;
	}
	#secondUl li:first-child{
		background-color: #6799FF;
		color:white;
		border-radius: 10px 0px 0px 10px;
	}
	#secondUl li:nth-child(3){
		border-radius: 0px 10px 10px 0px;
	}
	.addIndex:hover{
		font-size: 0.7em;
		border: 1.5px solid black;
		padding: 2px;
		color:black;
		font: 
		border-radius: 10px 10px 10px 10px;
		cursor: pointer;
	}
	.addIndex{
		font-size: 0.7em;
		border: 1px solid #cccccc;
		color:#cccccc;
		padding: 3px;
		border-radius: 10px 10px 10px 10px;
		cursor: pointer;
	}

	
</style>

</head>
<body>
	<form action="#" method="get" onsubmit="workPost()">
			<div class="workLiDiv" style="border:1px solid black; width: 900px; overflow: hidden; " >
				<div style="border: 1px solid green; margin:5px;">
				<b>작성자</b>
				</div>
				<div>
					<ul style="display:inline-block;" id="secondUl">
						<li style="border-left:1px solid #cccccc;">요청</li>
						<li>진행</li>
						<li>완료</li>
					</ul>
				</div>
				<div style="margin:5px;">
					<input type="text"/>
					<input type="button" onclick="myFun()" value="담당자 추가"/>
				</div>
				
				<label class="addIndex">∨항목 추가 입력</label>
				
				<div class="addIndexDiv" style="display:none;">		
					<div class="workDateDiv">
						<div>
							<img src="./image/calendar.png" style="margin-left: 5px;"><input style="margin-left: 5px;" type="text" id="date1" value="시작일 추가"/>
						</div>
						<div>
							<img src="./image/calendar.png" style="margin-left: 5px;"><input style="margin-left: 5px;" type="text" id="date2" value="마감일 추가"/>
						</div>	
					</div>	
					
					
					<div style="margin:5px;">
						<input type="text" value="업무명을 입력하세요"/>
					</div>
				
				
					
					<div style="margin:5px;">
						<textarea rows="10" cols="50" style ="margin-left: 13px;">업무내용을 입력해주세요</textarea>
					</div>
					
					<div class="tuple">
						<span class="one"> 
							<img src="./image/upload.png">
							<input class="content" type="file" name="file" />
						</span>
					</div>
				
				</div>
			

		
		<div>
			<input type="submit" value="올리기">		
		</div>
		
		
		</div>
	</form>
	
	
<%-- 	<div id="listAllDiv">
		<!-- 새로운 댓글 -->
		
		<!-- 기존 댓글 : 자바 스크립트에서 생성한 태그들과 동일한 형태로 작성한다. -->
		<c:forEach >
			<div class="replyDiv" id="${replyDTO.bunho}">
				<span class="cssBunho">${replyDTO.bunho}</span>
				<span class="cssReply">${replyDTO.line_reply}</span>
				<span class="cssUpDel">
					<a href="javascript:deleteToServer('${replyDTO.bunho}','${root}')">삭제&nbsp;</a>					
					<a href="javascript:selectToServer('${replyDTO.bunho}','${root}')">수정</a>
				</span>
			</div>
		</c:forEach>--%>
		
		
			<div class="workLiDivRead" style="border:1px solid black; width: 900px; overflow: hidden; display:none" >
				<div style="border: 1px solid green; margin:5px;">
				<b>작성자</b>
				</div>
				<div>
					<ul style="display:inline-block;" id="secondUl">
						<li style="border-left:1px solid #cccccc;">요청</li>
						<li>진행</li>
						<li>완료</li>
					</ul>
				</div>
				<div style="margin:5px;">
					<a>이형은</a>
					<a href="#">담당자 변경</a>
				</div>
				
				<div class="addIndexDivRead">		
					<div class="workDateDiv">
						<div>
							<img>
							<input style="margin-left: 5px;" type="text" id="date1" value="시작일 추가"/>
						</div>
						<div>
							<img src="./image/calendar.png" style="margin-left: 5px;"><input style="margin-left: 5px;" type="text" id="date2" value="마감일 추가"/>
						</div>	
					</div>	
					
					
					<div style="margin:5px;">
						<input type="text" value="업무명을 입력하세요"/>
					</div>
				
				
					
					<div style="margin:5px;">
						<textarea rows="10" cols="50" style ="margin-left: 13px;">업무내용을 입력해주세요</textarea>
					</div>
					
					<div class="tuple">
						<span class="one"> 
							<img src="./image/upload.png">
							<input class="content" type="file" name="file" />
						</span>
					</div>
				
			</div>
		</div>
		
		
		
</body>
</html>