<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>getAllShares</title>

    <style>
        @import url("https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400&display=swap");

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-size: 16px;
        }

        main {
            padding: 10px;
        }

        .customer-table {
            font-size: 0.625em;
            font-family: "Noto Sans KR", sans-serif;
            width: 100%;
            max-width: 1024px;
            margin: 100px auto;
            border-collapse: collapse;
            text-align: center;
            box-shadow: 0 2px 2px #e6e6e6;
        }

        caption {
            font-weight: bold;
            padding: 10px;
            background-color: #3b6978;
        }

        thead th {
            background-color: #204051;
        }

        caption,
        thead th {
            color: #fff;
        }

        th {
            padding: 10px 5px;
        }

        tfoot {
            text-align: left;
            background-color: #e7dfd5;
            font-weight: lighter;
            font-size: 0.8em;
        }

        tbody th,
        tbody td {
            text-align: center;
        }

        tbody tr {
            border-bottom: 2px solid transparent;
        }

        tbody tr:hover {
            border-bottom: 2px solid #84a9ac;
        }

        tbody tr:nth-of-type(even) {
            background-color: #e7dfd5;
        }

        h2.nav-item {
            margin-left: 800px;
        }

        @media (max-width: 320px) {
            .customer-table {
                font-size: 0.55em;
            }
        }

        @media (min-width: 411px) {
            .customer-table {
                font-size: 0.71875em;
            }
        }

        @media (min-width: 768px) {
            body {
                font-size: 1.125em;
            }

            caption {
                padding: 20px;
            }
        }

        @media (min-width: 1024px) {
            body {
                font-size: 1.25em;
            }
        }
    </style>

</head>
<body>

<!--header Page-->
<jsp:include page="header.jsp"></jsp:include>

<nav class="navbar navbar-expand-sm navbar-dark" data-id="web_navigation_bar">

    <a class="navbar-brand brand-name" href>Dashboard</a>
</nav>

<main>
    <table class="customer-table">
        <caption>DashBoard</caption>
        <thead>
        <tr>
            <th>Id</th>
            <th>CompanyName</th>
            <th>Price</th>
            <th>AvilableShares</th>
            <th>Details</th>
        </tr>
        </thead>

        <c:choose>
        <c:when test="${stockDetailsModel != null}">
        <tbody>
        <c:forEach items="${stockDetailsModel}" var="stockDetailsModel">
            <tr>
                <th>${stockDetailsModel.id}</th>
                <th>${stockDetailsModel.companyName}</th>
                <th>${stockDetailsModel.price}</th>
                <th>${stockDetailsModel.qty}</th>
                <c:url value="/stockdetails" var="stockdetails"/>
                <th><a href="${stockdetails}?stockdetail=${stockDetailsModel.id}">Details</a></th>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    </c:when>
    <c:otherwise>
        ${error}
    </c:otherwise>
    </c:choose>
</main>
<div align="center">
    <a href="http://localhost:8060/home">Home</a>

    <nav class="navbar navbar-expand-sm navbar-dark" data-id="web_navigation_bar">

        <a class="navbar-brand brand-name" href>Stock Market Api</a>
        <ul>
            @CopyRights
        </ul>
</div>
</nav>
</div>

<!--footerPage---->
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>