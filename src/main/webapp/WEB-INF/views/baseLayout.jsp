<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!doctype html>
<html>
    <head>
        <title>Gyame - The Fire</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <link rel="shortcut icon" href="${contextPath}/static/images/favicon.ico" type="image/x-icon">
        <link href="${contextPath}/static/css/bootstrap.min.css" rel="stylesheet" media="screen" />
        <link href="${contextPath}/static/css/core.css" rel="stylesheet" media="screen"  />
        <script src="${contextPath}/static/js/jquery.min.js" ></script>
        <script src="${contextPath}/static/js/bootstrap.min.js" ></script>
    </head>
    <body>
        <tiles:insertAttribute name="header" />
        <div class="container">
            <tiles:insertAttribute name="body" />
        </div>
        <tiles:insertAttribute name="footer" />
    </body>
</html>
	