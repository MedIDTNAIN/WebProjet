<%-- 
    Document   : gestionProduits
    Created on : Nov 20, 2022, 11:15:56 PM
    Author     : MOHAMED
--%>

<%@page import="entities.Categorie"%>
<%@page import="service.CategorieService"%>
<%@page import="entities.Marque"%>
<%@page import="service.MarqueService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<<!DOCTYPE html>
<html lang="fr">
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
    <title>Product</title>


    <body>
        <div class="dashboard-main-wrapper">
            <div class="dashboard-header">
                <nav class="navbar navbar-expand-lg bg-white fixed-top">
                    <a class="navbar-brand" href="admin.jsp">E-Commerce <i class="fa fa-fw fa-shopping-cart"></i></a>
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
                                <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="assets/images/avatar-nabil.jpg" alt="" class="user-avatar-md rounded-circle"></a>
                                <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                                    <div class="nav-user-info">
                                        <h5 class="mb-0 text-white nav-user-name">Nabil Ouchlif </h5>
                                        <span class="status"></span><span class="ml-2">Available</span>
                                    </div>
                                    <a class="dropdown-item" href="#"><i class="fas fa-user mr-2"></i>Account</a>
                                    <a class="dropdown-item" href="#"><i class="fas fa-cog mr-2"></i>Settings</a>
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
                                                            <a class="nav-link" href="gestionProduits.jsp">Gestion des produits</a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a class="nav-link" href="listeProduits.jsp">Liste des produits</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-1-1" aria-controls="submenu-1-1">Marques</a>
                                                <div id="submenu-1-1" class="collapse submenu" style="">
                                                    <ul class="nav flex-column">
                                                        <li class="nav-item">
                                                            <a class="nav-link" href="gestionMarques.jsp">Gestion des marques</a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a class="nav-link" href="listeMarques.jsp">Liste des marques</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-1-3" aria-controls="submenu-1-3">Catégories</a>
                                                <div id="submenu-1-3" class="collapse submenu" style="">
                                                    <ul class="nav flex-column">
                                                        <li class="nav-item">
                                                            <a class="nav-link" href="gestionCategories.jsp">Gestion des catégories</a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a class="nav-link" href="listeCategories.jsp">Liste des catégories</a>
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
                    <div class="container-fluid dashboard-content">
                        <div class="row">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <div class="page-header">
                                    <h2 class="pageheader-title">Gestion des produits </h2>
                                    <p class="pageheader-text">Nulla euismod urna eros, sit amet scelerisque torton lectus vel mauris facilisis faucibus at enim quis massa lobortis rutrum.</p>
                                    <div class="page-breadcrumb">
                                        <nav aria-label="breadcrumb">
                                            <ol class="breadcrumb">
                                                <li class="breadcrumb-item"><a href="admin.jsp" class="breadcrumb-link">E-commerce</a></li>
                                                <li class="breadcrumb-item active" aria-current="page">Gestion des produits</li>
                                            </ol>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <form method="post" action="GestionProduit" enctype="multipart/form-data">

                            <div class="row">
                                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                                    <div class="card">
                                        <h5 class="card-header">Ajouter un produit</h5>

                                        <div class="card-body">
                                            <div id="SuccessMessage"></div>

                                            <div class="wrapper">



                                                <div class="inputs">  
                                                    <!-- Product name -->
                                                    <div class="inputField">
                                                        <label for="productName">Nom :</label><span class="required">           *</span>
                                                        <input name="productName" type="text" id="productName" name="name" data-parsley-trigger="change" required="" placeholder="" autocomplete="off" class="form-control">
                                                    </div>
                                                    <div class="inputField">
                                                        <label for="prix">Prix (DHs) :</label><span class="required">           *</span>
                                                        <input name="prix" type="text" id="prix" name="prix" data-parsley-trigger="change" required="" placeholder="" autocomplete="off" class="form-control">
                                                    </div>
                                                    <div class="inputField">
                                                        <label for="marque">Marque de produit :</label>
                                                        <select name="marque" id="marque">
                                                            <%
                                                                MarqueService ms = new MarqueService();
                                                                for (Marque m : ms.findAll()) {
                                                            %>
                                                            <option><%= m.getId()%></option>
                                                            <%}%>
                                                        </select> <span class="required">*</span>
                                                    </div>
                                                    <div class="inputField">
                                                        <label for="categorie">Catégorie de produit :</label>
                                                        <select name="categorie" id="categorie">
                                                            <%
                                                                CategorieService cs = new CategorieService();
                                                                for (Categorie m : cs.findAll()) {
                                                            %>
                                                            <option><%= m.getId()%> </option>
                                                            <%}%>
                                                        </select><span class="required">*</span>
                                                    </div>
                                                    <div class="inputField">
                                                        <label for="description">Description :</label><span class="required">           *</span>
                                                        <input name="description" type="text"  id="description" name="description" data-parsley-trigger="change" required="" placeholder="" autocomplete="off" class="form-control">
                                                    </div>
                                                    <div class="inputField">
                                                        <label for="designation">Désignation :</label><span class="required">           *</span>
                                                        <input name="designation" type="text" id="designation" name="designation" data-parsley-trigger="change" required="" placeholder="" autocomplete="off" class="form-control">
                                                    </div>

                                                </div>
                                                <div class="inputField">
                                                    <label for="unite">Quantité :</label><span class="required">           *</span>
                                                    <input name="unite" type="text" id="unite" name="unite" data-parsley-trigger="change" required="" placeholder="" autocomplete="off" class="form-control">
                                                </div>

                                                <div class="inputField">
                                                    <label for="unite">Image de Produit :</label><span >*</span>
                                                    <input name="image" type="file" id="image"  size="50px" >
                                                </div>
                                                <label for="unite"></label>

                                            </div>
                                            <div class="btnForm">
                                                <input class="btn btn-space btn-primary" type="submit" value="Save">
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </form>

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
