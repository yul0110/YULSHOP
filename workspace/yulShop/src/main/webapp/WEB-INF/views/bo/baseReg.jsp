<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="apple-touch-icon" sizes="180x180" href="https://i.morioh.com/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="https://i.morioh.com/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="https://i.morioh.com/favicon/favicon-16x16.png">
    <link rel="manifest" href="https://i.morioh.com/favicon/site.webmanifest">
    <link rel="mask-icon" href="https://i.morioh.com/favicon/safari-pinned-tab.svg" color="#262521">
    <link rel="shortcut icon" href="https://i.morioh.com/favicon/favicon.ico">
    <meta name="msapplication-TileColor" content="#faa700">
    <meta name="msapplication-config" content="https://i.morioh.com/favicon/browserconfig.xml">
    <meta name="theme-color" content="#ffffff">


    <meta name="twitter:title" content="Morioh Responsive Template with Bootstrap 4, HTML5 and Vue.js">
    <meta name="twitter:description" content="Morioh Theme is Bootstrap responsive template free download">
    <meta name="twitter:image" content="https://i.imgur.com/gWYKl5F.png">
    <meta property="twitter:card" content="summary_large_image">


    <meta property="og:title" content="Morioh Responsive Template with Bootstrap 4, HTML5 and Vue.js">
    <meta property="og:image" content="https://i.imgur.com/gWYKl5F.png">
    <meta property="og:description" content="Morioh Theme is Bootstrap responsive template free download">
    <meta property="og:image:width" content="1280">
    <meta property="og:image:height" content="720">

    <title>Morioh Responsive Template with Bootstrap 4, HTML5 and Vue.js</title>
    <meta itemprop="description" content="Morioh Theme is Bootstrap responsive template free download">
    <meta itemprop="image" content="https://i.imgur.com/gWYKl5F.png">

    <meta name="description" content="Morioh Theme is Bootstrap responsive template free download">
    <meta name="image" content="https://i.imgur.com/gWYKl5F.png">


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.11.2/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/perfect-scrollbar@1.4.0/css/perfect-scrollbar.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@mdi/font@4.7.95/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/animate.css@3.7.2/animate.min.css">

    <link rel="stylesheet" href="/resources/css/bo/base/morioh.css">


</head>

