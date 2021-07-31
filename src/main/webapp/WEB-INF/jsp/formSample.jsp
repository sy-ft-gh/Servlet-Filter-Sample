<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="model.UserInput" %>
<%
	UserInput uInput = (UserInput) request.getAttribute("uInput");
	String errorMsg = (String) request.getAttribute("errorMsg");
	String name = "", address = "", gender = "";
	if (errorMsg == null) {
		name = uInput.getName();
		address = String.join("<br>", uInput.getAddr());
		gender = uInput.getGender().equals("0") ? "男性" : "女性";
	}	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ユーザー登録結果</title>
</head>
<body>
<% if (errorMsg != null) { %>
	<h1>エラーが発生しました</h1>
	<h2><%= errorMsg %></h2>
<% } else { %>
	<h1>以下の情報を登録しました</h1>
	<h2>名前：</h2>
	<h3><%= name %></h3>
	<h2>住所：</h2>
	<h3><%= address %></h3>
	<h2>性別：</h2>
	<h3><%= gender %></h3>
<% }  %>
</body>
</html>