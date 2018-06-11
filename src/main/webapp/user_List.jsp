<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>本店会员</title>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css"/>
	</head>
	<body>
		<div class="main_box">
			<h2><span></span>本店会员</h2>
			<div class="cont_box">
				<table border="0" cellspacing="0" cellpadding="0" class="table" id="table_box">
				<thead>
					<tr>
						<th>手机号</th>
						<th>姓名</th>
						<th>性别</th>
						<th>车牌号</th>
						<th>行驶里程</th>
						<th>保险到期日</th>
						<th>车牌型号</th>
						<th>备注</th>
						<th width="268">操作</th>
					</tr>
				</thead>
				<tbody>
				
				<c:forEach items="${user.datas }" var="users">
					<%-- <tr id="${users.id }"><!--此处id为进行查看该会员相关信息时，当前数据的唯一标识--> --%>
						<td>${users.number }</td>
						<td>${users.name }</td>
						<td>${users.gender }</td>
						<td>${users.card }</td>
						<td>${users.mileage }</td>
						<td>${users.insurance }</td>
						<td>${users.model }</td>
						<td>${users.note }</td>
						<td>	
					<!-- 	<td>
							<a href="javascript:void(0);" class="table_btn table_edit see_order">
								<i class="fa fa-eye"></i>
								<span>查看订单</span>
							</a>
							<a href="javascript:void(0);" class="table_btn table_info edit_btn">
								<i class="fa fa-eye"></i>
								<span>查看详情</span>
							</a>
						</td>
						 -->
						
						
							<a href="${pageContext.request.contextPath }/user/delete.do?id=${users.id}" class="table_btn ">
								<i class="fa "></i>
								<span>删除</span>
							</a>
						</td>
					</tr>
					  </c:forEach>
					  
				</tbody>
			</table>
			<br>  <br>  <br>
	 <c:choose>
		<c:when test="${user.totalPages == 1 }">
	      <tr>
    	    <td colspan="5" align="right" class="td07"><img src="${pageContext.request.contextPath }/images/1.gif" width="4" height="5" align="absmiddle"> 首页　 <img src="${pageContext.request.contextPath }/images/2.gif" width="3" height="5" align="absmiddle"> 上一页　 <img src="${pageContext.request.contextPath }/images/2-2.gif" width="3" height="5" align="absmiddle"> 下一页　 <img src="${pageContext.request.contextPath }/images/3.gif" width="4" height="5" align="absmiddle"> 末页　　共 ${user.pageno }/${user.totalPages } 页 共有${user.totalRows } 条记录</td>
     	 </tr>
		</c:when>
		<c:when test="${user.pageno == 1 }">
	      <tr>
    	    <td colspan="5" align="right" class="td07"><img src="${pageContext.request.contextPath }/images/1.gif" width="4" height="5" align="absmiddle"> 首页　 <img src="${pageContext.request.contextPath }/images/2.gif" width="3" height="5" align="absmiddle"> 上一页　 <img src="${pageContext.request.contextPath }/images/2-2.gif" width="3" height="5" align="absmiddle"> <a href="${pageContext.request.contextPath}/user/search.do?pageno=${user.pageno+1 }">下一页</a>　 <img src="${pageContext.request.contextPath }/images/3.gif" width="4" height="5" align="absmiddle"> <a href="${pageContext.request.contextPath}/user/search.do?pageno=${user.totalPages }">末页</a>　共 ${user.pageno }/${user.totalPages } 页 共有${user.totalRows } 条记录</td>
     	 </tr>
		</c:when>
		<c:when test="${user.pageno == user.totalPages }">
	      <tr>
    	    <td colspan="5" align="right" class="td07"><img src="${pageContext.request.contextPath }/images/1.gif" width="4" height="5" align="absmiddle"> <a href="${pageContext.request.contextPath}/user/search.do?pageno=1">首页</a>　 <img src="${pageContext.request.contextPath }/images/2.gif" width="3" height="5" align="absmiddle"> <a href="${pageContext.request.contextPath}/user/search.do?pageno=${user.pageno-1 }">上一页</a>　 <img src="${pageContext.request.contextPath }/images/2-2.gif" width="3" height="5" align="absmiddle"> 下一页　 <img src="${pageContext.request.contextPath }/images/3.gif" width="4" height="5" align="absmiddle"> 末页　共 ${user.pageno }/${user.totalPages } 页 共有${user.totalRows } 条记录</td>
     	 </tr>
		</c:when>
		<c:otherwise>
	      <tr>
    	    <td colspan="5" align="right" class="td07"><img src="${pageContext.request.contextPath }/images/1.gif" width="4" height="5" align="absmiddle"> <a href="${pageContext.request.contextPath}/user/search.do?pageno=1">首页</a>　 <img src="${pageContext.request.contextPath }/images/2.gif" width="3" height="5" align="absmiddle"> <a href="${pageContext.request.contextPath}/user/search.do?pageno=${user.pageno-1 }">上一页</a>　 <img src="${pageContext.request.contextPath }/images/2-2.gif" width="3" height="5" align="absmiddle"> <a href="${pageContext.request.contextPath}/user/search.do?pageno=${user.pageno+1 }">下一页</a>　 <img src="${pageContext.request.contextPath }/images/3.gif" width="4" height="5" align="absmiddle"> <a href="${pageContext.request.contextPath}/user/search.do?pageno=${user.totalPages }">末页</a>　共 ${user.pageno }/${user.totalPages } 页 共有${user.totalRows } 条记录</td>
     	 </tr>
		</c:otherwise>
	</c:choose>    
      
			
		</div>
		</div>
		<!--javascript include-->
		<script src="${pageContext.request.contextPath }/js/jquery-2.2.1.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/jquery.dataTables.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/bootstrap-datepicker.js"></script>
		<script src="${pageContext.request.contextPath }/js/jquery.validate.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/other.js"></script>
		<script>
			$(function(){
				$("body").other({tableId:"#table_box",tableWrap:[1,2,8],tableAas:[ 0,"desc"],tableSearch:true});
				$("body").tipWindow({method:"delete",Class:".del_btn",even:"click",Twidth:"400",Theight:"180",delUrl:"#"});//delUrl 删除请求地址
				$("body").tipWindow({method:"edit",type:"form",Class:".edit_btn",even:"click",tipTit:"会员详情",Twidth:"1200",Theight:"800",editUrl:"user_Detail.html"});//editUrl 编辑请求地址
				//查看当前会员的订单
				$(".see_order").click(function(){
					var Wparent = window.parent.document,
						dataId = $(this).parents("tr").prop("id");
					$.ajax({
						type:"post",
						url:"order_List.html",
						data:{"id":dataId},
						success:function(data){
							$("body",Wparent).find(".nav li p[data-id='order']").trigger("click");
							$("body",Wparent).find("iframe").prop("src","order_List.html");
						}
					});
				});
			});
		</script>
	</body>
</html>
