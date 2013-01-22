<?php include 'config.php'; 
session_start() ?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
    <title><?php echo $titre_page ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      }
    </style>
    <link href="css/bootstrap-responsive.css" rel="stylesheet">
    <link href="css/lightbox.css" rel="stylesheet" />

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
                    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
                                   <link rel="shortcut icon" href="../assets/ico/favicon.png">
  </head>
  <body>

    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="#"><?php echo nom_site ?></a>
          
        <div class="nav-collapse collapse">
          <?php //Si il est connecté : 
          if (!empty($_SESSION['m']['connexion'])){ ?>
            <ul class="nav navbar-text pull-right" role="navigation">
                    <li class="dropdown">
                      <a id="drop1" href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                      <ul class="dropdown-menu" role="menu" aria-labelledby="drop1">
                        <li><a tabindex="-1" href="http://google.com">Action</a></li>
                        <li><a tabindex="-1" href="#anotherAction">Another action</a></li>
                        <li><a tabindex="-1" href="#">Something else here</a></li>
                        <li class="divider"></li>
                        <li><a tabindex="-1" href="#">Separated link</a></li>
                      </ul>
                    </li>
                  
                  </ul>
          <?php } // si il est pas connecté : 
          else{ ?>
          <ul class="nav navbar-text pull-right" role="navigation">
                    <li class="dropdown">
                      <a id="drop1" href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">Se connecter <b class="caret"></b></a>
                      <ul class="dropdown-menu" role="menu" aria-labelledby="drop1">
                        <style type="text/css">
                        form.margin{
                        margin-top:2px;
                        margin-bottom:2px;
                        margin-right:5px;
                        margin-left:5px;
                      }
                        </style>
                        
                        <form class="margin" method="POST" action="#Connexion">
  <fieldset>
    <legend>Connexion</legend>
    
    <input type="text"  name="pseudo" placeholder="Votre Pseudo">
    <input type="password" name="password" placeholder="Votre Password">
    <label class="checkbox">
      <input type="checkbox" name="cookie"> Resté connecter
    </label>
    <center><input type="submit" class="btn btn-success">Connexion</center><br/>
    <small><a href="#PassOubliez">Mot de passe perdu ?</a></small><br />
    <small><a href="#Création">Crée un compte ?</a></small>
  </fieldset>
</form>
                      </ul>
                    </li>
                  
                  </ul>
                  <?php

          }

          ?>
                     
          
                  
            <ul class="nav">
              <li class="active"><a href="index.php"><?php icon('house'); ?></a></li>
              <li><a href="#about"><?php icon('') ?></a></li>
              <li><a href="#contact">Contact</a></li>
         
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>