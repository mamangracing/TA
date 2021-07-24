<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scaleble=no" name="viewport">
    <title>Bromind Cafe | <?php echo $judul;?></title>
    <link rel="stylesheet" type="text/css" href="<?= base_url('assets/');?>bootstrap-4.5.0/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="<?= base_url('assets/');?>bromind_style/css/custom.css?v=3.0">
    <link rel="icon" type="image/png" sizes="32x32" href="<?= base_url('assets/');?>bromind_style/img/Logo Bromind Cafe.png">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <link rel="stylesheet" href="<?= base_url('assets/');?>bootstrap-4.5.0/css/bootstrap.min.css">

    <style>
        /*history page*/
        /*.history h2{
            margin-top: 6rem;
        }*/

        
        .history h2{
            margin-left: 83.333333%;
        }
        
        .facilities h3{
            font-family: "HelveticaNeueLTStd-Light";
        }

        #story h2, #story .isi, #story_page, .harga, #name_produk h3, .gopay, .ovo, #location h3, .navbar #list, .navbar #cart-lang, #foll h4, #loc h4{
            font-family: "HelveticaNeueLTStd-Light";
        }
    </style>
</head>
<body>
    <?php $this->load->view($modal);?>
    <!-- Header -->
    <nav class="navbar navbar-expand-lg fixed-top navbar-dark m-auto bg-dark change">
        <div class="container-fluid" style="width: 94%;">
            <!-- Navbar Brand -->
            <a class="navbar-brand" href="#">
                <img src="<?= base_url('assets/');?>bromind_style/img/Logo Bromind Cafe.png " alt="BroMind Logo ">
            </a>

            <!-- Toggler on Mobile -->
            <button class="navbar-toggler" type="button" data-trigger="#main_nav">
                <img src="<?= base_url('assets/');?>bromind_style/img/icons/menu_collapse.svg" alt="Menu">
              </button>
            <div class="navbar-collapse" id="main_nav">
                
                <!-- Header Navbar Collapse --> <!-- cart mobile -->
                <div class="offcanvas-header mt-2">
                    <div id=<?php if($cart != null){ echo "notif-sm";} else{ echo ""; }?>><?php if($cart){ echo count($cart);} else{ echo ""; }?></div>
                    <a href="#" class="nav-link" data-toggle="modal" data-target="#shopping-cart">
                        <img src="<?= base_url('assets/');?>bromind_style/img/icons/shopping_cart_black.svg" class="cart" alt="My Cart" />
                    </a>
                    <button class="btn btn-light btn-close float-right"><img src="<?= base_url('assets/');?>bromind_style/img/icons/close.svg" alt="Close" /></button>
                </div>

                <!-- Navbar Menu -->
                <ul class="navbar-nav ml-auto text-center width-100" id="list">
                    <li class="nav-item active">
                        <a href="<?= base_url();?>" class="nav-link active">Home<span class="sr-only">(current)</span></a>
                    </li>

                    <?php
                    foreach ($page as $pages) :?>
                    
                        <li class="nav-item">
                            <a href="<?= base_url('landing_page/'.$pages->link);?>" target="<?php if($pages->link == 'yt'){ echo 'blank';} else { echo '';};?>" class="nav-link active"><?= $pages->id;?><span class="sr-only">(current)</span></a>
                        </li>
                    <?php endforeach; ?>
                </ul>

                <!-- Cart & Language --> <!-- cart dekstop -->
                <ul class="navbar-nav cart_language" id="cart-lang">
                    <li class="nav-item d-none d-lg-block">
                        <a href="#" class="nav-link" data-toggle="modal" data-target="#shopping-cart">
                            <?php 

                                if($cart != null) { 
                                    if($cart[0]->kd_user == $this->session->kd_user){ 
                                        echo "<div id=notif-lg>".count($cart)."</div>";
                                    } else { 
                                        '';
                                    }
                                }
                                else { 
                                    ''; 
                                }
                            ?> 
                            <img src="<?= base_url('assets/');?>bromind_style/img/icons/shopping_cart.svg" alt="My Cart">
                        </a>
                    </li>
                    <?php if($this->session->role_id == 3) {?> 
                        <li class="nav-item dropdown no-arrow">
                            <!-- <a class="nav-link dropdown-toggle" href="#" id="customerDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="mr-2 d-none d-lg-inline small">nama</span>
                            </a> -->
                            <div class="dropdown">
                                <a class="btn btn-transparent text-white dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                                <?= $this->session->name; ?>
                                </a>

                                <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                    <li><a class="dropdown-item" href="#">Action</a></li>
                                    <li><a class="dropdown-item" href="#">Another action</a></li>
                                    <li><a class="dropdown-item" href="#">Something else here</a></li>
                                </ul>
                            </div>
                            <?php

                        } else { ?>
                            <a href="<?= base_url('auth/registration');?>" class="nav-link">Daftar</a>
                        </li>
                        <li class="nav-item dropdown no-arrow">
                            <a href="<?= base_url('auth');?>" class="nav-link">Login</a>
                        </li>
                            <?php 
                        }
                    ?>
                        <!-- <a href="#" class="nav-link dropdown-toggle float-right" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img src="<?= base_url('assets/');?>bromind_style/img/icons/publicon_social.svg" class="d-none d-lg-block" alt="Language">
                            <img src="<?= base_url('assets/');?>bromind_style/img/icons/publicon_social_black.svg" class="d-lg-none d-xl-none" alt="Language">English
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" onchange="translate(this);">
                            <a class="dropdown-item" href="#">Indonesia</a>
                            <a class="dropdown-item" href="#">English</a>
                        </div>
                        <div id="google_translate_element2"></div> -->
                    </li>
                </ul>
            </div>
        </div>
    </nav>
