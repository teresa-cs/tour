 <%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div id="page">
    <nav class="colorlib-nav" role="navigation">
        <div class="top-menu">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-2">
                 <div id="colorlib-logo"><a href="<c:url value="/"/>">Tour</a></div>
                    </div>
                    <div class="col-xs-10 text-right menu-1">
                        <ul>
                            <li class="active"><a href="<c:url value="/"/>">Home</a></li>
                            <li><a href="tour">Tours</a></li> 
                            <li><a href="hotel">Hotels</a></li>
                            <li><a href="post">Blog</a></li>
                            <li><a href="about.html">About</a></li>
                            <li><a href="contact.html">Contact</a></li>


                            <c:if test="${pageContext.request.userPrincipal.name == null}">
                                <li>   <a href="login">Log in</a></li>
                            </c:if>
                            <li class="has-dropdown">
                                <c:if test="${pageContext.request.userPrincipal.name != null}">

                                    <c:if test="${currentUser.avt != null}">
                                        <img src="${currentUser.avt}" class="rounded-circle" style="width:30px;height:25px"/>
                                    </c:if>
                                    <c:if test="${currentUser.avt == null}">
                                        <i class="fa fa-user" aria-hidden="true"></i>
                                    </c:if>
                                    <a href="<c:url value="/"/>">${pageContext.request.userPrincipal.name}</a>

                                    <ul class="dropdown">


                                        <li><a href="<c:url value="/logout"/>" style="text-align: center"> Logout</a></li>
                                            <sec:authorize access="hasAnyAuthority('6','9')">
                                            <li><a href="<c:url value="/admin"/>" style="text-align: center">Admin</a></li>
                                            </sec:authorize>

                                    </ul>
                                </c:if>
                            </li>


                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </nav>
    <aside id="colorlib-hero">
        <div class="flexslider">
            <ul class="slides">
                <li style="background-image: url(template/images/blog-1.jpg);">
                    <div class="overlay"></div>
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
                                <div class="slider-text-inner text-center">
                                    <h2>2 Days Tour</h2>
                                    <h1>Amazing Maldives Tour</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li style="background-image: url(template/images/img_bg_2.jpg);">
                    <div class="overlay"></div>
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
                                <div class="slider-text-inner text-center">
                                    <h2>10 Days Cruises</h2>
                                    <h1>From Greece to Spain</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li style="background-image: url(template/images/img_bg_5.jpg);">
                    <div class="overlay"></div>
                    <div class="container-fluids">
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
                                <div class="slider-text-inner text-center">
                                    <h2>Explore our most tavel agency</h2>
                                    <h1>Our Travel Agency</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li style="background-image: url(template/images/img_bg_4.jpg);">
                    <div class="overlay"></div>
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
                                <div class="slider-text-inner text-center">
                                    <h2>Experience the</h2>
                                    <h1>Best Trip Ever</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>	   	
            </ul>
        </div>
    </aside>
    
</div>