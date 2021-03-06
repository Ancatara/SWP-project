<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:useBean id="ProductDAO" scope="page" class="dao.ProductDAO" />
        <jsp:setProperty name="ProductDAO" property="*" />
        <c:set var="LIST_PRODUCT" value="${ProductDAO.getList()}"/>

        <c:if test="${LIST_PRODUCT_CATEGORY!=null}">
            <c:set var="LIST_PRODUCT" value="${LIST_PRODUCT_CATEGORY}"/>
        </c:if>
      <jsp:include page="Menu.jsp"></jsp:include>
      <jsp:include page="Slide.jsp"></jsp:include>
            <div class="container">
                <div class="row">
                    <div class="col">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="Home.jsp">Home</a></li>
                                <li class="breadcrumb-item"><a href="#">Category</a></li>
                                <li class="breadcrumb-item active" aria-current="#">Sub-category</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                <jsp:include page="Left.jsp"></jsp:include>

                    <div class="col-sm-9">
                        <div class="row">
                        <c:forEach items="${LIST_PRODUCT}" var="crr">
                            <div class="col-12 col-md-6 col-lg-4">
                                <div class="card">
                                    <img class="card-img-top" src="${crr.img}"alt="Card image cap">
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="DetailProduct?pId=${crr.pId}" title="View Product" style="font-size: 20px">${crr.name}</a></h4>
                                        <p class="card-text show_txt" style="color:red; font-size: 30px ">${crr.price}$
                                        </p>
                                        <div class="row">
                                            
                                            <div class="col">
                                                <a href="AddToCard?pId=${crr.pId}" class="btn btn-success btn-block">Add To Cart</a>
                                            </div>
                                             
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>

            </div>
                <style> 
                .card-img-top {
                     -webkit-transition: all 1s ease;
                        -moz-transition: all 1s ease;
                        -ms-transition: all 1s ease;
                        transition: all 0.5s ease;
                }
                .card-img-top:hover{transform: scale(1.5);}
                </style>
        </div>

        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>

