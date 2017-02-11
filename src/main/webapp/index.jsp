<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="printer" class="org.learnteachcode.seoul.LocalePrinter" scope="session">
    <jsp:setProperty name="printer" property="locale" value="${pageContext.request.locale}" />
</jsp:useBean>
<c:set var="languageCode" value="${pageContext.request.locale.language}" />
<!DOCTYPE html>
<html>
    <head>
        <title>Start Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <c:out value="${pageContext.request.locale.language}" default="Couldn't detect locale" />
        <c:out value="${languageCode}" />
        <c:choose>
            <c:when test="${languageCode == 'ko'}">
                <jsp:include page="hello_ko.jsp"/>
            </c:when>
            <c:when test="${languageCode == 'en'}">
                <jsp:include page="hello_en.jsp"/>
            </c:when>
            <c:otherwise>
                <jsp:include page="hello_default.jsp"/>
            </c:otherwise>
        </c:choose>
        <c:out value="${printer.printLocale()}" />
        <% out.println("Fuck this EL shit"); %>
    </body>
</html>
