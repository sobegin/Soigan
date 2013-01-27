<?php 
include 'config.php';
$sql = "INSERT INTO `soigan`.`user` (`iduser`, `user`, `password`, `date`, `lasttime`, `avatar`, `sign`, `ip`, `rang`, `mail`, `barre`, `age`, `sexe`, `tokenid`, `valide`) VALUES (NULL, \'lol\', \'asmonaco\', \'2013-01-17 23:23:00\', CURRENT_TIMESTAMP, \'\', \'\', \'127.0.0.1\', \'10m\', \'dickpowerforeer@gail.com\', \'barre\', \'0\', \'M\', \'158\', \'0\');";
$bdd->query($sql);
 ?>