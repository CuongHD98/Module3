<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="/assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>Home Page - MaterialDashboard</title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <meta name="keywords" content="Material Design, html dashboard, html css dashboard, web dashboard, bootstrap 4 dashboard, bootstrap 4, css3 dashboard, bootstrap 4 admin, material dashboard bootstrap 4 dashboard, frontend, responsive bootstrap 4 dashboard, material design, material dashboard bootstrap 4 dashboard">
  <meta name="description" content="Material Dashboard PRO is a Premium Material Bootstrap 4 Admin with a fresh, new design inspired by Google's Material Design.">
  <meta property="og:description" content="Material Dashboard PRO is a Premium Material Bootstrap 4 Admin with a fresh, new design inspired by Google's Material Design." />
  <meta property="og:site_name" content="Material Design" />
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="/assets/fontawesome/css/all.min.css">
  <link href="/assets/css/material-dashboard.minf066.css" rel="stylesheet" />
  <link href="/assets/demo/demo.css" rel="stylesheet" />
</head>
<body class="">

<div class="wrapper ">
  <div class="sidebar" data-color="rose" data-background-color="black" data-image="assets/img/sidebar-1.jpg">
    <div class="logo">
      <a href="index.jsp" class="btn btn-info container" role="button">SHOE SHOP</a>
    </div>
    <div class="sidebar-wrapper">
      <div class="user">
        <div class="photo">
          <img src="/assets/img/faces/admin.jpg" />
        </div>
        <div class="user-info">
          <a data-toggle="collapse" href="#collapseExample" class="username">
                <span>
                   ADMIN
                    <b class="caret"></b>
                </span>
          </a>
          <div class="collapse" id="collapseExample">
            <ul class="nav">
              <li class="nav-item">
                <a class="nav-link" target="_blank" href="Identity/Account/Login.html">
                  <span class="sidebar-mini"> LO </span>
                  <span class="sidebar-normal"> LogOut </span>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>

      <ul class="nav">
        <li class="nav-item active ">
          <a class="nav-link" href="index.jsp">
            <i class="material-icons">dashboard</i>
            <p> Dashboard </p>
          </a>
        </li>

        <li class="nav-item ">
          <a class="nav-link" data-toggle="collapse" href="#crudExamples">
            <i class="material-icons">apps</i>
            <p>
              CRUD Users
              <b class="caret"></b>
            </p>
          </a>
          <div class="collapse" id="crudExamples">
            <ul class="nav">
              <li class="nav-item ">
                <a class="nav-link" href="Users.html">
                  <span class="sidebar-mini"> UM </span>
                  <span class="sidebar-normal"> USERS Manager </span>
                </a>
              </li>
            </ul>
          </div>
        </li>
      </ul>
    </div>
  </div>

</div>

<!--   Content   -->
















