<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" 
	src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>

<title>Insert title here</title>
</head>
<body>
	<c:forEach items="${selectAllScheduleApi}" var="schedule">
	    <tr>
	        <th>
	            <c:out value='${schedule.SName}'/>
	        </th>
	        <th>
	            <c:out value='${schedule.ADepnm}'/>
	        </th>
	        <th>
	            <c:out value='${schedule.AArrnm}'/>
	        </th>
	        <th>
	            <c:out value='${schedule.alName}'/>
	        </th>
	        <th>
	            <c:out value='${schedule.SStarttime}'/>
	        </th>
	        <th>
	            <c:out value='${schedule.SArrtime}'/>
	        </th>
	        <th>
	            <c:out value='${schedule.SPerson}'/>
	        </th>
	        <th>
	            <c:out value='${schedule.SPrice}'/>
	        </th>


	    </tr>
	    <br><br>
	</c:forEach>
</body>
</html> 	

	