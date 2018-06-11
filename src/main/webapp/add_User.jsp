<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>会员添加</title>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css"/>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/datepicker.css"/>
	</head>
	<body>
		<div class="main_box">
			<h2><span></span>会员添加</h2>
			<div class="cont_box">
				<form action="${pageContext.request.contextPath }/user/add.do" method="post" id="user_form">
					<ul class="addpro_box adduser_box">
						<li>
							<label>姓名：</label>
							<input type="text" placeholder="请输入姓名" name="name" />
						</li>
						<li>
							<label>手机号：</label>
							<input type="text" placeholder="请输入手机号" name="number" />
						</li>
						<li>
							<label>性别：</label>
							<input type="text" placeholder="请输入性别" name="gender" />
						</li>
						<li>
							<label>车牌：</label>
							<input type="text" placeholder="请输入车牌号码" name="card" />
						</li>
						<li>
							<label>行驶里程：</label>
							<input type="text" placeholder="请输入行驶里程" name="mileage" />
						</li>
						<li>
							<label>保险到期日：</label>
							<input type="text" placeholder="请选择保险到期日" name="insurance"/>
						</li>
						<li>
							<label>车品牌型号：</label>
							<input type="text"  name="model" "/>
						</li>
						<li>
							<label>备注：</label>
							<textarea rows="3" name="note"></textarea>
						</li>
					</ul>
					<div class="probtn_box clearfix">
						<input type="submit" value="添加会员" class="btn blue_btn"/>
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
		<script src="${pageContext.request.contextPath }/js/jquery.cxselect.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/other.js"></script>
		<script>
			$(function(){
				$("body").other({formId:"#user_form",formUrl:"${pageContext.request.contextPath }/user/add.do",linkHref:""});//formUrl 表单请求地址,linkHref 请求成功后跳转地址，可不填
				$("#carmodel").cxSelect({
					url: "js/carModel.json",
					selects: ["carbrand", "carmodela", "carmodelb", "carmodelc"],
					emptyStyle: "none"
				});
			});
		</script>
	</body>
</html>