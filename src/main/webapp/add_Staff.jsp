<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>添加员工</title>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css"/>
	</head>
	<body>
		<div class="main_box">
			<h2><span></span>添加员工</h2>
			<div class="cont_box">
				<form action="${pageContext.request.contextPath }/staff/add.do" method="post" id="addstaff_form">
					<ul class="addpro_box">
						<li>
							<label>姓名：</label>
							<input type="text" placeholder="请输员工姓名" name="name"/>
						</li>
						<li>
							<label>手机号：</label>
							<input type="text" placeholder="请输入手机号" name="phone"/>
						</li>
						<li>
							<label>性别：</label>
							<input type="text" placeholder="请输入性别" name="sex"/>
						</li>
						<li>
							<label>岗位：</label>
							<select name="gw" required data-msg-required="所属岗位不能为空">
								<option value="">请选择所属岗位</option>
								<option value="店长">店长</option>
								<option value="财务">财务</option>
								<option value="洗车工">洗车工</option>
							<select>
						</li>
						<li>
							<label>是否在岗：</label>
							<select name="zt">
								<option value="在岗">在岗</option>
								<option value="离职">离职</option>
							<select>
						</li>
					</ul>
					<div class="probtn_box clearfix">
						<input type="submit" value="添加员工" class="btn blue_btn"/>
					</div>
				</form>
			</div>
		</div>
		<!--javascript include-->
		<script src="${pageContext.request.contextPath }/js/jquery-2.2.1.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/jquery.dataTables.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/bootstrap-datepicker.js"></script>
		<script src="${pageContext.request.contextPath }/js/jquery.validate.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/jquery.form.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/other.js"></script>
		<script>
			$(function(){
				$("body").other({formId:"#addstaff_form",formUrl:"${pageContext.request.contextPath }/staff/add.do");//formUrl 表单请求地址
			});
		</script>
	</body>
</html>
