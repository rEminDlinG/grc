<%--
  Created by IntelliJ IDEA.
  User: PANZHENG
  Date: 2018/2/5
  Time: 18:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="serverUrl" value="${pageContext.request.scheme}${'://'}${pageContext.request.serverName}${':'}${pageContext.request.serverPort}${pageContext.request.contextPath}" />
<html>
<head>
    <title>拍摄计划</title>
    <link rel="stylesheet" type="text/css" href="${serverUrl}/css/calendar.min.css">
    <script src="${serverUrl}/js/calendar.js"></script>

    <script>
        $(document).ready(function() {
            $('.ui.selection.dropdown').dropdown();
            $('.ui.dropdown').dropdown();
            $('.ui.menu.dropdown').dropdown();
            $('.ui.checkbox').checkbox();
        });
    </script>
</head>
<body>
<h2 class="ui header">拍摄计划</h2>
<div class="ui divider"></div>
<div class="ui pagination menu">
    <a class="icon item"  href="javascript:requestResult(${cri.curPageNum - 1})">
        <i class="left chevron icon"></i>
    </a>
    <c:if test="${cri.curPageNum == 0}">
        <span class="item active blue">1</span>
    </c:if>
    <c:if test="${cri.curPageNum != 0}">
        <a class="item" href="javascript:requestResult(0)">1</a>
    </c:if>
    <c:if test="${cri.curPageNum > 5}">
        <span class="item">...</span>
    </c:if>
    <c:if test="${cri.totalPageNum > 1}">
        <c:forEach begin="${(cri.curPageNum - 4)  < 1 ? 1 : cri.curPageNum - 4}" end="${cri.curPageNum < cri.totalPageNum - 5 ? cri.curPageNum + 4 : cri.totalPageNum - 2}" var="i">
            <c:if test="${cri.curPageNum == i}">
                <span class="item active blue">${i + 1}</span>
            </c:if>
            <c:if test="${cri.curPageNum != i}">
                <a class="item" href="javascript:requestResult(${i})">${i + 1}</a>
            </c:if>
        </c:forEach>
    </c:if>
    <c:if test="${cri.curPageNum < cri.totalPageNum - 6}">
        <span class="item">...</span>
    </c:if>
    <c:if test="${cri.totalPageNum > 1}">
        <c:if test="${cri.curPageNum + 1 == cri.totalPageNum}">
            <span class="item active blue">${cri.totalPageNum}</span>
        </c:if>
        <c:if test="${cri.curPageNum + 1 != cri.totalPageNum}">
            <a class="item" href="javascript:requestResult(${cri.totalPageNum - 1})">${cri.totalPageNum}</a>
        </c:if>
    </c:if>
    <a class="icon item"  href="javascript:requestResult(${cri.curPageNum + 1})">
        <i class="right chevron icon"></i>
    </a>
</div>
<table class="ui celled striped table">
    <thead>
    <tr>
        <th colspan="7">
            <div class="ui grid">
                <div class="six column row">
                    <div class="left floated column">
                        <div class="ui label">
                            <i class="list icon"></i>
                            共检索${cri.resultCount}条记录
                        </div>
                    </div>

                </div>
            </div>
        </th>
    </tr>
    <tr>
        <th width="10%">No.</th>
        <th width="10%">REQUEST ID</th>
        <th width="10%">PlAN ID</th>
        <th>需求名称</th>
        <th width="15%">Satellites</th>
        <th width="15%">PLAN START</th>
        <th width="10%">状态</th>
    </tr>
    </thead>
    <tbody><c:forEach items="${resultSet}" var="imagingPlan">
    <tr>
        <td>${imagingPlan.id}</td>
        <td><a href="userRequest?userRequestId=${imagingPlan.userRequestId}">${imagingPlan.requestId}</a></td>
        <td><a href="imagingPlan?imagingPlanId=${imagingPlan.id}">${imagingPlan.planId}</a></td>
        <td>${imagingPlan.requestName}</td>
        <td>${imagingPlan.requestSatellites}</td>
        <td>${imagingPlan.planStartTime}</td>
        <td>${imagingPlan.status}</td>
    </tr></c:forEach>
    <tfoot>
    </tfoot>
    </tbody>
</table>
</body>
</html>
