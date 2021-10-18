<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<div class="content-wrapper">
    <div class="page-header">
        <h3 class="page-title">Employee List</h3>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <table class="table table-striped table-condensed">
                <thead>
                    <tr>
                            <th>Employee Name</th>
                            <th>Email</th>
                            <th>Gender</th>
                            <th>Date of Birth</th>
                            <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                            <td><a href="/employee/2">Genda Swamy</a></td>
                            <td>genda.swamy@gyame.in</td>
                            <td>Mail</td>
                            <td>12/Feb/1968</td>
                            <td>
                                <a href="/employee/edit/1">Edit</a>
                            </td>

                    </tr>
                </tbody>
            </table>
         </div>
    </div>
</div>