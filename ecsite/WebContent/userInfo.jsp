<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>
	<title>UserInfo画面</title>

	<style type="text/css">
		body{
			margin:0;
			padding:0;
			line-height:1.6;
			letter-spacing:1px;
			font-family:Verdana,Helvetica,sans-serif;
			font-size:12px;
			color:#333;
			background:#fff;
		}

		table{
			text-align:center;
			margin:0px auto;
			border:1px solid black;
		}
		/* ========ID LAYOUT======== */
		#top{
			width:780px;
			margin:30px auto;
			border:1px solid black;
		}

		#header{
			width:100%;
			height:80px;
			background-color:black;
		}

		#main{
			width:100%;
			height:500px;
			text-align:center;
		}

		#footer{
			width:100%;
			height:80px;
			background-color:black;
			clear:both;
		}
	</style>
</head>
<body>
	<div id="header">
		<div id="pr">
		</div>
	</div>
	<div id="main">
		<div id="top">
			<p>ユーザー詳細</p>
		</div>
		<div>
			<table>
				<tr>
					<th scope="row">ログインID</th>
					<td><s:property value="%{#session.loginId}"/></td>
				</tr>
				<tr>
					<th scope="row">ログインパスワード</th>
					<td><s:property value="%{#session.loginPass}"/></td>
				</tr>
				<tr>
					<th scope="row">ユーザー名</th>
					<td><s:property value="%{#session.userName}"/></td>
				</tr>
				<tr>
					<th scope="row">登録日時</th>
					<td><s:property value="%{#session.insertDate}"/></td>
				</tr>
				<tr>
					<th scope="row">更新日時</th>
					<td><s:property value="%{#session.updatedDate}"/></td>
				</tr>
				<tr>
					<td><s:form action="UserUpdateAction"><s:submit value="編集"/></s:form></td>
					<td><s:form action="UserDeleteAction"><input type="hidden" name="deleteFlg" value="1"><s:submit value="削除" method="delete"/></s:form></td>
				</tr>
			</table>
		</div>
	</div>
	<div id="footer">
		<div id="pr">
		</div>
	</div>
</body>
</html>