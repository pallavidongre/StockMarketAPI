<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title></title>
    <style>
        * {
            box-sizing: border-box;
        }

        *:focus {
            outline: none;
        }

        .login {
            margin: 60px auto;
            width: 378px;
        }

        .login-screen {
            background-color: #eeeee4;
            padding: 20px;
            border-radius: 5px
        }

        .app-title {
            text-align: center;
            color: #1e81b0;
        }

        .login-form {
            text-align: center;
        }

        .control-group {
            margin-bottom: 10px;
        }

        input {
            text-align: center;
            background-color: #ECF0F1;
            border: 2px solid transparent;
            border-radius: 3px;
            font-size: 16px;
            font-weight: 200;
            padding: 10px 0;
            width: 250px;
            transition: border .5s;
        }

        input:focus {
            border: 2px solid #3498DB;
            box-shadow: none;
        }

        .btn {
            border: 2px solid transparent;
            background: #3498DB;
            color: #ffffff;
            font-size: 16px;
            line-height: 25px;
            padding: 10px 0;
            text-decoration: none;
            text-shadow: none;
            border-radius: 3px;
            box-shadow: none;
            transition: 0.25s;
            display: block;
            width: 250px;
            margin: 0 auto;
        }

        .btn:hover {
            background-color: #2980B9;
        }
    </style>
</head>
<body>

<!--header Page-->
<jsp:include page="header.jsp"></jsp:include>

<div class="login">
    <div class="login-screen">
        <div class="app-title">
            <h1>Stock Market Insertion</h1>
        </div>
        <c:url value="/saveCompany" var="save"></c:url>
        <div class="login-form">
            <form:form method="POST" action="${save}" modelAttribute="stockDetailsModel">
                <div class="control-group" hidden>
                    <form:input type="text" class="login-field" placeholder="COMPANY ID"
                                path="id" id="login-name"/>
                </div>
                <div class="control-group">
                    <form:input type="text" class="login-field" placeholder="COMPANY NAME"
                                path="companyName" id="login-name"/>
                </div>

                <div class="control-group">
                    <form:input type="text" class="login-field" placeholder="PRICE"
                                path='price' id="login-price"/>
                </div>

                <div class="control-group">
                    <form:input type="text" class="login-field" placeholder="AVAILABLE SHARES"
                                path='qty' id="login-qty"/>
                </div>

                <input class="btn btn-primary btn-large btn-block" type="submit" value="INSERT"/>

            </form:form>
        </div>

    </div>
</div>

<!--footerPage---->
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>