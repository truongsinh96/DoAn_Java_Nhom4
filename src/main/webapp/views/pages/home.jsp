<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Home -->
<div class="container">
    <!-- Top slide -->
    <div class="row">
        <div id="top-slide" class="carousel slide carousel-fade" data-ride="carousel">
            <ol class="carousel-indicators my-carousel-indicators">
                <li data-target="#top-slide" data-slide-to="0" class="active"></li>
                <li data-target="#top-slide" data-slide-to="1"></li>
                <li data-target="#top-slide" data-slide-to="2"></li>
            </ol>
            <div class='carousel-inner' role='listbox'>
                <div class='item item-top-slide active'>
                    <img class="img-responsive" src="<c:url value="/resources/images/top-mon-an.jpg"/>" alt='doan'>
                    <div class='carousel-caption'>
                        <h1>Bánh xèo</h1>
                    </div>
                </div>
                <div class='item item-top-slide'>
                    <img class="img-responsive" src="<c:url value="/resources/images/lau-bo.jpg"/>" alt='doan'>
                    <div class='carousel-caption'>
                        <h1>Lẩu bò</h1>
                    </div>
                </div>
                <div class='item item-top-slide'>
                    <img class="img-responsive" src="<c:url value="/resources/images/mon-ngon.png"/>" alt='doan'>
                    <div class='carousel-caption'>
                        <h1>Món ngon mỗi ngày</h1>
                    </div>
                </div>
            </div>

            <a class='left carousel-control' href='#top-slide' role='button' data-slide='prev'>
                <span class='glyphicon glyphicon-chevron-left' aria-hidden='true'></span>
            </a>

            <a class='right carousel-control' href='#top-slide' role='button' data-slide='next'>
                <span class='glyphicon glyphicon-chevron-right' aria-hidden='true'></span>
            </a>
        </div>
    </div>
    <!-- End top slide -->

    <%--
    <!-- Món ăn giảm giá -->
    <hr class="hr-text" data-content="Món ngon giảm giá">
    <div class="row">
        <div class="col-md-12">
            <div id="Carousel" class="carousel my-carousel slide carousel-fade">
                <ol class="carousel-indicators my-carousel-indicators">
                    <li data-target="#Carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#Carousel" data-slide-to="1"></li>
                    <li data-target="#Carousel" data-slide-to="2"></li>
                </ol>
                <!-- Carousel items -->
                <div class="carousel-inner">
                    <div class="item active">
                        <div class="row">
                            <div class="col-md-3">
                                <a href="#" class="thumbnail thumbnail-carousel">
                                    <img alt="Image" src="http://placehold.it/250x200"
                                         class="img-responsive">
                                    <div class="caption">
                                        <h4>Tên món ăn</h4>
                                        <p><i class="fa fa-tag" aria-hidden="true"></i> &nbsp Giá: 100.000 VND</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-3">
                                <a href="#" class="thumbnail thumbnail-carousel">
                                    <img alt="Image" src="http://placehold.it/250x200"
                                         class="img-responsive">
                                    <div class="caption">
                                        <h4>Tên món ăn</h4>
                                        <p><i class="fa fa-tag" aria-hidden="true"></i> &nbsp Giá: 100.000 VND</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-3">
                                <a href="#" class="thumbnail thumbnail-carousel">
                                    <img alt="Image" src="http://placehold.it/250x200"
                                         class="img-responsive">
                                    <div class="caption">
                                        <h4>Tên món ăn</h4>
                                        <p><i class="fa fa-tag" aria-hidden="true"></i> &nbsp Giá: 100.000 VND</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-3">
                                <a href="#" class="thumbnail thumbnail-carousel">
                                    <img alt="Image" src="http://placehold.it/250x200"
                                         class="img-responsive">
                                    <div class="caption">
                                        <h4>Tên món ăn</h4>
                                        <p><i class="fa fa-tag" aria-hidden="true"></i> &nbsp Giá: 100.000 VND</p>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <!--.row-->
                    </div>
                    <!--.item-->
                    <div class="item">
                        <div class="row">
                            <div class="col-md-3">
                                <a href="#" class="thumbnail thumbnail-carousel">
                                    <img alt="Image" src="http://placehold.it/250x200"
                                         class="img-responsive">
                                    <div class="caption">
                                        <h4>Tên món ăn</h4>
                                        <p><i class="fa fa-tag" aria-hidden="true"></i> &nbsp Giá: 100.000 VND</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-3">
                                <a href="#" class="thumbnail thumbnail-carousel">
                                    <img alt="Image" src="http://placehold.it/250x200"
                                         class="img-responsive">
                                    <div class="caption">
                                        <h4>Tên món ăn</h4>
                                        <p><i class="fa fa-tag" aria-hidden="true"></i> &nbsp Giá: 100.000 VND</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-3">
                                <a href="#" class="thumbnail thumbnail-carousel">
                                    <img alt="Image" src="http://placehold.it/250x200"
                                         class="img-responsive">
                                    <div class="caption">
                                        <h4>Tên món ăn</h4>
                                        <p><i class="fa fa-tag" aria-hidden="true"></i> &nbsp Giá: 100.000 VND</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-3">
                                <a href="#" class="thumbnail thumbnail-carousel">
                                    <img alt="Image" src="http://placehold.it/250x200"
                                         class="img-responsive">
                                    <div class="caption">
                                        <h4>Tên món ăn</h4>
                                        <p><i class="fa fa-tag" aria-hidden="true"></i> &nbsp Giá: 100.000 VND</p>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <!--.row-->
                    </div>
                    <!--.item-->
                    <div class="item">
                        <div class="row">
                            <div class="col-md-3">
                                <a href="#" class="thumbnail thumbnail-carousel">
                                    <img alt="Image" src="http://placehold.it/250x200"
                                         class="img-responsive">
                                    <div class="caption">
                                        <h4>Tên món ăn</h4>
                                        <p><i class="fa fa-tag" aria-hidden="true"></i> &nbsp Giá: 100.000 VND</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-3">
                                <a href="#" class="thumbnail thumbnail-carousel">
                                    <img alt="Image" src="http://placehold.it/250x200"
                                         class="img-responsive">
                                    <div class="caption">
                                        <h4>Tên món ăn</h4>
                                        <p><i class="fa fa-tag" aria-hidden="true"></i> &nbsp Giá: 100.000 VND</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-3">
                                <a href="#" class="thumbnail thumbnail-carousel">
                                    <img alt="Image" src="http://placehold.it/250x200"
                                         class="img-responsive">
                                    <div class="caption">
                                        <h4>Tên món ăn</h4>
                                        <p><i class="fa fa-tag" aria-hidden="true"></i> &nbsp Giá: 100.000 VND</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-3">
                                <a href="#" class="thumbnail thumbnail-carousel">
                                    <img alt="Image" src="http://placehold.it/250x200"
                                         class="img-responsive">
                                    <div class="caption">
                                        <h4>Tên món ăn</h4>
                                        <p><i class="fa fa-tag" aria-hidden="true"></i> &nbsp Giá: 100.000 VND</p>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <!--.row-->
                    </div>
                    <!--.item-->
                </div>
                <!--.carousel-inner-->
                <a data-slide="prev" href="#Carousel" class="left carousel-control my-carousel-control">‹</a>
                <a data-slide="next" href="#Carousel" class="right carousel-control my-carousel-control">›</a>
            </div>
            <!--.Carousel-->
        </div>
    </div>
    <!-- End món ăn giảm giá -->
    --%>

    <!-- Món ăn mua nhiều trong tuần -->
    <hr class="hr-text" data-content="Đặt hàng nhiều trong tuần">
    <div class="col-md-10 col-md-offset-1">
        <div class="row">
            <c:forEach items="${topFoodOrders}" var="food">
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
    </div>
    <!-- End Món ăn mua nhiều trong tuần -->
</div>
<!-- End Home -->