<body class="menubar-enabled navbar-top-fixed">

    <div class="wrapper">

        <div class="main-navbar navbar-expand-md navbar-light bg-white fixed-top shadow-sm">

            <button class="btn d-md-none" type="button" data-toggle="collapse" data-target="#main-menu"
                aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fas fa-bars"></i>
            </button>


            <img src="https://i.imgur.com/QTZ8pU1.png" title="Morioh" class="navbar-logo d-md-none"
                style="height: 36px;">


            <button class="btn d-md-none" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fas fa-bars"></i>
            </button>


            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto hidden-sm-down">

                    <li class="nav-item mr-5">
                        <a href="javascript://" class="nav-icon font-2xl" id="navbar-toggler">
                            <!-- <i class="fas fa-bars"></i> -->
                            <!-- <i class="mdi mdi-view-sequential font-2xl"></i> -->

                            <i class="mdi mdi-menu"></i>
                        </a>
                    </li>

                    <li class="nav-item">
                        <form class="form-inline">
                            <div class="input-group">
                                <input class="form-control" type="search" placeholder="Search" aria-label="Search">

                                <button class="btn btn-outline-primary" type="button">
                                    <i class="fas fa-search"></i>
                                </button>

                        </form>
                    </li>

                </ul>


                <ul class="navbar-nav my-2 my-lg-0">


                    <li class="nav-item mr-10">
                        <a href="#" class="nav-icon font-2xl">
                            <!-- <i class="fas fa-chart-pie"></i> -->
                            <i class="mdi mdi-view-dashboard-outline"></i>
                        </a>
                    </li>

                    <li class="nav-item mr-10">
                        <a class="nav-icon font-2xl" href="#">
                            <i class="mdi mdi-bell-ring-outline"></i>
                        </a>
                    </li>

                    <li class="nav-item mr-10">
                        <a href="#" class="nav-icon font-2xl rounded-circle">
                            <!-- <i class="fas fa-cog"></i> -->
                            <i class="mdi mdi-settings-outline"></i>
                        </a>
                    </li>

                    <li class="nav-item mr-10 dropdown">
                        <a href="#" class="nav-icon avatar rounded-circle" id="PJXN7R" role="button"
                            data-toggle="dropdown" aria-expanded="false">
                            <img src="https://i.imgur.com/ROPF2fQ.png">
                        </a>

                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="PJXN7R">
                            <a class="dropdown-item" href="#">
                                <i class="mdi mdi-account-circle-outline"></i> My Account</a>
                            <a class="dropdown-item" href="#"><i class="mdi mdi-lock-outline"></i> Change password</a>
                            <a class="dropdown-item" href="#"><i class="mdi mdi-settings-outline"></i>Settings</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#"><i class="mdi mdi-exit-to-app"></i> Logout</a>
                        </div>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-icon font-2xl rounded-circle" href="#" id="WJIK6R" role="button"
                            data-toggle="dropdown" aria-expanded="false">
                            <!-- <i class="fas fa-ellipsis-h"></i> -->

                            <i class="mdi mdi-dots-horizontal"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="WJIK6R">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                </ul>

            </div>
        </div>

        <div class="menubar menubar-dark" id="main-menu">

            <div class="menubar-header text-center bg-primary">
                <a class="menubar-brand" href="https://morioh.com">
                    <img src="https://i.imgur.com/RFG2le2.png" title="Morioh" class="menubar-logo"
                        style="height: 50px;">
                </a>
            </div>

            <div class="menubar-body">
                <ul class="menu accordion">

                    <li class="menu-item">
                        <a href="started.html" class="menu-link">
                            <!-- <i class="menu-icon fas fa-info"></i> -->
                            <!-- <i class="menu-icon fas fa-seedling"></i> -->
                            <i class="menu-icon mdi mdi-code-braces-box"></i>
                            <span class="menu-label">Getting Started</span>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="typography.html" class="menu-link">
                            <!-- <i class="menu-icon fas fa-fill-drip"></i> -->

                            <i class="menu-icon mdi mdi-format-size"></i>
                            <!-- <i class="fas fa-heading"></i> -->
                            <span class="menu-label">Typography</span>
                        </a>
                    </li>
                    <!-- <li class="menu-item">
                        <a href="colors.html" class="menu-link">
                            <i class="menu-icon mdi mdi-invert-colors"></i>
                            
                            <span class="menu-label">Colors</span>
                        </a>
                    </li> -->
                    <li class="menu-item">
                        <a href="dashboard-01.html" class="menu-link">
                            <!-- <i class="menu-icon fas fa-magic"></i> -->
                            <i class="menu-icon mdi mdi-view-dashboard"></i>
                            <span class="menu-label">Dashboard</span>
                            <span class="menu-badge">
                                <span class="badge bg-info">1</span>
                            </span>

                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="javascript://" class="menu-link" data-toggle="collapse" data-target="#menu-90ba1a"
                            aria-expanded="true" aria-controls="menu-90ba1a">
                            <!-- <i class="menu-icon fas fa-border-all"></i> -->
                            <i class="menu-icon mdi mdi-view-split-vertical"></i>
                            <span class="menu-label">Layouts</span>
                            <i class="menu-arrow mdi mdi-chevron-right"></i>
                        </a>

                        <ul class="menu collapse" data-parent="#main-menu" id="menu-90ba1a">
                            <li class="menu-item">
                                <a href="layout-menubar-minimized.html" class="menu-link">
                                    <i class="menu-icon">M</i>
                                    <span class="menu-label">Menubar Minimized</span>
                                </a>
                            </li>

                            <li class="menu-item">
                                <a href="layout-menubar-collapsed.html" class="menu-link">
                                    <i class="menu-icon">C</i>
                                    <span class="menu-label">Menubar Collapsed</span>
                                </a>
                            </li>

                            <li class="menu-item">
                                <a href="layout-menubar-light.html" class="menu-link">
                                    <i class="menu-icon">L</i>
                                    <span class="menu-label">Menubar Light</span>
                                </a>
                            </li>
                        </ul>

                    </li>

                    <li class="menu-item">
                        <a href="javascript:void(0)" class="menu-link" data-toggle="collapse" data-target="#menu-1fc88e"
                            aria-expanded="true" aria-controls="menu-1fc88e">
                            <i class="menu-icon mdi mdi-format-list-text"></i>
                            <span class="menu-label">UI Kit</span>
                            <i class="menu-arrow mdi mdi-chevron-right"></i>
                        </a>
                        <ul class="menu collapse" data-parent="#main-menu" id="menu-1fc88e">


                            <li class="menu-item">
                                <a href="ui-avatars.html" class="menu-link">
                                    <i class="menu-icon">A</i>
                                    <span class="menu-label">Avatars</span>
                                </a>
                            </li>

                            <li class="menu-item">
                                <a href="ui-buttons.html" class="menu-link">
                                    <i class="menu-icon">B</i>
                                    <span class="menu-label">Buttons</span>
                                </a>
                            </li>

                            <li class="menu-item">
                                <a href="ui-badges.html" class="menu-link">
                                    <i class="menu-icon">B</i>
                                    <span class="menu-label">Badges</span>
                                </a>
                            </li>

                            <li class="menu-item">
                                <a href="ui-breadcrumb.html" class="menu-link">
                                    <i class="menu-icon">B</i>
                                    <span class="menu-label">Breadcrumb</span>
                                </a>
                            </li>

                            <li class="menu-item">
                                <a href="ui-cards.html" class="menu-link">
                                    <i class="menu-icon">C</i>
                                    <span class="menu-label">Cards</span>
                                </a>
                            </li>

                            <li class="menu-item">
                                <a href="ui-carousels.html" class="menu-link">
                                    <i class="menu-icon">C</i>
                                    <span class="menu-label">Carousels</span>
                                </a>
                            </li>

                            <li class="menu-item">
                                <a href="ui-dropdowns.html" class="menu-link">
                                    <i class="menu-icon">D</i>
                                    <span class="menu-label">Dropdowns</span>
                                </a>
                            </li>

                            <li class="menu-item">
                                <a href="ui-lists.html" class="menu-link">
                                    <i class="menu-icon">L</i>
                                    <span class="menu-label">List group</span>
                                </a>
                            </li>

                            <li class="menu-item">
                                <a href="ui-modals.html" class="menu-link">
                                    <i class="menu-icon">M</i>
                                    <span class="menu-label">Modals</span>
                                </a>
                            </li>

                            <li class="menu-item">
                                <a href="ui-media.html" class="menu-link">
                                    <i class="menu-icon">M</i>
                                    <span class="menu-label">Media Object</span>
                                </a>
                            </li>

                            <li class="menu-item">
                                <a href="ui-navs.html" class="menu-link">
                                    <i class="menu-icon">N</i>
                                    <span class="menu-label">Navs</span>
                                </a>
                            </li>

                            <li class="menu-item">
                                <a href="ui-navbars.html" class="menu-link">
                                    <i class="menu-icon">N</i>
                                    <span class="menu-label">Navbars</span>
                                </a>
                            </li>

                            <li class="menu-item">
                                <a href="ui-notications.html" class="menu-link">
                                    <i class="menu-icon">N</i>
                                    <span class="menu-label">Notications</span>
                                </a>
                            </li>

                            <li class="menu-item">
                                <a href="ui-pagination.html" class="menu-link">
                                    <i class="menu-icon">P</i>
                                    <span class="menu-label">Pagination</span>
                                </a>
                            </li>

                            <li class="menu-item">
                                <a href="ui-popovers.html" class="menu-link">
                                    <i class="menu-icon">P</i>
                                    <span class="menu-label">Popovers</span>
                                </a>
                            </li>


                            <li class="menu-item">
                                <a href="ui-proress.html" class="menu-link">
                                    <i class="menu-icon">P</i>
                                    <span class="menu-label">Progress Bars</span>
                                </a>
                            </li>


                            <li class="menu-item">
                                <a href="ui-tooltips.html" class="menu-link">
                                    <i class="menu-icon">P</i>
                                    <span class="menu-label">Tooltips</span>
                                </a>
                            </li>

                            <li class="menu-item">
                                <a href="ui-ribbons.html" class="menu-link">
                                    <i class="menu-icon">R</i>
                                    <span class="menu-label">Ribbons</span>
                                </a>
                            </li>

                            <li class="menu-item">
                                <a href="ui-spinners.html" class="menu-link">
                                    <i class="menu-icon">S</i>
                                    <span class="menu-label">Spinners</span>
                                </a>
                            </li>

                            <li class="menu-item">
                                <a href="ui-utils.html" class="menu-link">
                                    <i class="menu-icon">U</i>
                                    <span class="menu-label">Utilities</span>
                                </a>
                            </li>

                        </ul>
                    </li>



                    <li class="menu-item">
                        <a href="ui-grid.html" class="menu-link">
                            <i class="menu-icon mdi mdi-view-grid-outline"></i>
                            <span class="menu-label">Grid</span>
                        </a>

                    </li>

                    <li class="menu-item">
                        <a href="widgets.html" class="menu-link">
                            <i class="menu-icon mdi mdi-widgets"></i>
                            <span class="menu-label">Widgets</span>
                        </a>
                    </li>

                    <li class="menu-item">
                        <a href="javascript://" class="menu-link" data-toggle="collapse" data-target="#menu-96b24e"
                            aria-expanded="true" aria-controls="menu-96b24e">
                            <!-- <i class="menu-icon fas fa-tasks"></i> -->
                            <i class="menu-icon mdi mdi-format-float-left"></i>
                            <span class="menu-label">Forms</span>
                            <i class="menu-arrow mdi mdi-chevron-right"></i>
                        </a>

                        <ul class="menu collapse" data-parent="#main-menu" id="menu-96b24e">

                            <li class="menu-item">
                                <a href="form-general.html" class="menu-link">
                                    <i class="menu-icon">E</i>
                                    <span class="menu-label">General</span>
                                </a>
                            </li>

                            <li class="menu-item">
                                <a href="form-advanced.html" class="menu-link">
                                    <i class="menu-icon">A</i>
                                    <span class="menu-label">Advanced</span>
                                </a>
                            </li>


                        </ul>
                    </li>

                    <li class="menu-item">
                        <a href="#" class="menu-link" data-toggle="collapse" data-target="#menu-62d0a7"
                            aria-expanded="true" aria-controls="menu-62d0a7">
                            <i class="menu-icon mdi mdi-chart-line"></i>

                            <span class="menu-label">Charts</span>
                            <i class="menu-arrow mdi mdi-chevron-right"></i>
                        </a>

                        <ul class="menu collapse" data-parent="#main-menu" id="menu-62d0a7">

                            <li class="menu-item">
                                <a href="chart-flot.html" class="menu-link">
                                    <i class="menu-icon">F</i>
                                    <span class="menu-label">Flot Charts</span>
                                </a>
                            </li>

                            <li class="menu-item">
                                <a href="chart-morris.html" class="menu-link">
                                    <i class="menu-icon">M</i>
                                    <span class="menu-label">Morris Charts</span>
                                </a>
                            </li>

                            <li class="menu-item">
                                <a href="chart-knob.html" class="menu-link">
                                    <i class="menu-icon">K</i>
                                    <span class="menu-label">Knob Charts</span>
                                </a>
                            </li>

                            <li class="menu-item">
                                <a href="chart-highcharts.html" class="menu-link">
                                    <i class="menu-icon">H</i>
                                    <span class="menu-label">Highcharts</span>
                                </a>
                            </li>

                            <li class="menu-item">
                                <a href="chart-peity.html" class="menu-link">
                                    <i class="menu-icon">P</i>
                                    <span class="menu-label">Peity Charts</span>
                                </a>
                            </li>


                            <li class="menu-item">
                                <a href="chart-sparkline.html" class="menu-link">
                                    <i class="menu-icon">S</i>
                                    <span class="menu-label">Sparkline Charts</span>
                                </a>
                            </li>


                        </ul>
                    </li>

                    <li class="menu-item">
                        <a href="#" class="menu-link">
                            <i class="menu-icon mdi mdi-table"></i>
                            <span class="menu-label">Tables</span>
                            <i class="menu-arrow mdi mdi-chevron-right"></i>
                        </a>
                    </li>

                    <li class="menu-item">
                        <a href="javascript://" class="menu-link" data-toggle="collapse" data-target="#menu-40ebea"
                            aria-expanded="true" aria-controls="menu-40ebea">
                            <i class="menu-icon mdi mdi-vector-square"></i>
                            <!-- <i class="menu-icon fas fa-vector-square"></i> -->
                            <span class="menu-label">Icons</span>
                            <i class="menu-arrow mdi mdi-chevron-right"></i>
                        </a>

                        <ul class="menu collapse" data-parent="#main-menu" id="menu-40ebea">
                            <li class="menu-item">
                                <a href="icon-mdi.html" class="menu-link">
                                    <i class="menu-icon mdi mdi-chevron-right"></i>
                                    <span class="menu-label">Material Icons</span>
                                </a>
                            </li>

                            <li class="menu-item">
                                <a href="icon-fa.html" class="menu-link">
                                    <i class="menu-icon mdi mdi-chevron-right"></i>
                                    <span class="menu-label">FontAwesome</span>
                                </a>
                            </li>

                            <li class="menu-item">
                                <a href="icon-remix.html" class="menu-link">
                                    <i class="menu-icon mdi mdi-chevron-right"></i>
                                    <span class="menu-label">Remix Icons</span>
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li class="menu-item">
                        <a href="#" class="menu-link">
                            <!-- <i class="menu-icon fas fa-th-list"></i> -->
                            <i class="menu-icon mdi mdi-sitemap"></i>
                            <span class="menu-label">Pages</span>
                            <i class="menu-arrow mdi mdi-chevron-right"></i>
                        </a>
                    </li>


                    <li class="menu-item">
                        <a href="#" class="menu-link">
                            <i class="menu-icon mdi mdi-tools"></i>
                            <span class="menu-label">Extras</span>
                            <i class="menu-arrow mdi mdi-chevron-right"></i>
                        </a>
                    </li>


                </ul>
            </div>

            <div class="menubar-footer bg-dark p-10">
                <a href="https://morioh.com" class="d-block text-truncate">&copy Morioh <span id="version"></span></a>
            </div>

        </div>


        <div class="container-fluid mt-15">

            <div class="card mb-15">
                



		<!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- -->

            <div class="card mb-15">
                <div class="card-body">
                    <h4>상품등록</h4>
                    <p>
                        Set heights using classes like <code>.input-lg</code>, and set widths using grid column
                        classes like <code>.col-lg-*</code>.
                    </p>

                    <form role="form" class="form-horizontal">
                        <div class="mb-15 row">
                            <label class="col-sm-2 col-form-label" for="example-input-small">Small</label>
                            <div class="col-sm-10">
                                <input type="text" id="example-input-small" name="example-input-small"
                                    class="form-control form-control-sm" placeholder=".input-sm">
                            </div>
                        </div>

                        <div class="mb-15 row">
                            <label class="col-sm-2 col-form-label" for="example-input-normal">Normal</label>
                            <div class="col-sm-10">
                                <input type="text" id="example-input-normal" name="example-input-normal"
                                    class="form-control" placeholder="Normal">
                            </div>
                        </div>

                        <div class="mb-15 row">
                            <label class="col-sm-2 col-form-label" for="example-input-large">Large</label>
                            <div class="col-sm-10">
                                <input type="text" id="example-input-large" name="example-input-large"
                                    class="form-control form-control-lg" placeholder=".input-lg">
                            </div>
                        </div>

                        <div class="mb-15 row">
                            <label class="col-sm-2 col-form-label">Grid Sizes</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" placeholder=".col-sm-4">
                            </div>
                        </div>

                        <div class="mb-15 row">
                            <label class="col-sm-2 col-form-label">Static</label>
                            <div class="col-sm-10">
                                <div class="input-group">

                                    <span class="input-group-text" id="basic-addon1">@</span>

                                    <input type="text" class="form-control" placeholder="Username" aria-label="Username"
                                        aria-describedby="basic-addon1">
                                </div>
                            </div>
                        </div>

                        <div class="mb-15 row">
                            <label class="col-sm-2 col-form-label">Dropdowns</label>
                            <div class="col-sm-10">
                                <div class="input-group mb-3">
                                   
                                        <button class="btn btn-primary  dropdown-toggle" type="button"
                                            data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">Dropdown</button>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                            <div role="separator" class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Separated link</a>
                                        </div>
                                   
                                    <input type="text" class="form-control" placeholder="" aria-label=""
                                        aria-describedby="basic-addon1">
                                </div>

                            </div>
                        </div>

                        <div class="mb-15 row mb-0">
                            <label class="col-sm-2 col-form-label">Buttons</label>
                            <div class="col-sm-10">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Recipient's username"
                                        aria-label="Recipient's username" aria-describedby="basic-addon2">
                                 
                                        <button class="btn btn-dark" type="button">Button</button>
                                  
                                </div>
                            </div>
                        </div>

						<button type="button" class="btn btn-block btn-primary">등록하기</button>

                    </form>
                </div>
            </div>

<!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- -->


            


        </div>

    </div>


    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/perfect-scrollbar@1.4.0/dist/perfect-scrollbar.min.js"></script>


    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-50750921-19"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'UA-50750921-19');
    </script>



    <script src="../../js/morioh.js"></script>


</body>

</html>