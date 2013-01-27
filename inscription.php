<?php include 'head.php'; ?>
<?php 
$_SERVER['REMOTE_ADDR']= '0.0.0.5';
if(!empty($_POST)&& isset($_POST)){
  extract($_POST);
  if(!empty($pseudo)){
    if(!empty($password)){
      //Etape 1 verification de l'user dans la bdd
      $sql="SELECT * FROM user WHERE user LIKE :user";
      $req = $bdd->prepare($sql);
      $req->execute(array('user'=>$pseudo));
      $tab = $req->fetch(PDO::FETCH_ASSOC);
      $count = $req->rowCount();
        if($count == 0){
          $sql="SELECT * FROM user WHERE mail LIKE :mail";
          $req = $bdd->prepare($sql);
          $req->execute(array('mail'=>$email));
          $tab = $req->fetch(PDO::FETCH_ASSOC);
          $count = $req->rowCount();
          if($count == 0){
            //Etape 3 Verification de l'ip for fun :) ps : comme je suis en local pour le moment je désactive cette option
          $sql="SELECT * FROM user WHERE ip LIKE :ip";
          $req = $bdd->prepare($sql);
          $req->execute(array('ip'=>$_SERVER['REMOTE_ADDR']));
          $tab = $req->fetch(PDO::FETCH_ASSOC);
          $count = $req->rowCount();
          if($count == 0){
            //Etape 4 Si il y a avatar verification dans la bdd noelshack 
            if(!empty($avatar)){
              $decoupe = explode('/', $avatar);
              if($decoupe[2] == 'image.noelshack.com'){
          //Etape 5 Inscription des données dans la bdd LE PLUS CHIANT QUOI :fuu:
           $prepare = $bdd->prepare("INSERT INTO `soigan`.`user` (`iduser`, `user`, `password`,`dateinsc`, `avatar`,`sign`,`ip`,`rang`,`mail`,`sexe`,`tokenid`) VALUES (NULL, :pseudo, :password, :dateinsc, :avatar,:sign,:ip,:rang,:mail,:sexe,:tokenid);");
                  $prepare->execute(array('pseudo'=>$pseudo,
                                          'password'=>cryptage($password),
                                          'dateinsc'=>date('Y-m-d'),
                                          'avatar'=>$avatar,
                                          'sign'=>$signature,
                                          'ip'=>$_SERVER['REMOTE_ADDR'],
                                          'rang'=>1,
                                          'mail'=>$email,
                                          'sexe'=>$sexe,
                                          'tokenid'=>cryptage($pseudo)));
              }
              else{
                  alert('alert-error','Lien noelshack uniquement','Erreur');
              }
            }
            else{
                //Etape 5 sans avatar
                $prepare = $bdd->prepare("INSERT INTO `soigan`.`user` (`iduser`, `user`, `password`,`dateinsc`,`sign`,`ip`,`rang`,`mail`,`sexe`,`tokenid`) VALUES (NULL, :pseudo, :password, :dateinsc,:sign,:ip,:rang,:mail,:sexe,:tokenid);");
                  $prepare->execute(array('pseudo'=>$pseudo,
                                          'password'=>cryptage($password),
                                          'dateinsc'=>date('Y-m-d'),
                                          'sign'=>$signature,
                                          'ip'=>$_SERVER['REMOTE_ADDR'],
                                          'rang'=>1,
                                          'mail'=>$email,
                                          'sexe'=>$sexe,
                                          'tokenid'=>cryptage($pseudo)
                                          )); 
            }
          }
          else{
                alert('alert-error','Un compte par ip :)','Erreur');
              }
          }
              
        }
           else{
           alert('alert-error','Cette email est déjà utilisé','Erreur');
         }

        }
        else{
          alert('alert-error','Ce pseudo est déjà pris','Erreur');
        }
    }
    else{
       alert('alert-error','Veuillez donner un mot de passe valide','Erreur');
    }
  }
  else{
    alert('alert-error','Veuillez donner un pseudo valide','Erreur');
  }

 ?>
<div class="container-fluid">
      <div class="row-fluid">
        <div class="span9">
        	<form class="form-horizontal" action="#Inscription" method="POST">
  <div class="control-group">
    <label class="control-label" for="inputPseudo">Pseudo <font color="red" required>*</font></label>
    <div class="controls">
      <input type="text" id="inputPseudo" name="pseudo" placeholder="Pseudo">
  	</div>
</div>
<div class="control-group">
    <label class="control-label" for="inputEmail">Email (Veuillez donner un email valide pour la vérification par email) <font color="red">*</font></label>
    <div class="controls">
      <input class="span3" type="email" name="email" placeholder="email@email.com" required>
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" for="inputPassword">Password <font color="red">*</font></label>
    <div class="controls">
      <input type="password" id="inputPassword" name="password" placeholder="Password" required>
    </div> 
  </div>
  <div class="control-group">
    <label class="control-label" for="sexe">Sexe</label>
    <div class="controls">
      <select name="sexe" id="sexe">
      	<option>M</option>
      	<option>F</option>
      </select>
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" for="avatar">Avatar (Noelshack Uniquement)</label>
    <div class="controls">
      <input type="text" name="avatar" id='avatar'>
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" for="signature">Signature</label>
    <div class="controls">
      <textarea id="signature" name="signature" rows="7" cols="30" value=""></textarea>
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" for="agee">Age</label>
    <div class="controls">
    <select name="age" id="age">
      <?php 
      for($i=1; $i<100; $i++){
        echo '<option value="'.$i.'">'.$i.'</option>';
      }
       ?>
    </select>
    </div>
  </div>
  <div class="control-group">
    <div class="controls">
      <label class="checkbox">
        <input type="checkbox"> Remember me
      </label>
      <button type="submit" class="btn">Sign in</button> <br/>
      	<p><font color="red">*</font> Information obligatoire</p>
    </div>
  </div>
</form>

        </div>
<?php include 'pied.php' ?>

>