<div class="fixed-plugin">
  <div class="dropdown show-dropdown">
    <a href="#" data-toggle="dropdown">
      <i class="fa fa-cog fa-2x"> </i>
    </a>
    <ul class="dropdown-menu">
      <li class="header-title"> Sidebar Filters</li>
      <li class="adjustments-line">
        <a href="javascript:void(0)" class="switch-trigger active-color">
          <div class="badge-colors ml-auto mr-auto">
            <span class="badge filter badge-purple" data-color="purple"></span>
            <span class="badge filter badge-azure" data-color="azure"></span>
            <span class="badge filter badge-green" data-color="green"></span>
            <span class="badge filter badge-warning" data-color="orange"></span>
            <span class="badge filter badge-danger" data-color="danger"></span>
            <span class="badge filter badge-rose active" data-color="rose"></span>
          </div>
          <div class="clearfix"></div>
        </a>
      </li>
      <li class="header-title">Sidebar Background</li>
      <li class="adjustments-line">
        <a href="javascript:void(0)" class="switch-trigger background-color">
          <div class="ml-auto mr-auto">
            <span class="badge filter badge-black active" data-background-color="black"></span>
            <span class="badge filter badge-white" data-background-color="white"></span>
            <span class="badge filter badge-red" data-background-color="red"></span>
          </div>
          <div class="clearfix"></div>
        </a>
      </li>
      <li class="adjustments-line">
        <a href="javascript:void(0)" class="switch-trigger">
          <p>Sidebar Mini</p>
          <label class="ml-auto">
            <div class="togglebutton switch-sidebar-mini">
              <label>
                <input type="checkbox">
                <span class="toggle"></span>
              </label>
            </div>
          </label>
          <div class="clearfix"></div>
        </a>
      </li>
      <li class="adjustments-line">
        <a href="javascript:void(0)" class="switch-trigger">
          <p>Sidebar Images</p>
          <label class="switch-mini ml-auto">
            <div class="togglebutton switch-sidebar-image">
              <label>
                <input type="checkbox" checked="">
                <span class="toggle"></span>
              </label>
            </div>
          </label>
          <div class="clearfix"></div>
        </a>
      </li>
      <li class="header-title">Images</li>
      <li class="active">
        <a class="img-holder switch-trigger" href="javascript:void(0)">
          <img src="assets/img/sidebar-1.jpg" alt="">
        </a>
      </li>
      <li>
        <a class="img-holder switch-trigger" href="javascript:void(0)">
          <img src="assets/img/sidebar-2.jpg" alt="">
        </a>
      </li>
      <li>
        <a class="img-holder switch-trigger" href="javascript:void(0)">
          <img src="assets/img/sidebar-3.jpg" alt="">
        </a>
      </li>
      <li>
        <a class="img-holder switch-trigger" href="javascript:void(0)">
          <img src="assets/img/sidebar-4.jpg" alt="">
        </a>
      </li>
      <li class="button-container">
        <a href="https://codecanyon.net/item/material-dashboard-net-core-admin-template-crud/23834228" target="_blank" class="btn btn-rose btn-block btn-fill">Buy Now</a>
        <a href="Helps/docs/2.2/getting-started/introduction.html" target="_blank" class="btn btn-default btn-block">
          Documentation
        </a>
        <a href="index.jsp" target="_blank" class="btn btn-info btn-block">
          Get Free Demo!
        </a>
      </li>


    </ul>
  </div>
</div>
<!--   Core JS Files   -->



<script src="/assets/js/core/jquery.min.js"></script>
<script src="/assets/js/core/popper.min.js"></script>
<script src="/assets/js/core/bootstrap-material-design.min.js"></script>
<script src="/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>

