<%--
  Created by IntelliJ IDEA.
  User: HDC
  Date: 7/1/2023
  Time: 5:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="/plugins/bootstrap/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="/css/style.css">

    <link rel="stylesheet" href="/plugins/animate/animate.min.css">

    <link rel="stylesheet" href="/plugins/fontawesome/all.css">

    <link href="/plugins/webfonts/font.css"
          rel="stylesheet">
    <link rel="stylesheet" href="/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/css/owl.theme.default.min.css" type="text/css">
    <link rel="stylesheet" href="/css/viewcart.css">
    <!-- UIkit CSS -->
    <link rel="stylesheet" href="/plugins/uikit/uikit.min.css"/>
    <link rel="stylesheet" href="/css/choiceRadioOfProductDotHTML.css">


    <title>Tất cả sản phẩm</title>

</head>

<body>
<div class="header">
    <a style="color: #ffffff;text-decoration: none;" href="index.html">MIỄN PHÍ VẬN CHUYỂN VỚI ĐƠN HÀNG NỘI THÀNH > 300K
        - ĐỔI TRẢ TRONG 30 NGÀY - ĐẢM BẢO CHẤT LƯỢNG</a>
</div>

<!--Navbar-->
<nav class="navbar navbar-expand-lg navbar-light bg-white sticky-top">

    <div class="container">
        <a class="navbar-brand" href="index.html">
            <img src="/images/logo.png" class="logo-top" alt="">
        </a>
        <div class="desk-menu collapse navbar-collapse justify-content-md-center" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="index.html">TRANG CHỦ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="product.html">BỘ SƯU TẬP</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="introduce.html">GIỚI THIỆU</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="blog.html">BLOG</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact.html">LIÊN HỆ</a>
                </li>
            </ul>
        </div>
        <div id="offcanvas-flip1" uk-offcanvas="flip: true; overlay: true">
            <div class="uk-offcanvas-bar" style="background: white;
        width: 100%;">

                <button class="uk-offcanvas-close" style="color:#272727" type="button" uk-close></button>
                <h3 style="font-size: 14px;
          color: #272727;
          text-transform: uppercase;
          margin: 3px 0 30px 0;
          font-weight: 500; letter-spacing: 2px;">MENU</h3>
                <div class="justify-content-md-center">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="index.html">TRANG CHỦ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Product.html">BỘ SƯU TẬP</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="introduce.html">GIỚI THIỆU</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="blog.html">BLOG</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Contact.html">LIÊN HỆ</a>
                        </li>
                    </ul>
                </div>

            </div>
        </div>
        <div id="offcanvas-flip" uk-offcanvas="flip: true; overlay: true">
            <div class="uk-offcanvas-bar" style="    background: white;
            width: 350px;">

                <button class="uk-offcanvas-close" style="color:#272727" type="button" uk-close></button>

                <h3 style="font-size: 14px;
                color: #272727;
                text-transform: uppercase;
                margin: 3px 0 30px 0;
                font-weight: 500; letter-spacing: 2px;">Tìm kiếm</h3>
                <div class="search-box wpo-wrapper-search">
                    <form action="search" class="searchform searchform-categoris ultimate-search">
                        <div class="wpo-search-inner" style="display:inline">
                            <input type="hidden" name="type" value="product">
                            <input required="" id="inputSearchAuto" name="q" maxlength="40" autocomplete="off"
                                   class="searchinput input-search search-input" type="text" size="20"
                                   placeholder="Tìm kiếm sản phẩm...">
                        </div>
                        <button type="submit" class="btn-search btn" id="search-header-btn">
                            <i style="font-weight:bold" class="fas fa-search"></i>
                        </button>
                    </form>
                    <div id="ajaxSearchResults" class="smart-search-wrapper ajaxSearchResults" style="display: none">
                        <div class="resultsContent"></div>
                    </div>
                </div>
            </div>
        </div>
        <div id="offcanvas-flip2" uk-offcanvas="flip: true; overlay: true">
            <div class="uk-offcanvas-bar" style="    background: white;
            width: 350px;">

                <button class="uk-offcanvas-close" style="color:#272727" type="button" uk-close></button>

                <h3 style="font-size: 14px;
                color: #272727;
                text-transform: uppercase;
                margin: 3px 0 30px 0;
                font-weight: 500; letter-spacing: 2px;">Giỏ hàng</h3>

                <div class="site-nav-container-last" style="color:#272727">
                    <div class="cart-view clearfix">
                        <table id="cart-view">
                            <tbody>
                            <tr class="item_1">
                                <td class="img"><a href="" title="Nike Air Max 90 Essential &quot;Grape&quot;"><img
                                        src="/images/shoes/1.jpg" alt="/products/nike-air-max-90-essential-grape"></a>
                                </td>
                                <td>
                                    <a class="pro-title-view" style="color: #272727" href=""
                                       title="Nike Air Max 90 Essential &quot;Grape&quot;">Nike Air Max 90 Essential
                                        "Grape"</a>
                                    <span class="variant">Tím / 36</span>
                                    <span class="pro-quantity-view">
                                        <div class="quantity-picker">
                                            <div class="quantity-controls">
                                            <button type="button" class="quantity-decrease">-</button>
                                            <input type="text" id="quantity-input" min="1" value="1">
                                            <button type="button" class="quantity-increase">+</button>
                                            </div>
                                         </div>
                                    </span>
                                    <span class="pro-price-view">4,800,000₫</span>
                                    <span class="remove_link remove-cart"><a href=""><i style="color: #272727;"
                                                                                        class="fas fa-times"></i></a></span>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <span class="line"></span>
                        <table class="table-total">
                            <tbody>
                            <tr>
                                <td class="text-left">TỔNG TIỀN:</td>
                                <td class="text-right" id="total-view-cart">4,800,000₫</td>
                            </tr>
                            <tr>

                                <td><a href="viewcart.html" class="linktocheckout btn btn-success" style="color: white">Thanh toán</a></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <div class="icon-ol">
            <a style="color: #272727" href="/login">
                <i class="fas fa-user-alt"></i>
            </a>
            <button class="navbar-toggler" type="button" uk-toggle="target: #offcanvas-flip1" data-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
    </div>
    </div>

