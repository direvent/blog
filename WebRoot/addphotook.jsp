<%@ page language="java" import="java.util.*,java.sql.Timestamp,com.jspsmart.upload.*" pageEncoding="gb2312"%>
<%@page import="gaohuan.myblog.dao.*"%>
<%@page import="gaohuan.myblog.daoImpl.*"%>
<%@page import="gaohuan.myblog.pojo.*"%>
<%@page import="java.text.SimpleDateFormat"%>


<%   
 	request.setCharacterEncoding("utf-8");
     SmartUpload su = new SmartUpload();
	//��ʼ��SmartUpload����
	su.initialize(pageContext);
	com.jspsmart.upload.File file = null;
	//�����ϴ�����
	String allowed = "gif,jpg,doc,rar,png,mp3,wma,jpeg";
	//�����ϴ�����
	String denied = "jsp,asp,php,aspx,html,htm,exe,bat";
	com.jspsmart.upload.Request req  = null;
	//�����ϴ��ļ���С
	int file_size = 20*1024*1024;
	String exceptionMsg = null;
	String paths="";//����ϴ�ͼƬ��·��
	int i = 0;
	try {
			//���������ϴ��ļ�����   
			su.setAllowedFilesList(allowed);
			//�������ϴ��ļ�����   
			su.setDeniedFilesList(denied);		
			//�����ļ��������   
			su.setMaxFileSize(file_size);						
			//ִ���ϴ�
			su.upload();
			//�õ������ϴ��ļ�����Ϣ
			file = su.getFiles().getFile(0);
			String filepath = null;
			if(!file.isMissing()){
				//�����ļ��ڷ������ı���λ��
				filepath = "images//";
				filepath += file.getFileName();
				//�ļ����Ϊ   
				System.out.println(filepath);
				paths=filepath;
				file.saveAs(filepath, SmartUpload.SAVE_VIRTUAL);
			}
			
		} catch (Exception e) {
			exceptionMsg = e.getMessage();
			e.printStackTrace();
		}	
    
     int styleid=Integer.parseInt(su.getRequest().getParameter("styleid"));
     String title=su.getRequest().getParameter("title");
     String text=su.getRequest().getParameter("text");
    IPhotoDao photo=new IPhotoDaoImpl();
    Photo pho=new Photo();
    pho.setStyleid(styleid);
    pho.setTitle(title);
    pho.setText(text);
    pho.setPhoadd(paths);
    pho.setInputtime(new Timestamp(new Date().getTime()));
    photo.addPhoto(pho);
 %>
��ӳɹ�..
    <%
		response.setHeader("refresh", "0;url=addphoto.jsp");
	%>