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

    <style>
        .navbar-brand {
            font-weight: bolder;
        }

        .nav-item {
            padding-left: 1rem;
        }

        .navbar {
            background-color: rgb(86, 205, 183);
        }

        .footer {
            background-color: rgb(221, 187, 187);
        }

        .form-control {
            background-color: rgb(224, 186, 186);
            border: 1px solid rgba(255, 255, 255, .5);;
            border-radius: 0;
            opacity: 1;
        }

        .form-control .form-inline {
            width: 220px;
        }


        .form-control:focus {
            color: black;
            background-color: #fff;
            border-color: #a75470;
            box-shadow: none;
        }

        .form-control::placeholder {
            color: rgba(255, 255, 255, .5);
        }

        .btn {
            color: #fff;
            background-color: #a56177;
            border-color: rgb(224, 186, 186);
            border-radius: 0;
            height: 38px;
        }

        .btn:hover, .btn:focus {
            color: #fff;
            box-shadow: 0 0 0 0.2rem #a56177;
        }

        .dropdown-menu {
            padding: 0;
            border-radius: 0;
            background-color: rgb(223, 197, 197);

        }

        .dropdown-item {
            color: rgba(255, 255, 255, .5);
        }

        .dropdown-item:hover {
            background-color: rgb(224, 186, 186);
            color: white;
        }

        .carousel-caption, h3 {
            font-weight: lighter;
        }

        .footer {
            font-size: x-small;
        }

    </style>

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

<nav class="navbar navbar-expand-sm navbar-dark" data-id="web_navigation_bar">
    <picture class="navbar-brand brand-name"><img
            src="data:image/png;base64,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"
            alt="Girl in a jacket" width="70" height="70">
    </picture>
    
    <a class="navbar-brand brand-name" href>Stock Market Api</a>
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
</body>
</html>