</nav>
<!--Banner-->
<div>
    <div>
        <img src="/images/collection_banner.jpg" alt="Products">
    </div>
</div>
<div class="breadcrumb-shop">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 pd5">
                <ol class="breadcrumb breadcrumb-arrows">
                    <li>
                        <a href="index.html">
                            <span>Trang chủ</span>
                        </a>
                    </li>
                    <li>
                        <a href="Product.html">
                            <span>Danh mục</span>
                        </a>
                    </li>
                    <li>
                        <span><span style="color: #777777">Tất cả sản phẩm</span></span>
                    </li>
                </ol>
            </div>
        </div>
    </div>
</div>
<!--List Prodct-->
<div class="container" style="margin-top: 50px;">
    <div class="row">
        <div class="col-md-3 col-sm-12 col-xs-12 sidebar-fix">
            <div class="wrap-filter">
                <div class="box_sidebar">
                    <div class="block left-module">
                        <div class=" filter_xs">
                            <div class="group-menu">
                                <div class="title_block d-block d-sm-none d-none d-sm-block d-md-none"
                                     data-toggle="collapse"
                                     href="#collapseExample1" role="button" aria-expanded="false"
                                     aria-controls="collapseExample1">
                                    Danh mục sản phẩm
                                    <span><i class="fa fa-angle-down" data-toggle="collapse"
                                             href="#collapseExample1" role="button" aria-expanded="false"
                                             aria-controls="collapseExample1"></i></span>
                                </div>
                                <div class="block_content layered-category collapse" id="collapseExample1">
                                    <div class="layered-content card card-body" style="border:0;padding:0">
                                        <ul class="menuList-links">
                                            <li class=""><a href="home.html"
                                                            title="Trang chủ"><span>Trang chủ</span></a></li>
                                            <li class=" active "><a href="product.html" title="Bộ sưu tập"><span>Bộ sưu tập</span></a>
                                            </li>
                                            <li class=""><a href="introduce.html"
                                                            title="Giới thiệu"><span>Giới thiệu</span></a></li>
                                            <li class=""><a href="blog.html" title="Blog"><span>Blog</span></a></li>
                                            <li class=""><a href="contact.html" title="Liên hệ"><span>Liên hệ</span></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="layered">
                                <p class="title_block d-block d-sm-none d-none d-sm-block d-md-none"
                                   data-toggle="collapse"
                                   href="#collapseExample2" role="button" aria-expanded="false"
                                   aria-controls="collapseExample2">
                                    Bộ lọc sản phẩm
                                    <span><i class="fa fa-angle-down" data-toggle="collapse"
                                             href="#collapseExample2" role="button" aria-expanded="false"
                                             aria-controls="collapseExample2"></i></span>
                                </p>
                                <div class="block_content collapse" id="collapseExample2">
                                    <div class="group-filter card card-body" style="border:0;padding:0"
                                         aria-expanded="true">
                                    </div>

                                    <div class="group-filter" aria-expanded="true">
                                        <div class="layered_subtitle dropdown-filter">
                                            <span>Giá sản phẩm</span>
                                            <span class="icon-control"><i class="fa fa-minus"></i></span>
                                        </div>
                                        <div class="layered-content bl-filter filter-price">
                                            <ul class="check-box-list">
                                                <li>
                                                    <input type="radio" id="p1" name="price" value="1">
                                                    <label for="p1">
                                                        <span>Dưới</span> 500,000₫
                                                    </label>
                                                </li>
                                                <li>
                                                    <input type="radio" id="p2" name="price" value="2">
                                                    <label for="p2">
                                                        500,000₫ - 1,000,000₫
                                                    </label>
                                                </li>
                                                <li>
                                                    <input type="radio" id="p3" name="price" value="3">
                                                    <label for="p3">
                                                        1,000,000₫ - 1,500,000₫
                                                    </label>
                                                </li>
                                                <li>
                                                    <input type="radio" id="p4" name="price" value="4">
                                                    <label for="p4">
                                                        2,000,000₫ - 5,000,000₫
                                                    </label>
                                                </li>
                                                <li>
                                                    <input type="radio" id="p5" name="price" value="5">
                                                    <label for="p5">
                                                        <span>Trên</span> 5,000,000₫
                                                    </label>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="group-filter" aria-expanded="true">
                                        <div class="layered_subtitle dropdown-filter">
                                            <span>Màu sắc</span>
                                            <span class="icon-control"><i class="fa fa-minus"></i></span>
                                        </div>
                                        <div class="layered-content filter-color s-filter color-shoe">
                                            <ul class="check-box-list">
                                                <li>
                                                    <input type="radio" id="data-color-p1" name="color" value="1">
                                                    <label for="data-color-p1"
                                                           style="background-color: #fb4727"></label>
                                                    <div class="color-box" style="background-color: #fb4727;"></div>
                                                </li>
                                                <li>
                                                    <input type="radio" id="data-color-p2" name="color" value="2">
                                                    <label for="data-color-p2"
                                                           style="background-color: #fdfaef"></label>
                                                    <div class="color-box" style="background-color: #fdfaef;"></div>
                                                </li>
                                                <li>
                                                    <input type="radio" id="data-color-p3" name="color" value="3">
                                                    <label for="data-color-p3"
                                                           style="background-color: #3e3473"></label>
                                                    <div class="color-box" style="background-color: #3e3473;"></div>
                                                </li>
                                                <li>
                                                    <input type="radio" id="data-color-p4" name="color" value="4">
                                                    <label for="data-color-p4"
                                                           style="background-color: #ffffff"></label>
                                                    <div class="color-box" style="background-color: #ffffff;"></div>
                                                </li>
                                                <li>
                                                    <input type="radio" id="data-color-p5" name="color" value="5">
                                                    <label for="data-color-p5"
                                                           style="background-color: #75e2fb"></label>
                                                    <div class="color-box" style="background-color: #75e2fb;"></div>
                                                </li>
                                                <li>
                                                    <input type="radio" id="data-color-p6" name="color" value="6">
                                                    <label for="data-color-p6"
                                                           style="background-color: #cecec8"></label>
                                                    <div class="color-box" style="background-color: #cecec8;"></div>
                                                </li>
                                                <li>
                                                    <input type="radio" id="data-color-p7" name="color" value="7">
                                                    <label for="data-color-p7"
                                                           style="background-color: #6daef4"></label>
                                                    <div class="color-box" style="background-color: #6daef4;"></div>
                                                </li>
                                                <li>
                                                    <input type="radio" id="data-color-p8" name="color" value="8">
                                                    <label for="data-color-p8"
                                                           style="background-color: #000000"></label>
                                                    <div class="color-box" style="background-color: #000000;"></div>
                                                </li>
                                                <li>
                                                    <input type="radio" id="data-color-p9" name="color" value="9">
                                                    <label for="data-color-p9"
                                                           style="background-color: #e2262a"></label>
                                                    <div class="color-box" style="background-color: #e2262a;"></div>
                                                </li>
                                                <li>
                                                    <input type="radio" id="data-color-p10" name="color" value="10">
                                                    <label for="data-color-p10"
                                                           style="background-color: #ee8aa1"></label>
                                                    <div class="color-box" style="background-color: #ee8aa1;"></div>
                                                </li>
                                                <li>
                                                    <input type="radio" id="data-color-p11" name="color" value="11">
                                                    <label for="data-color-p11"
                                                           style="background-color: #4a5250"></label>
                                                    <div class="color-box" style="background-color: #4a5250;"></div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="group-filter" aria-expanded="true">
                                        <div class="layered_subtitle dropdown-filter">
                                            <span>Kích thước</span>
                                            <span class="icon-control"><i class="fa fa-minus"></i></span>
                                        </div>
                                        <div class="layered-content filter-size s-filter size-shoe">
                                            <ul class="check-box-list clearfix">
                                                <li>
                                                    <input type="radio" id="data-size-p1" name="size" value="35">
                                                    <label for="data-size-p1">35</label>
                                                </li>
                                                <li>
                                                    <input type="radio" id="data-size-p2" name="size" value="36">
                                                    <label for="data-size-p2">36</label>
                                                </li>
                                                <li>
                                                    <input type="radio" id="data-size-p3" name="size" value="37">
                                                    <label for="data-size-p3">37</label>
                                                </li>
                                                <li>
                                                    <input type="radio" id="data-size-p4" name="size" value="38">
                                                    <label for="data-size-p4">38</label>
                                                </li>
                                                <li>
                                                    <input type="radio" id="data-size-p5" name="size" value="39">
                                                    <label for="data-size-p5">39</label>
                                                </li>
                                                <li>
                                                    <input type="radio" id="data-size-p6" name="size" value="40">
                                                    <label for="data-size-p6">40</label>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-9 col-sm-12 col-xs-12">
            <div class="wrap-collection-title row">
                <div class="col-md-8 col-sm-12 col-xs-12">
                    <h1 class="title">
                        Tất cả sản phẩm
                    </h1>
                    <div class="alert-no-filter"></div>
                </div>
                <div class="col-md-4 d-sm-none d-md-block d-none d-sm-block" style="float: left">
                    <div class="option browse-tags">
              <span class="custom-dropdown custom-dropdown--grey">
                <select class="sort-by custom-dropdown__select">
                  <option value="price-ascending">Giá: Tăng dần</option>
                  <option value="price-descending">Giá: Giảm dần
                  </option>
                  <option value="title-ascending">Tên: A-Z</option>
                  <option value="title-descending">Tên: Z-A</option>
                  <option value="created-ascending">Cũ nhất
                  </option>
                  <option value="created-descending">Mới nhất
                  </option>
                  <option value="best-selling">Bán chạy nhất
                  </option>
                  <option value="quantity-descending">Tồn kho: Giảm dần</option>
                </select>
              </span>
                    </div>
                </div>
            </div>
            <div class="row">
                <c:forEach var="viewShoe" items="${viewShoeList}">
                    <div class="col-md-3 col-sm-6 col-xs-6 col-6">
                    <div class="product-block">
                        <div class="product-img fade-box">
                            <a href=/productdetail" class="img-resize">
                                <img src="${viewShoe.url}" class="lazyloaded">
                                <img src="${viewShoe.url}" class="lazyloaded">
                            </a>

                        </div>
                        <div class="product-detail clearfix">
                            <div class="pro-text">
                                <a style=" color: black;font-size: 14px;text-decoration: none;" href="/productdetail" inspiration pack>
                                    <c:out value="${viewShoe.name}"/>
                                </a>
                            </div>
                            <div class="pro-price">
                                <p class=""><c:out value="${viewShoe.price}"/>₫</p>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
            <!--gallery-->
            <section class="section section-gallery">
                <div class="">
                    <div class="hot_sp" style="padding-top: 70px;padding-bottom: 50px;">
                        <h2 style="text-align:center;padding-top: 10px">
                            <a style="font-size: 28px;color: black;text-decoration: none" href="">Khách hàng và Runner
                                Inn</a>
                        </h2>
                    </div>
                    <div class="list-gallery clearfix">
                        <ul class="shoes-gp">
                            <li>
                                <div class="gallery_item">
                                    <img class="img-resize" src="/images/shoes/gallery_item_1.jpg" alt="">
                                </div>
                            </li>
                            <li>
                                <div class="gallery_item">
                                    <img class="img-resize" src="/images/shoes/gallery_item_2.jpg" alt="">
                                </div>
                            </li>
                            <li>
                                <div class="gallery_item">
                                    <img class="img-resize" src="/images/shoes/gallery_item_3.jpg" alt="">
                                </div>
                            </li>
                            <li>
                                <div class="gallery_item">
                                    <img class="img-resize" src="/images/shoes/gallery_item_4.jpg" alt="">
                                </div>
                            </li>
                            <li>
                                <div class="gallery_item">
                                    <img class="img-resize" src="/images/shoes/gallery_item_5.jpg" alt="">
                                </div>
                            </li>
                            <li>
                                <div class="gallery_item">
                                    <img class="img-resize" src="/images/shoes/gallery_item_6.jpg" alt="">
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </section>
            <footer class="main-footer">
                <div class="container">
                    <div class="">
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-3">
                                <div class="footer-col footer-block">
                                    <h4 class="footer-title">
                                        Giới thiệu
                                    </h4>
                                    <div class="footer-content">
                                        <p>Runner Inn trang mua sắm trực tuyến của thương hiệu giày, thời trang nam, nữ,
                                            phụ kiện, giúp bạn
                                            tiếp
                                            cận xu hướng thời trang mới nhất.</p>
                                        <div class="logo-footer">
                                            <img src="/images/logo-bct.png" alt="Bộ Công Thương">
                                        </div>
                                        <div class="social-list">
                                            <a href="#" class="fab fa-facebook"></a>
                                            <a href="#" class="fab fa-google"></a>
                                            <a href="#" class="fab fa-twitter"></a>
                                            <a href="#" class="fab fa-youtube"></a>
                                            <a href="#" class="fab fa-skype"></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-3">
                                <div class="footer-col footer-link">
                                    <h4 class="footer-title">
                                        PHÁP LÝ &amp; CÂU HỎI
                                    </h4>
                                    <div class="footer-content toggle-footer">
                                        <ul>
                                            <li class="item">
                                                <a href="#" title="Tìm kiếm">Tìm kiếm</a>
                                            </li>
                                            <li class="item">
                                                <a href="#" title="Giới thiệu">Giới thiệu</a>
                                            </li>
                                            <li class="item">
                                                <a href="#" title="Chính sách đổi trả">Chính sách đổi trả</a>
                                            </li>
                                            <li class="item">
                                                <a href="#" title="Chính sách bảo mật">Chính sách bảo mật</a>
                                            </li>
                                            <li class="item">
                                                <a href="#" title="Điều khoản dịch vụ">Điều khoản dịch vụ</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-3">
                                <div class="footer-col footer-block">
                                    <h4 class="footer-title">
                                        Thông tin liên hệ
                                    </h4>
                                    <div class="footer-content toggle-footer">
                                        <ul>
                                            <li><span>Địa chỉ:</span> 1 Đại Cồ Việt, Bách Khoa, Quận Hai Bà Trưng, TP.
                                                Hà Nội, Vietnam
                                            </li>
                                            <li><span>Điện thoại:</span> +84 986640945</li>
                                            <li><span>Fax:</span> +84 1233456789</li>
                                            <li><span>Mail:</span> cuong.hd160536@sis.hust.edu.vn</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-3">
                                <div class="footer-col footer-block">
                                    <h4 class="footer-title">
                                        FANPAGE
                                    </h4>
                                    <div class="footer-content">
                                        <div id="fb-root">
                                            <div class="footer-static-content">
                                                <div class="fb-page"
                                                     data-href="https://www.facebook.com/AziWorld-Viet-Nam-908555669481794/"
                                                     data-tabs="timeline" data-width="" data-height="215"
                                                     data-small-header="false"
                                                     data-adapt-container-width="true" data-hide-cover="false"
                                                     data-show-facepile="true">
                                                    <blockquote
                                                            cite="https://www.facebook.com/AziWorld-Viet-Nam-908555669481794/"
                                                            class="fb-xfbml-parse-ignore"><a
                                                            href="https://www.facebook.com/AziWorld-Viet-Nam-908555669481794/">AziWorld
                                                        Viet Nam</a>
                                                    </blockquote>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
</div>
<script async defer crossorigin="anonymous" src="/plugins/sdk.js"></script>
<script src="/plugins/jquery-3.4.1/jquery-3.4.1.min.js"></script>
<script src="/plugins/bootstrap/popper.min.js"></script>
<script src="/plugins/bootstrap/bootstrap.min.js"></script>
<script src="/plugins/owl.carousel/owl.carousel.min.js"></script>
<script src="/plugins/uikit/uikit.min.js"></script>
<script src="/plugins/uikit/uikit-icons.min.js"></script>
<script src="/js/cartInMain.js"></script>
</body>
</html>
