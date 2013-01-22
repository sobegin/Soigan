<?php include 'head.php' ?>
<div class="container-fluid">
      <div class="row-fluid">
        <div class="span9">
        	<form class="form-horizontal">
  <div class="control-group">
    <label class="control-label" for="inputPseudo">Pseudo <font color="red">*</font></label>
    <div class="controls">
      <input type="text" id="inputPseudo" placeholder="Pseudo">
  	</div>
</div>
<div class="control-group">
    <label class="control-label" for="inputEmail">Email <font color="red">*</font></label>
    <div class="controls">
      <input class="span3" type="email" name="inputEmail" placeholder="email@email.com" required>
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" for="inputPassword">Password <font color="red">*</font></label>
    <div class="controls">
      <input type="password" id="inputPassword" placeholder="Password">
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
