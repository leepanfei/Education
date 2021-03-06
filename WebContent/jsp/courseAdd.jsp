<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>发布课程</title>
	<link rel="stylesheet" href="css/pintuer.css">
	<link rel="stylesheet" href="css/admin.css">
	<script src="js/jquery2.js"></script>
	<script src="js/pintuer.js"></script>
	<script type="text/javascript">
		function check(){
			if(form1.coursename.value==""){
				alert("请输入课程名称");
				form1.coursename.focus();
				return false;
			}
			if(form1.introduce.value==""){
				alert("请输入课程介绍");
				form1.introduce.focus();
				return false;
			}
			if(form1.coursecount.value==""){
				alert("请输入课时数");
				form1.coursecount.focus();
				return false;
			}
			if(form1.price.value==""){
				alert("请输入价格");
				form1.price.focus();
				return false;
			}
			if(form1.username.value==""){
				alert("请输入发布人");
				form1.username.focus();
				return false;
			}
			return true;
		}
	</script>
  </head>
  
  <body>
    <div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-key"></span> 发布课程资料</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="<%=basePath%>courseServlet?action=add" name="form1" enctype="multipart/form-data" onsubmit="return check();">
         
      <div class="form-group">
        <div class="label">
          <label for="sitename">课程名称：</label>
        </div>
        <div class="field">
          	<td>
				<input type="text" class="input w50" name="coursename" size="50" placeholder="请输入课程名称"  /> 
			</td>
        </div>
      </div>      
      <div class="form-group">
        <div class="label">
          <label for="sitename">课程图片网址：</label>
        </div>
        <div class="field">
          	<td>
				<input type="file" name="file1" />
			</td>         
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label for="sitename">一句话：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="oneword" size="50" placeholder="请输入一句话"  />          
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label for="sitename">课程介绍：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="introduce" size="50" placeholder="请输入课程介绍"  />          
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label for="sitename">课时数：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="coursecount" size="50" placeholder="请输入课时数"  />          
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label for="sitename">价格：</label>
        </div>
        <div class="field">
          	<td>
				<input type="text" class="input w50" name="price" size="50" placeholder="请输入课程的价格"  /> 
			</td>          
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label for="sitename">折扣：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="discount" size="50" placeholder="请输入折扣"  />          
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label for="sitename">发布人：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="username" size="50" placeholder="请输入发布人"  />          
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label for="sitename">排序：</label>
        </div>
        <div class="field">
          <input type="text" name="seq" id="seq"  style="width:155px"/><font size="2" color="red">大号排前</font>          
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label for="sitename">类型：</label>
        </div>
        <div class="field">
          <td>
          	<input type="radio" name="chargetype" value="0" checked="checked">免费
			<input type="radio" name="chargetype" value="1">会员       
          </td>       
        </div>
      </div>
       <div class="form-group">
        
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 发布</button>   
        </div>
      </div>      
  </div>
  </body>
</html>