<!-- Plugin for the momentJs  -->
<script src="/assets/js/plugins/moment.min.js"></script>
<!--  Plugin for Sweet Alert -->
<script src="/assets/js/plugins/sweetalert2.js"></script>
<!-- Forms Validations Plugin -->
<script src="/assets/js/plugins/jquery.validate.min.js"></script>
<!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
<script src="/assets/js/plugins/jquery.bootstrap-wizard.js"></script>
<!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
<script src="/assets/js/plugins/bootstrap-selectpicker.js"></script>
<!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
<script src="/assets/js/plugins/bootstrap-datetimepicker.min.js"></script>
<!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
<script src="/assets/js/plugins/jquery.dataTables.min.js"></script>
<!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
<script src="/assets/js/plugins/bootstrap-tagsinput.js"></script>
<!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
<script src="/assets/js/plugins/jasny-bootstrap.min.js"></script>
<!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
<script src="/assets/js/plugins/fullcalendar.min.js"></script>
<!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
<script src="/assets/js/plugins/jquery-jvectormap.js"></script>
<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="/assets/js/plugins/nouislider.min.js"></script>
<!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
<script src="../cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
<!-- Library for adding dinamically elements -->
<script src="/assets/js/plugins/arrive.min.js"></script>
<!--  Google Maps Plugin    -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB2Yno10-YTnLjjn_Vtk0V8cdcY5lC4plU"></script>
<!-- Place this tag in your head or just before your close body tag. -->
<script async defer src="../buttons.github.io/buttons.js"></script>
<!-- Chartist JS -->
<script src="/assets/js/plugins/chartist.min.js"></script>
<!--  Notifications Plugin    -->
<script src="/assets/js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
<script src="/assets/js/material-dashboard.minf066f066.js?v=2.1.0" type="text/javascript"></script>
<!-- Material Dashboard DEMO methods, don't include it in your project! -->
<script src="/assets/demo/demo.js"></script>
<script>
  $(document).ready(function () {
    $().ready(function () {
      $sidebar = $('.sidebar');

      $sidebar_img_container = $sidebar.find('.sidebar-background');

      $full_page = $('.full-page');

      $sidebar_responsive = $('body > .navbar-collapse');

      window_width = $(window).width();

      fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();

      if (window_width > 767 && fixed_plugin_open == 'Dashboard') {
        if ($('.fixed-plugin .dropdown').hasClass('show-dropdown')) {
          $('.fixed-plugin .dropdown').addClass('open');
        }

      }

      $('.fixed-plugin a').click(function (event) {
        if ($(this).hasClass('switch-trigger')) {
          if (event.stopPropagation) {
            event.stopPropagation();
          } else if (window.event) {
            window.event.cancelBubble = true;
          }
        }
      });

      $('.fixed-plugin .active-color span').click(function () {
        $full_page_background = $('.full-page-background');

        $(this).siblings().removeClass('active');
        $(this).addClass('active');

        var new_color = $(this).data('color');

        if ($sidebar.length != 0) {
          $sidebar.attr('data-color', new_color);
        }

        if ($full_page.length != 0) {
          $full_page.attr('filter-color', new_color);
        }

        if ($sidebar_responsive.length != 0) {
          $sidebar_responsive.attr('data-color', new_color);
        }
      });

      $('.fixed-plugin .background-color .badge').click(function () {
        $(this).siblings().removeClass('active');
        $(this).addClass('active');

        var new_color = $(this).data('background-color');

        if ($sidebar.length != 0) {
          $sidebar.attr('data-background-color', new_color);
        }
      });

      $('.fixed-plugin .img-holder').click(function () {
        $full_page_background = $('.full-page-background');

        $(this).parent('li').siblings().removeClass('active');
        $(this).parent('li').addClass('active');


        var new_image = $(this).find("img").attr('src');

        if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
          $sidebar_img_container.fadeOut('fast', function () {
            $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
            $sidebar_img_container.fadeIn('fast');
          });
        }
        if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
          var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

          $full_page_background.fadeOut('fast', function () {
            $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
            $full_page_background.fadeIn('fast');
          });
        }
        if ($('.switch-sidebar-image input:checked').length == 0) {
          var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
          var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

          $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
          $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
        }

        if ($sidebar_responsive.length != 0) {
          $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
        }
      });
      $('.switch-sidebar-image input').change(function () {
        $full_page_background = $('.full-page-background');

        $input = $(this);

        if ($input.is(':checked')) {
          if ($sidebar_img_container.length != 0) {
            $sidebar_img_container.fadeIn('fast');
            $sidebar.attr('data-image', '#');
          }

          if ($full_page_background.length != 0) {
            $full_page_background.fadeIn('fast');
            $full_page.attr('data-image', '#');
          }

          background_image = true;
        } else {
          if ($sidebar_img_container.length != 0) {
            $sidebar.removeAttr('data-image');
            $sidebar_img_container.fadeOut('fast');
          }

          if ($full_page_background.length != 0) {
            $full_page.removeAttr('data-image', '#');
            $full_page_background.fadeOut('fast');
          }

          background_image = false;
        }
      });

      $('.switch-sidebar-mini input').change(function () {
        $body = $('body');

        $input = $(this);

        if (md.misc.sidebar_mini_active == true) {
          $('body').removeClass('sidebar-mini');
          md.misc.sidebar_mini_active = false;

          $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();

        } else {

          $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');

          setTimeout(function () {
            $('body').addClass('sidebar-mini');

            md.misc.sidebar_mini_active = true;
          }, 300);
        }
        var simulateWindowResize = setInterval(function () {
          window.dispatchEvent(new Event('resize'));
        }, 180);
        setTimeout(function () {
          clearInterval(simulateWindowResize);
        }, 1000);

      });
    });
  });
</script>
<script>
  $(document).ready(function () {
    md.initDashboardPageCharts();
    md.initVectorMap();

  });
</script>
</body>
</html>
