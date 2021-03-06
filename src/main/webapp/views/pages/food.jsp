<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
    <div class="col-lg-10 col-lg-offset-1">
        <div class="row food-info">
            <div class="food-head">
                <div class="col-lg-6">
                    <img src="<c:url value="/global_resources/images/mon-an/${mon.hinhAnh }"/>" class="img-responsive center-block" style="max-height: 400px"/>
                </div>
                <div class="col-lg-6">
                    <h3>${mon.ten }</h3>
                    <p> ${mon.moTa }</p>
                    <div class="text-center">
                        <a href="${pageContext.request.contextPath}/order/add-to-cart/${mon.monId}" class="btn btn-success btn-lg">Đặt hàng</a>
                        <a href="${pageContext.request.contextPath}/order/cart" class="btn btn-info btn-lg">Xem giỏ hàng</a>
                    </div>
                </div>
            </div>
            <div class="food-branches col-lg-12">
                <table class="table table-branches">
                    <thead>
                        <tr>
                            <th colspan="2" style="padding-top: 15px; font-size: 18px">
                                Danh sách chi nhánh có món ăn này</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${ChiNhanhMonList }" var = "item">
                    	<tr>
                            <td width="60%"> <b>${item.chinhanh.ten }</b><br>
                                <span class="food-branches-location">
                                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                                    &nbsp ${item.chinhanh.diaChi }
                                </span>
                            </td>
                            <td width="40%" style="vertical-align: middle;"> <i class="fa fa-tag" aria-hidden="true"></i> <span price="${item.gia }" class="_single_price"></span> VND </td>
                        </tr>
                    </c:forEach>
                        
                    </tbody>
                </table>
            </div>
        </div>
        <h4>Món ăn đặt hàng nhiều trong tuần</h4>
        <hr>
        <div class="row">
            <div class="col-md-12">
                <div id="Carousel" class="carousel my-carousel slide carousel-fade">
                    <!-- Carousel items -->
                    <div class="carousel-inner">
                        <c:forEach items="${topFoodOrderChunks}" var="chunk" varStatus="status">
                        <div class="item ${status.first ? "active": ""} ">
                            <div class="row">
                                <c:forEach items="${chunk}" var="food">
                                    <div class="col-md-3">
                                        <div class="thumbnail">
                                            <div class="box img-responsive">
                                                <img alt="image" src="<c:url value="/global_resources/images/mon-an/${food.hinhAnh}"/>" class="img-responsive">
                                                <div class="img-responsive overlay"></div>
                                                <a href="<c:url value="/order/add-to-cart/${food.monId}" />" class="btn btn-success"><i class="fa fa-cart-plus" aria-hidden="true"></i> &nbsp; Thêm vào giỏ</a>
                                            </div>
                                            <div class="caption">
                                                <a href="<c:url value="/food/${food.monId}"/>" style="text-decoration: none">
                                                    <h4>${food.ten}</h4>
                                                    <p price-min="${topFoodOrderPrices[food.monId][0]}" price-max="${topFoodOrderPrices[food.monId][1]}" class="_show_price">
                                                        <i class="fa fa-tag" aria-hidden="true" ></i> &nbsp<span class="_price" ></span>
                                                    </p>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                            <!--.row-->
                        </div>
                        </c:forEach>
                        <!--.item-->
                    </div>
                    <!--.carousel-inner-->
                    <a data-slide="prev" href="#Carousel" class="left carousel-control my-carousel-control">‹</a>
                    <a data-slide="next" href="#Carousel" class="right carousel-control my-carousel-control">›</a>
                </div>
                <!--.Carousel-->
            </div>
        </div>
    </div>
</div>