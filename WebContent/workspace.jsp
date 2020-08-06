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
       });
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
	}
	li:first-child:hover{
		background-color: #6799FF;
	}
	li:nth-child(2):hover{
		background-color: #47C83E;
	}
	li:nth-child(3):hover{
		background-color: #cccccc;
	}
</style>
</head>
<body>
	<form>
		<div style="border:1px solid black; width: 900px; overflow: hidden;">
			<div style="border: 1px solid green; margin:5px;">
			<p>작성자</p>
			</div>
			<div>
				<ul style="display:inline-block;">
					<li style="border-left:1px solid #cccccc;">요청</li>
					<li>진행</li>
					<li>완료</li>
				</ul>
			</div>
				<div style="margin:5px;">
				<input type="text" value="업무명을 입력하세요"/>
			</div>
			<div>
				<img src="./image/calendar.png" style="margin-left: 5px;"><input style="margin-left: 5px;" type="text" id="date1" value="시작일 추가"/>
			</div>
			<div>
				<img src="./image/calendar.png" style="margin-left: 5px;"><input style="margin-left: 5px;" type="text" id="date2" value="마감일 추가"/>
			</div>
		</div>	
	</form>
</body>
</html>