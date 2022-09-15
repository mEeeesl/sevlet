<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String userId = request.getParameter("userId");
	String isStoreId = request.getParameter("isStoreId");
	
	if(!userId.equals("")) {
		session.setAttribute("userId", userId);
		
		if(isStoreId != null && isStoreId.equals("true")) {
			Cookie cookie = new Cookie("userId", userId);
			cookie.setMaxAge(10); // test용 10초
			response.addCookie(cookie);
		}
	}
%>
<c:redirect url='main.jsp'/>