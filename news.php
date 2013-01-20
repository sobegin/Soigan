<?php 
include 'head.php'; 
if(!isset($_GET['id'])){
header('location:antihack.php');
}
else{
?>
<div class="container-fluid">
      <div class="row-fluid">
        <div class="span9">
        <?php 
        $sql = 'SELECT *
    FROM news
WHERE idnews = :get';
$sth = $bdd->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
$sth->execute(array(':get' => $_GET['id']));
if($req = $sth->fetch(PDO::FETCH_ASSOC)){
//Traitement des requètes finis
?>
<h2><?php echo htmlspecialchars($req['titre']) ?></h2>

<?php 
// Affichage de l'image redimensionner via l'administration :)

 ?>
    <div class="row-fluid">
        <div class="span3">
        <ul class="thumbnails">
          <li class="thumbnail"><a href="#">
          <?php lightbox($req['photo'])?>
          </a>
  </li>
</ul>
</div>
      <div class="span9">
        <p><?php echo $req['contenus'] ?></p>
        <blockquote class="pull-right">
          <p><date>Date : <?php echo $req['date'] ?></date></p>
          <small>Ecrit par  <cite title="Source Title"><a href="cdv?id=<?php echo $req['iduser'] ?>"><?php finduser($req['iduser'])?></a></cite></small>
        </blockquote>


      </div>
      <div class="row-fluid">
        <div class="span6">
        <h1 class="page-header">Commentaires</h1>
        <?php 

        $sql = 'SELECT *
    FROM commentaire
WHERE id_news = :get';
$sth = $bdd->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
$sth->execute(array(':get' => $_GET['id']));
while($req = $sth->fetch(PDO::FETCH_ASSOC)){
?>

<h6><?php  finduser($req['id_user']); ?></h6>

<?php
}

         ?>
      </div>
      <div class="span6">
        <h1 class="page-header">Postez un commentaire</h1>
      </div>
      </div>
    </div>
    
      </div><!--/span-->
<?php 
}
else{
  header('location:antihack.php');
}
}
?>

       
<?php  include 'pied.php' ?>
