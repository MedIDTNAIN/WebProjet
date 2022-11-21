<%-- 
    Document   : admin
    Created on : 21 nov. 2022, 21:53:13
    Author     : Mohamed Nabil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html lang="fr">
    <head>
        <title>Welcome home, Admin!</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
        <link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/libs/css/style.css">
        <link rel="stylesheet" href="assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
        <link rel="stylesheet" href="assets/vendor/charts/chartist-bundle/chartist.css">
        <link rel="stylesheet" href="assets/vendor/charts/morris-bundle/morris.css">
        <link rel="stylesheet" href="assets/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="assets/vendor/charts/c3charts/c3.css">
        <link rel="stylesheet" href="assets/vendor/fonts/flag-icon-css/flag-icon.min.css">
    </head>
    <body>
        <div class="dashboard-main-wrapper">
            <div class="dashboard-header">
                <nav class="navbar navbar-expand-lg bg-white fixed-top">
                    <a class="navbar-brand" href="index.html">E-Commerce <i class="fa fa-fw fa-shopping-cart"></i></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto navbar-right-top">
                            <li class="nav-item">
                                <div id="custom-search" class="top-search-bar">
                                    <input class="form-control" type="text" placeholder="Search..">
                                </div>
                            </li>
                            <li class="nav-item dropdown notification">
                                <a class="nav-link nav-icons" href="#" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-fw fa-bell"></i> <span class="indicator"></span></a>
                                <ul class="dropdown-menu dropdown-menu-right notification-dropdown">
                                    <li>
                                        <div class="notification-title"> Notification</div>
                                        <div class="notification-list">
                                            <div class="list-group">
                                                <a href="#" class="list-group-item list-group-item-action active">
                                                    <div class="notification-info">
                                                        <div class="notification-list-user-img"><img src="assets/images/avatar-2.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                                        <div class="notification-list-user-block"><span class="notification-list-user-name">Jeremy Rakestraw</span>accepted your invitation to join the team.
                                                            <div class="notification-date">2 min ago</div>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a href="#" class="list-group-item list-group-item-action">
                                                    <div class="notification-info">
                                                        <div class="notification-list-user-img"><img src="assets/images/avatar-3.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                                        <div class="notification-list-user-block"><span class="notification-list-user-name">John Abraham </span>is now following you
                                                            <div class="notification-date">2 days ago</div>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a href="#" class="list-group-item list-group-item-action">
                                                    <div class="notification-info">
                                                        <div class="notification-list-user-img"><img src="assets/images/avatar-4.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                                        <div class="notification-list-user-block"><span class="notification-list-user-name">Monaan Pechi</span> is watching your main repository
                                                            <div class="notification-date">2 min ago</div>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a href="#" class="list-group-item list-group-item-action">
                                                    <div class="notification-info">
                                                        <div class="notification-list-user-img"><img src="assets/images/avatar-5.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                                        <div class="notification-list-user-block"><span class="notification-list-user-name">Jessica Caruso</span>accepted your invitation to join the team.
                                                            <div class="notification-date">2 min ago</div>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="list-footer"> <a href="#">View all notifications</a></div>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown connection">
                                <a class="nav-link" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fas fa-fw fa-th"></i> </a>
                                <ul class="dropdown-menu dropdown-menu-right connection-dropdown">
                                    <li class="connection-list">
                                        <div class="row">
                                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                                <a href="#" class="connection-item"><img src="assets/images/github.png" alt="" > <span>Github</span></a>
                                            </div>
                                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                                <a href="#" class="connection-item"><img src="assets/images/dribbble.png" alt="" > <span>Dribbble</span></a>
                                            </div>
                                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                                <a href="#" class="connection-item"><img src="assets/images/dropbox.png" alt="" > <span>Dropbox</span></a>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                                <a href="#" class="connection-item"><img src="assets/images/bitbucket.png" alt=""> <span>Bitbucket</span></a>
                                            </div>
                                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                                <a href="#" class="connection-item"><img src="assets/images/mail_chimp.png" alt="" ><span>Mail chimp</span></a>
                                            </div>
                                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                                <a href="#" class="connection-item"><img src="assets/images/slack.png" alt="" > <span>Slack</span></a>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="conntection-footer"><a href="#">More</a></div>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown nav-user">
                                <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="assets/images/avatar-1.jpg" alt="" class="user-avatar-md rounded-circle"></a>
                                <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                                    <div class="nav-user-info">
                                        <h5 class="mb-0 text-white nav-user-name">John Abraham </h5>
                                        <span class="status"></span><span class="ml-2">Available</span>
                                    </div>
                                    <a class="dropdown-item" href="#"><i class="fas fa-user mr-2"></i>Account</a>
                                    <a class="dropdown-item" href="#"><i class="fas fa-cog mr-2"></i>Setting</a>
                                    <a class="dropdown-item" href="#"><i class="fas fa-power-off mr-2"></i>Logout</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>    
            </div>
            <div class="nav-left-sidebar sidebar-dark">
                <div class="menu-list">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <a class="d-xl-none d-lg-none" href="#">Dashboard</a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNav">
                            <ul class="navbar-nav flex-column">
                                <li class="nav-divider">
                                    Menu
                                </li>
                                <li class="nav-item ">
                                    <a class="nav-link active" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-1" aria-controls="submenu-1"><i class="fa fa-fw fa-user-circle"></i>Tableau de bord <span class="badge badge-success">6</span></a>
                                    <div id="submenu-1" class="collapse submenu" style="">
                                        <ul class="nav flex-column">
                                            <li class="nav-item">
                                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-1-2" aria-controls="submenu-1-2">Produits</a>
                                                <div id="submenu-1-2" class="collapse submenu" style="">
                                                    <ul class="nav flex-column">
                                                        <li class="nav-item">
                                                            <a class="nav-link" href="ecommerce-product-single.html">Gestion des produits</a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a class="nav-link" href="ecommerce-product.html">Liste des produits</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-1-1" aria-controls="submenu-1-1">Marques</a>
                                                <div id="submenu-1-1" class="collapse submenu" style="">
                                                    <ul class="nav flex-column">
                                                        <li class="nav-item">
                                                            <a class="nav-link" href="ecommerce-product-single.html">Gestion des marques</a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a class="nav-link" href="ecommerce-product.html">Liste des marques</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-1-3" aria-controls="submenu-1-3">Catégories</a>
                                                <div id="submenu-1-3" class="collapse submenu" style="">
                                                    <ul class="nav flex-column">
                                                        <li class="nav-item">
                                                            <a class="nav-link" href="ecommerce-product-single.html">Gestion des catégories</a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a class="nav-link" href="ecommerce-product.html">Liste des catégories</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
            <div class="dashboard-wrapper">
                <div class="dashboard-ecommerce">
                    <div class="container-fluid dashboard-content ">
                        <div class="row">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <div class="page-header">
                                    <h2 class="pageheader-title">Tableau de bord E-commerce</h2>
                                    <p class="pageheader-text">Nulla euismod urna eros, sit amet scelerisque torton lectus vel mauris facilisis faucibus at enim quis massa lobortis rutrum.</p>
                                    <div class="page-breadcrumb">
                                        <nav aria-label="breadcrumb">
                                            <ol class="breadcrumb">
                                                <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Tableau de bord</a></li>
                                                <li class="breadcrumb-item active" aria-current="page">E-Commerce</li>
                                            </ol>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ecommerce-widget">

                            <div class="row">
                                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                                    <div class="card">
                                        <div class="card-body">
                                            <h5 class="text-muted">Total des clients <i class="fa fa-fw fa-user-circle"></i></h5>
                                            <div class="metric-value d-inline-block">
                                                <h1 class="mb-1">2,022 clients</h1>
                                            </div>
                                            <div class="metric-label d-inline-block float-right text-success font-weight-bold">
                                                <span><i class="fa fa-fw fa-arrow-alt-circle-up"></i></span><span>5.86%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                                    <div class="card">
                                        <div class="card-body">
                                            <h5 class="text-muted">Total des produits <i class="fa fa-fw fa-chart-pie"></i></h5>
                                            <div class="metric-value d-inline-block">
                                                <h1 class="mb-1">323 produits</h1>
                                            </div>
                                            <div class="metric-label d-inline-block float-right text-success font-weight-bold">
                                                <span><i class="fa fa-fw fa-arrow-alt-circle-up"></i></span><span>10.22%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                                    <div class="card">
                                        <div class="card-body">
                                            <h5 class="text-muted">Revenu total <i class="fa fa-fw fa-donate"></i></h5>
                                            <div class="metric-value d-inline-block">
                                                <h1 class="mb-1">28,000 $</h1>
                                            </div>
                                            <div class="metric-label d-inline-block float-right text-primary font-weight-bold">
                                                <span><i class="fa fa-fw fa-arrow-alt-circle-right"></i></span><span>N/A</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                                    <div class="card">
                                        <div class="card-body">
                                            <h5 class="text-muted">Revenu moyen/util. <i class="fa fa-fw fa-dollar-sign"></i></h5>
                                            <div class="metric-value d-inline-block">
                                                <h1 class="mb-1">13.847 $</h1>
                                            </div>
                                            <div class="metric-label d-inline-block float-right text-secondary font-weight-bold">
                                                <span><i class="fa fa-fw fa-arrow-alt-circle-down"></i></span><span>-2.00%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xl-9 col-lg-12 col-md-6 col-sm-12 col-12">
                                    <div class="card">
                                        <h5 class="card-header">Commandes récentes</h5>
                                        <div class="card-body p-0">
                                            <div class="table-responsive">
                                                <table class="table">
                                                    <thead class="bg-light">
                                                        <tr class="border-0">
                                                            <th class="border-0">#</th>
                                                            <th class="border-0">Image</th>
                                                            <th class="border-0">Nom du produit</th>
                                                            <th class="border-0">Id du produit</th>
                                                            <th class="border-0">Quantité</th>
                                                            <th class="border-0">Prix</th>
                                                            <th class="border-0">Date de commande</th>
                                                            <th class="border-0">Client</th>
                                                            <th class="border-0">Etat</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>
                                                                <div class="m-r-10"><img src="assets/images/product-pic.png" alt="user" class="rounded" width="45"></div>
                                                            </td>
                                                            <td>T-Shirt Adidas </td>
                                                            <td>id000001 </td>
                                                            <td>20</td>
                                                            <td>$80.00</td>
                                                            <td>27-08-2018 01:22:12</td>
                                                            <td>Patricia J. King </td>
                                                            <td><span class="badge-dot badge-brand mr-1"></span>InTransit </td>
                                                        </tr>
                                                        <tr>
                                                            <td>2</td>
                                                            <td>
                                                                <div class="m-r-10"><img src="assets/images/product-pic-2.jpg" alt="user" class="rounded" width="45"></div>
                                                            </td>
                                                            <td>Jacket Bleu </td>
                                                            <td>id000002 </td>
                                                            <td>12</td>
                                                            <td>$180.00</td>
                                                            <td>25-08-2018 21:12:56</td>
                                                            <td>Rachel J. Wicker </td>
                                                            <td><span class="badge-dot badge-success mr-1"></span>Delivered </td>
                                                        </tr>
                                                        <tr>
                                                            <td>3</td>
                                                            <td>
                                                                <div class="m-r-10"><img src="assets/images/product-pic-3.jpg" alt="user" class="rounded" width="45"></div>
                                                            </td>
                                                            <td>Pantalon Gris </td>
                                                            <td>id000003 </td>
                                                            <td>23</td>
                                                            <td>$820.00</td>
                                                            <td>24-08-2018 14:12:77</td>
                                                            <td>Michael K. Ledford </td>
                                                            <td><span class="badge-dot badge-success mr-1"></span>Delivered </td>
                                                        </tr>
                                                        <tr>
                                                            <td>4</td>
                                                            <td>
                                                                <div class="m-r-10"><img src="assets/images/product-pic-4.jpg" alt="user" class="rounded" width="45"></div>
                                                            </td>
                                                            <td>Chaussures Reebok </td>
                                                            <td>id000004 </td>
                                                            <td>34</td>
                                                            <td>$340.00</td>
                                                            <td>23-08-2018 09:12:35</td>
                                                            <td>Michael K. Ledford </td>
                                                            <td><span class="badge-dot badge-success mr-1"></span>Delivered </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="9"><a href="#" class="btn btn-outline-light float-right">View Details</a></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <script src="assets/vendor/jquery/jquery-3.3.1.min.js"></script>
                <script src="assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
                <script src="assets/vendor/slimscroll/jquery.slimscroll.js"></script>
                <script src="assets/libs/js/main-js.js"></script>
                <script src="assets/vendor/charts/chartist-bundle/chartist.min.js"></script>
                <script src="assets/vendor/charts/sparkline/jquery.sparkline.js"></script>
                <script src="assets/vendor/charts/morris-bundle/raphael.min.js"></script>
                <script src="assets/vendor/charts/morris-bundle/morris.js"></script>
                <script src="assets/vendor/charts/c3charts/c3.min.js"></script>
                <script src="assets/vendor/charts/c3charts/d3-5.4.0.min.js"></script>
                <script src="assets/vendor/charts/c3charts/C3chartjs.js"></script>
                <script src="assets/libs/js/dashboard-ecommerce.js"></script>
                </body>
                </html>
