<%--
  Created by 
  User: nikas
  Date: 11/3/16
  Time: 12:40 PM
--%>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <jsp:include page="head.jsp"></jsp:include>
</head>

<body>

<div class="wrap ">
    <div class="section sTop">
        <div class="${mainImgStyle}">

            <div class="container">

                <div class="section-heared">
                    <h1>${title}</h1>

                    <h6>
                        ${shortSlogan}
                    </h6>

                    <ul class="inner-link">
                        <li><a href="/#s6">Home</a></li>
                        <%--<span>/</span>--%>
                        <%--<li><a href="#">Blog</a></li>--%>
                    </ul>

                </div><!-- /section-heared -->

            </div>

        </div><!-- /top-container -->

    </div><!-- /sTop -->


    <div class="container">

        <div class="row">
            <div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">
                <div class="section-post">

                    <img class="section-post-300px-img" src="img/screens/${headImg}" alt="post-1" />

                    <h2>${title}</h2>

                    <ul class="post-by">
                        <li>By:<span>${author}</span></li>
                        <li>Category:<span>Our Apps</span></li>
                        <li>Time:<span>${createDate}</span></li>
                    </ul>

                    ${description}

                    <h3>Screenshots:</h3>

                    <c:forEach items="${screenList}" var="item">
                        <img src="img/screens/${item}"/>
                    </c:forEach>

                    <c:if test="${not empty video}">
                        <h3>Video:</h3>
                        <iframe width="560" height="315" src="https://www.youtube.com/embed/${video}" frameborder="0" allowfullscreen></iframe>
                    </c:if>

                </div><!-- /section-post -->

            </div>

            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                <div class="sidebar">

                    <img width="100%" src="img/icons/${icon}"/>

                    <div class="sidebar-text">
                        <h2>Download</h2>
                        <p>
                        <ul class="category">${version}
                            <c:if test="${not empty packageId}">
                            <li><a href="https://play.google.com/store/apps/details?id=${packageId}">Google Play<span class="count">0</span></a></li>
                            </c:if>
                            <li><a href="/apk/${apkFileName}">APK (${apkSize}Mb)<span class="count">0</span></a></li>
                        </ul>

                        </p>
                    </div><!-- /sidebar-text -->

                    <div class="sidebar-text">
                        <h2>Features</h2>

                        <ul class="category">
                            <c:forEach items="${features}" var="item">
                                <li><a href="#">${item}</a></li>
                            </c:forEach>
                        </ul>
                    </div><!-- /sidebar-text -->

                </div><!-- /sidebar -->
            </div>

        </div>

    </div>


</div><!-- /wrap -->

</body>
</html>
