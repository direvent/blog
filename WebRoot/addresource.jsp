<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%@ include file="htmlEditC.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
IResourceStyleDao rsty=new IResourceStyleDaoImpl();
List<ResourceStyle> list=rsty.findResourceStyle();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�����Դ</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
   <script language="javascript">
		function addblog(){
			if(document.getElementById("title").value==""){
				alert("��������Դ���⣡");
				return false;
			}
			if(document.getElementById("text").value==""){
				alert("��������Դ������");
				return false;
			}
			if(document.getElementById("resadd").value==""){
				alert("���������ص�ַ��");
				return false;
			}
			if(document.getElementById("image").value==""){
				alert("���ϴ���ԴͼƬ��");
				return false;
			}
			if(document.getElementById("size").value==""){
				alert("��������Դ��С��");
				return false;
			}
			if(document.getElementById("language").value==""){
				alert("������������ԣ�");
				return false;
			}
			if(document.getElementById("banben").value==""){
				alert("����������汾��");
				return false;
			}
			return true;
		}
	</script>
  
  <body> 
  <form action="addresourceok.jsp" method="post" enctype="multipart/form-data">
  ��Դ���ͣ�<select id="styleid" name="styleid">
    <% 
    for(int i=0;i<list.size();i++){
    ResourceStyle style=list.get(i);
    %>
    <option value="<%=style.getStyleid() %>"><%=style.getStyle() %></option>
    <% 
    }
    %>
    </select>
    ��Դ���⣺<input type="text" id="title" name="title">
    ��Դ��С��<input type="text" id="size" name="size">
    ������ԣ�<input type="text" id="language" name="language">
    ����汾��<input type="text" id="banben" name="banben">
  ��Դ���:<textarea name="text" class="htmlEditCss" id="text"></textarea>
 ���ص�ַ��<input type="text" id="resadd" name="resadd">
	��ԴͼƬ��<input type="file" name="image" id="image">
    <input type="submit" value="�����ύ" onclick="return addblog()">
    </form>
  </body>
</html>
