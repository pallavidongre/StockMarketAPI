<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>
<html>


<style type="text/css">
    .error {
        color: red;
        position: fixed;
        text-align: left;
        margin-left: 30px;
    }
</style>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <!--Custom CSS-->
    <link rel="stylesheet" href="space.css">
    <title>SellerPortal</title>

</head>
<style type="text/css">
    .navbar-brand {
        font-weight: bolder;
    }

    .nav-item {
        padding-left: 1rem;
    }

    .navbar {
        background-color: rgb(224, 169, 169);
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

    .nav-link {
        display: block;
        padding: 1.5rem 0rem;
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

<body style="background-image: url('https://static.bhphoto.com/images/images500x500/1157995689_90596.jpg')">
<nav class="navbar navbar-expand-sm navbar-dark" data-id="web_navigation_bar">
    <div class="collapse navbar-collapse" id="web_navigation_bar_collapse">
        <ul class="navbar-nav mr-auto">
            <li>
                <div align="center">
                    <center><h4 align="center" style="float:right; margin-left: 500px">Stock purchase</h4></center>
                </div>
            </li>

        </ul>
    </div>
</nav>
<center>
    <jsp:include page="header.jsp"></jsp:include>

${message}
    <div align="center"
         style="margin-top: 50px; width:100%;height:140px;background-image: url('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw8PDxUPDw8VFRUVFRUVFRUVFRUVFRUVFRUWFhUVFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDQ0NDw0NDjcZFRkrKy03NzctKy0rKy0tKys3Ky03Kys3KysrKysrNysrLSsrKysrKysrKysrKysrKysrK//AABEIALEBHAMBIgACEQEDEQH/xAAZAAADAQEBAAAAAAAAAAAAAAAAAwQCAQX/xAAcEAEBAQEBAQADAAAAAAAAAAAAAQIDESExofD/xAAYAQEBAQEBAAAAAAAAAAAAAAAAAQIDBP/EABURAQEAAAAAAAAAAAAAAAAAAAAB/9oADAMBAAIRAxEAPwB3LCzlgrllZyw9Nrym8sKueGOWVXPLna03zwoxlnnlRjLna1HcZNzkYybnLFrYzkzOXcxuRFckbkdkakRXJHZGpGpEGfB41474Kz4PG/B4DHg8b8c8BjxzwzxzwC7GbDbGbBCrGLk6xmxRPrJesqbC9ZVlLrJO8q9ZJ3lqIi6YTdML95T9Mtys153TCTrh6XTKTrh0lYrzOuEusvR64S6y6Sor45Wcsk8crOWWLVhvPKrnkvnlTzy5WtQzGT8ZYxD8xitxrMNzGcw3MZagkbkEjciKJGpBI14ijx2QRrwHPB466g54PHfADnjnjQ8BnxzxrwAx454254oXYzYZYzYIVYxqHWMaiifUK1lTqFaispN5I6ZWbhG8tys1B1yl65eh0yk65blZrzuuUus/XodcpdZ+usrNU8srOWU/LKzlGKp3OKsQnnFOI5VuGYh2YxiHZjNaazDJHMxvMZaakakEjUQEjXgjqKPHQ6DjodBwOgHA6AccdAMitVwGPGbG65VC7GLDbGLBCtQrUP1CtRUT7hG4q3CdxqIj6RL0yu6RL0jcYqDrlLqfV3WJdZ+/h1jKjlFfKJ+UV84xVh/OKcQnnFGI51uG5huYXmHZjLUazDIzluRlWo1HI1BXXQ7EAA6AAAAOgHA6AcAAOONOAy5Wq5QYrNbrNUK0XqHaL0qEbhO4o0TuKym3E3SK9xN0jcZqLrEusresS6n10jB3JXzS8lfNKsU8z8E4h+HKtw7JuS8m5ZajeW4zluIrUdjkagrrrjqAdAAB0AAAAAAOB1wA46AcZacoM1mtVmqMUvRlY0IVqE7O0Vtpmp9pukVbTdGolSdYl1FfVLqOkYpvJXzSclfNKsU4UYT81GHOtHZNyVk3LLUMy3GI3EVqNRmNRFdjrjoOgOgAAAAAAAAAADgABxx1ygzWa1WaozS9GUvQheidHaJ20lI2n6KNp+jUZqXql1+VXVLp0jFb5LOaLlVfJKRXzPwn51RhzrcPybknFNyy1DctwvLcRW40zGoiux1yOg6AADrjoAAAAAAcAAAOAHHWaDlZrVZqjFY03S9CF6K2bonbSUnafoftN0ajNTdUur9U9al06Ritcqr5VDyqzlSkWc6oxUvOqMVzrcU4puSMU3NZah2aZCs1uMqZGoxGpRWo0y6g664AdAAB1wA6HAAAABwOAHKHKDlZrtZqjNL03aXqqheit0zVJ3VZJ3U/SnbqbpW4zU/WpdU/rU2r9dIwOWlfKoOWlfKlIv51TiouelPOudbirFOzU+KdmsVo/NMlIzTM1GjpWpS5W4itx2MStRBp1l30HXXADocAOhwAAHAADNAOUOVRy1i121i0RzVL1WtUrVVKxuk7pmqRutRCulTdKd00l6VuMUjrUutfTuukmtT11jI5aV8tPO5aWctliR6HPSrnpBy0q56c7G4txo7NSY0fjTFairNMzU+abmstHytykytyopsrspcrUqKZK76xK76DTrPo9QaDnoB0Oej0HXPXPR6A9crlrlqjtrNotYtEFrFotY1VHNUrVa1SdVWWd0jem96T9NNxml9Kl66N6aSddNyM0rrpJqm9dJN7+ukZZ5aWctvM5bWcttWI9PlpVz087ltVz252NR6HPSjGkONKMbc7G4sxo3OkuNG50xWlMpkqfOjJpFOlblJlalRTpXfSpWvUDPR6x676K36PWPXfQa9HrPrnoNeues+ueg165azazaI1axa5axao7aXrQui9aVkapO9DWid6akSub0n6aa6aTdNtyM1jppL10302k67dJGaV12l1tvrtLrTpIyOavkAUW8FXMBzrSnn/AH7U4/v2A51qH5Nw6GK1DstxwMqZDAEV2NOBFaroAOiAAHAADMABxkBRligKhei9ACE7I26G4zU/RN0/FAdIzUvVH1AbjNSdUugHSI//2Q==')">
        <center><h2>StockDetail</h2></center>
        <div align="center">
            <c:choose>
                <c:when test="${!empty stockDetailsModel}">
                    <%--@elvariable id="stockDetailsModel" type="com"--%>
                    <c:url value="/personalDetail?id=${stockDetailsModel.id}" var="personalDetail"></c:url>
                    <f:form action="${personalDetail}" method="post" modelAttribute="stockDetailsModel">
                        <f:label path="id">ID:</f:label>
                        <f:input path="id"></f:input>
                        <f:label path="companyName">Company</f:label>
                        <f:input path="companyName"></f:input>
                        <f:label path="price">Price</f:label>
                        <f:input path="price"></f:input>
                        <f:label path="qty">Avaqty</f:label>
                        <f:input path="qty"></f:input>
                        <f:label path="requestQuantity">requestQuantity</f:label>
                        <f:input path="requestQuantity" type="text" id="qta_field" value="${item.value}"/>
                        <a href='' onclick="this.href='totalPrice?price=${stockDetailsModel.price}&requestedQuantity${item.key.id}='+document.getElementById('qta_field').value">TotalPrice</a>
                        <f:button>PURCHASE</f:button>
                    </f:form>
                </c:when>
                <c:otherwise>
                    ${mes}
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</center>
<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>
