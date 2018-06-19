<!DOCTYPE html>

<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%final Boolean auiCallback = request.getQueryString() == null ? false : request.getQueryString().contains("aui");%>

<html lang="en">
<head>
  <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title><%= auiCallback ? "Telstra ASA" : "Telstra Threat Lookup" %></title>

    <meta name="_csrf" content="${_csrf.token}"/>
    <meta name="_csrf_header" content="${_csrf.headerName}"/>


    <spring:theme code="standard.custom.css.file" var="customCssFile" />
    <link rel="stylesheet" href="<c:url value="${customCssFile}" />" />
    <link rel="icon" href="<c:url value="/favicon.png" />" type="image/x-icon" />

</head>
<body id="cas">

<div id="container">
  <c:set var='isAui' value='<%=auiCallback%>' />
  <c:choose>
    <c:when test="${isAui}">
      <header id="logo-header">
        <img src="./images/logo.png" width="648" height="77" alt="Telstra Advanced Security Analytics" />
      </header>
    </c:when>
    <c:otherwise>
      <header id="logo-header">
        <img src="./images/logo-threat-lookup.png" width="648" height="77" alt="Telstra Threat Lookup" />
      </header>
    </c:otherwise>
  </c:choose>
  <div id="content">
