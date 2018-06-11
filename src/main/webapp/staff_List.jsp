<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>员工列表</title>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css"/>
	
	</head>
	<body>
		<div class="main_box">
			<h2><span></span>员工列表</h2>
			<div class="cont_box">
				<form action="#" method="post" id="staff_form">
					<table border="0" cellspacing="0" cellpadding="0" class="table" id="table_box">
					<thead>
						<tr>
							<th>员工编号</th>
							<th>姓名</th>
							<th>性别</th>
							<th>岗位</th>
							<th>电话</th>
							<th>状态</th>
							<th width="268">操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${staff.datas }" var="staff">
						<tr id="${staff.id }">
							<td>${staff.id }</td>
							<td>${staff.name }</td>
							<td>${staff.sex }</td>
							<td>${staff.gw }</td>
							<td>${staff.phone }</td>
							<td>${staff.zt }</td>
							<td>
								<a href="${pageContext.request.contextPath }/staff/del.do?id=${staff.id }">删除</a>
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				
			</form>
		</div>
		</div>
		<!--javascript include-->
		<script src="${pageContext.request.contextPath }/js/jquery-2.2.1.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/jquery.dataTables.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/bootstrap-datepicker.js"></script>
		<script src="${pageContext.request.contextPath }/js/jquery.validate.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/bootstrap-datepicker.js"></script>
		<script src="${pageContext.request.contextPath }/js/other.js"></script>
		<script>
			$(function(){
				$("body").other({tableId:"#table_box",tableWrap:[1,7],tableAas:[ 0,"desc"],tableSearch:true});
				
			});
		</script>
	</body>
</html>
