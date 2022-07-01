<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" 
	src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
<title>Insert title here</title>
</head>
<body>
<c:forEach items="${selectAllAirlineApi}" var="airline">
    <tr>
        <th>
            <c:out value="${airline.alId}"/>
        </th>
        <th>
            <c:out value="${airline.alName}"/>
        </th>
    </tr>
    <br><br>
</c:forEach>
</body>
</html> 	