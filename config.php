<?php
$dsn = 'mysql:dbname=soigan;host=127.0.0.1;charset=UTF-8';
$user = 'root';
$password = '';

try {
    $bdd = new PDO($dsn, $user, $password);

} catch (PDOException $e) {
    echo 'Connexion échouée : ' . $e->getMessage();
}
$reponse = $bdd->query('SELECT * FROM config');
while ($donnees = $reponse->fetch(PDO::FETCH_ASSOC)) {
	switch ($donnees['id']) {
		case '1':
			define('nom_site',$donnees['valeur']);
			break;
		case '2':
			define('codeur_site',$donnees['valeur']);

			break;
		
	}
}


//Gestion titre page :)
$page=explode('/', $_SERVER['PHP_SELF']);
$vire_ext = explode('.', $page['3']);	
$titre_page = ucfirst($vire_ext['0']);
//Gestion icon
	function icon($nom){
			echo '<img src="icons/'.$nom.'.png" alt="Icon :'.$nom.'">';	 
	}
//Utf8 bdd	
$bdd->query("SET NAMES UTF8");

//Redimension image
	function redim($url,$larg,$long){
	}
//Find user : consiste avec l'id à retourner  le pseudo en ucfirst sans failles
	function finduser($iduser){
		$dsn = 'mysql:dbname=soigan;host=127.0.0.1;charset=UTF-8';
$user = 'root';
$password = '';

try {
    $bdd = new PDO($dsn, $user, $password);

} catch (PDOException $e) {
    echo 'Connexion échouée : ' . $e->getMessage();
}
		$sql= $bdd->query('SELECT user FROM user WHERE iduser= '.$iduser.'');
		$final=$sql->fetch(PDO::FETCH_ASSOC);
		echo htmlspecialchars(ucfirst($final['user']));

	}
//Function pour crée des lightbox
	function lightbox($urlphoto){

		echo'<a href="'.$urlphoto.'" rel="lightbox"><img src="'.$urlphoto.'"/></a>';

	}
	function css($lien){
		echo '<link href="css/'.$lien.'.css" rel="stylesheet">';
	}
?>
