<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%> 
<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> 
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%> 
<c:set var="contextPath" value="${pageContext.request.contextPath}" /> 

<style>
	html.sidebar-left-collapsed .sidebar_usercon .su_detailscon img{
		width: 60px!important;
	    height: 60px!important;
	    border-radius: 50px;
	    border: 2px solid #fff;
	    margin-top: 12px;
	}
   #uph {
	   width: 100px;
	   height: 100px;
	   border-radius: 50px;
	   border: 2px solid #fff;
   }
   .photo-upload {
	   position: relative;
	   width: 100%;
	   height: 100%;
	   float: left;
	   padding: 10px;
   }
   .sidebar_usercon {
	    position: relative;
	    float: left;
	    width: 100%;
	    margin: -48px 0 10px 0;
	    height: auto;
	    padding: 30px 5px 16px;
	    text-align: center;
	    box-shadow: 0 5px 9px -2px #0000009c;
	    background: url(${contextPath}/view-uploaded-web-parameter.htm?parameterId=${sessionScope.menuTopPageBgImage}); 
	    background-size: cover;
	}
	.sidebar-left {
	    background: #f9f9f9;
	    background-image: url(${contextPath}/view-uploaded-web-parameter.htm?parameterId=${sessionScope.menuBottomPageBgImage}); 
	    background-size: contain;
	    box-shadow: 0 0 20px #000000c4;
	    color: #777;
	    display: table-cell;
	    position: relative;
	    vertical-align: top;
	    width: 260px;
	    z-index: 1010;
	}
</style>

<sec:authentication var="principal" property="principal" />
<!-- start: sidebar -->
<aside id="sidebar-left" class="sidebar-left">
   <div class="sidebar-header">
      <div class="sidebar-toggle hidden-xs" data-toggle-class="sidebar-left-collapsed" data-target="html" data-fire-event="sidebar-left-toggle">
         <i class="fa fa-bars" aria-label="Toggle sidebar"></i>
      </div>
   </div>
   <div class="sidebar_usercon">
      <div class="su_detailscon">
         <!-- <i class="fa fa-user" aria-hidden="true"></i> -->
         <c:choose>
            <c:when test="${not empty user.profilePhoto}">
               <img id="uph" src="data:image/png;base64, ${user.profilePhoto}">
            </c:when>
            <c:otherwise>
               <i class="fa fa-user" aria-hidden="true"></i>
            </c:otherwise>
         </c:choose>
         <p>${principal.dbUser.firstName}&nbsp;${principal.dbUser.lastName}</p>
<%--          <span>${principal.primaryRole.displayName}</span>  --%>
		 <span>${principal.dbUser.designation}</span>  
      </div>
      <div class="su_linkcon">
         <%-- <a href="${contextPath}/changePassword.htm"><i class="fa fa-pencil" aria-hidden="true"></i> <span>Change Password</span></a>
         <a href="${contextPath}/editProfile.htm"><i class="fa fa-pencil" aria-hidden="true"></i> <span>Edit Profile</span></a> --%>
         <a href="${contextPath}/umt/user/change/password"><i class="fa fa-pencil" aria-hidden="true"></i> <span>Change Password</span></a>
         <a href="${contextPath}/umt/user/profile"><i class="fa fa-pencil" aria-hidden="true"></i> <span>Edit Profile</span></a>
      </div>
   </div>
   <div class="nano">
      <div class="nano-content">
         <div class="sidebar-widget widget-tasks">
            <div class="widget-content">
               <nav id="menu" role="navigation">
                  <ul class="nav nav-main">
                     <sec:authorize access="isAuthenticated()">
                        <c:forEach items="${sessionScope.USER_MENUS}" var="menu">
                           <c:if test="${menu.parent == null}">
                              <c:set var="node" value="${menu}" scope="request" />
                              <jsp:include page="node.jsp" />
                           </c:if>
                        </c:forEach>
                     </sec:authorize>
                  </ul>
               </nav>
            </div>
         </div>
      </div>
   </div>
</aside>
	