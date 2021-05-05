<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

<style>


    @import url(https://fonts.googleapis.com/css?family=Open+Sans:400,500,300,700);

    * {
        font-family: Open Sans;
    }

    section {
        width: 100%;
        display: inline-block;
        background: white;
        height: 50vh;
        text-align: center;
        font-size: 22px;
        font-weight: 700;
        text-decoration: underline;
    }

    .footer-distributed{
        background: #666;
        box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.12);
        box-sizing: border-box;
        width: 100%;
        height: 30%;
        text-align: left;
        font: bold 16px sans-serif;
        padding: 9px 17px;
    }

    .footer-distributed .footer-left,
    .footer-distributed .footer-center,
    .footer-distributed .footer-right{
        display: inline-block;
        vertical-align: top;
    }

    /* Footer left */

    .footer-distributed .footer-left{
        width: 40%;
    }

    /* The company logo */

    .footer-distributed h3{
        color:  #ffffff;
        font: normal 36px 'Open Sans', cursive;
        margin: 0;
    }

    .footer-distributed h3 span{
        color:  lightseagreen;
    }

    /* Footer links */

    .footer-distributed .footer-links{
        color:  #ffffff;
        margin: 20px 0 12px;
        padding: 0;
    }

    .footer-distributed .footer-links a{
        display:inline-block;
        line-height: 1.8;
        font-weight:400;
        text-decoration: none;
        color:  inherit;
    }

    .footer-distributed .footer-company-name{
        color:  #222;
        font-size: 14px;
        font-weight: normal;
        margin: 0;
    }

    /* Footer Center */

    .footer-distributed .footer-center{
        width: 35%;
    }

    .footer-distributed .footer-center i{
        background-color:  #33383b;
        color: #ffffff;
        font-size: 25px;
        width: 38px;
        height: 38px;
        border-radius: 50%;
        text-align: center;
        line-height: 42px;
        margin: 10px 15px;
        vertical-align: middle;
    }

    .footer-distributed .footer-center i.fa-envelope{
        font-size: 17px;
        line-height: 38px;
    }

    .footer-distributed .footer-center p{
        display: inline-block;
        color: #ffffff;
        font-weight:400;
        vertical-align: middle;
        margin:0;
    }

    .footer-distributed .footer-center p span{
        display:block;
        font-weight: normal;
        font-size:14px;
        line-height:2;
    }

    .footer-distributed .footer-center p a{
        color:  lightseagreen;
        text-decoration: none;;
    }

    .footer-distributed .footer-links a:before {
        content: "|";
        font-weight:300;
        font-size: 20px;
        left: 0;
        color: #fff;
        display: inline-block;
        padding-right: 5px;
    }

    .footer-distributed .footer-links .link-1:before {
        content: none;
    }

    /* Footer Right */

    .footer-distributed .footer-right{
        width: 20%;
    }

    .footer-distributed .footer-company-about{
        line-height: 20px;
        color:  #92999f;
        font-size: 13px;
        font-weight: normal;
        margin: 0;
    }

    .footer-distributed .footer-company-about span{
        display: block;
        color:  #ffffff;
        font-size: 14px;
        font-weight: bold;
        margin-bottom: 20px;
    }

    .footer-distributed .footer-icons{
        margin-top: 25px;
    }

    .footer-distributed .footer-icons a{
        display: inline-block;
        width: 35px;
        height: 35px;
        cursor: pointer;
        background-color:  #33383b;
        border-radius: 2px;

        font-size: 20px;
        color: #ffffff;
        text-align: center;
        line-height: 35px;

        margin-right: 3px;
        margin-bottom: 5px;
    }

    /* If you don't want the footer to be responsive, remove these media queries */

    @media (max-width: 880px) {

        .footer-distributed{
            font: bold 14px sans-serif;
        }

        .footer-distributed .footer-left,
        .footer-distributed .footer-center,
        .footer-distributed .footer-right{
            display: block;
            width: 100%;
            margin-bottom: 40px;
            text-align: center;
        }

        .footer-distributed .footer-center i{
            margin-left: 0;
        }

    }

</style>
<head>
    <title>Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <link rel="stylesheet" href="space.css">

    <title>Home</title>

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
        .footer {
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
           /* background-color: red;*/
            color: white;
            text-align: center;
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





<div class="footer">

    <footer class="footer-distributed">

        <div class="footer-left">

            <h3>Market of  <span>STOCKS</span></h3>

            <p class="footer-links">
                <a href="#" class="link-1">Home</a>

                <a href="#">Blog</a>

                <a href="#">Pricing</a>

                <a href="#">About</a>

                <a href="#">Faq</a>

                <a href="#">Contact</a>
            </p>
            <p class="footer-company-name">Company Name © 2021</p>
        </div>

        <div class="footer-center">

            <div>
                <i class="fa fa-map-marker"></i>
                <p><span>444 S. Cedros Ave</span> RamKrishna Beach, India</p>
            </div>

            <div>
                <i class="fa fa-phone"></i>
                <p>+1.555.555.5555</p>
            </div>

            <div>
                <i class="fa fa-envelope"></i>
                <p><a href="mailto:support@company.com">support@company.com</a></p>
            </div>

        </div>

        <div class="footer-right">

            <p class="footer-company-about">
                <span>About the company</span>
                Probably one of the best site for dynamic investors who are passionate about stock market
            </p>.© Copy Rights-@all rights reserved


        </div>

    </footer>
</div>
</body>
</html>
