<?php include 'head.php'; ?>
<div class="container-fluid">
      <div class="row-fluid">
        <div class="span9">
<div id="myCarousel" class="carousel slide">
  <!-- Carousel items -->
  <div class="carousel-inner">
    <div class="active item"><div class="hero-unit">
            <h1>Dernières information</h1>
            <?php
            $reponse = $bdd->query('SELECT * FROM last_info ORDER BY id DESC LIMIT 0,1');
                while ($donnees = $reponse->fetch(PDO::FETCH_ASSOC)) {
              ?>
              <blockquote>
              <p><?php echo $donnees['information'] ?></p>
              <small><?php echo $donnees['auteur'] ?></small>
              </blockquote>

              <?php 
               }
 ?>
          </div></div>
          
    <div class="item"><div class="hero-unit"><h1>Profil</h1>
            <p>Ici des infos sur le profils des gens à coder plus tard </p>
            <p><a class="btn btn-primary btn-large">Learn more &raquo;</a></p></div></div>
  </div>
  <!-- Carousel nav -->
  <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
  <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
</div>

          <h1 class="page-header">Dernière news</h1>
          <div class="row-fluid">
            <?php  $reponse = $bdd->query('SELECT * FROM news WHERE statut = 1 ORDER BY idnews DESC LIMIT 0,3 '); 
            while($news = $reponse->fetch(PDO::FETCH_ASSOC)){
              ?>
                <div class="span4">
              <h2><?php echo htmlspecialchars($news['titre']) ?></h2>
              <p><?php echo $news['resumer'] ?></p>
              <p><a class="btn" href="news.php?id=<?php echo $news['idnews'] ?>">Voir détail &raquo;</a></p>
            </div><!--/span-->
              <?php
            }


            ?> 
            
          </div><!--/row-->
          <h1 class="page-header">Dernièrs topic</h1>
          <div class="row-fluid">
            
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!--/span-->
          </div><!--/row-->        </div><!--/span-->
<?php include 'pied.php' ?>
       