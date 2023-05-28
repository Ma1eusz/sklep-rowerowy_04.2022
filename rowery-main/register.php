<div id="all">

<?php

include 'conf.php';

if(isset($_POST['submit'])){

   $name = mysqli_real_escape_string($conn, $_POST['name']);
   $email = mysqli_real_escape_string($conn, $_POST['email']);
   $pass = mysqli_real_escape_string($conn, md5($_POST['password']));
   $cpass = mysqli_real_escape_string($conn, md5($_POST['cpassword']));

   $select = mysqli_query($conn, "SELECT * FROM `users` WHERE email_users = '$email' AND password_users = '$pass'") or die('query failed');

   if(mysqli_num_rows($select) > 0){
      $message[] = '<font color="red">Użytkownik już istnieje!</font>';
   }else{
      mysqli_query($conn, "INSERT INTO `users`(name_users, email_users, password_users) VALUES('$name', '$email', '$pass')") or die('query failed');
      $message[] = '<font color="red">Zarejestrowano pomyślnie!</font>';
      header('location:index.php?plik=login');
   }

}

?>


<div class="form-container">
    <form action="" method="post">
        <h3>Rejestracja</h3>
        <input type="text" name="name" required placeholder="Wpisz nazwę użytkownika" class="box">
        <input type="email" name="email" required placeholder="Wpisz email" class="box">
        <input type="password" name="password" required placeholder="Wpisz hasło" class="box">
        <input type="password" name="cpassword" required placeholder="Potwierdź hasło" class="box">
        <?php
            if(isset($message)){
               foreach($message as $message){
                  echo '<div class="message" onclick="this.remove();">'.$message.'</div><br>';
               }
            }
         ?>
        <input type="submit" name="submit" class="btn" value="Zarejestruj">
        <p>masz już konto? <a href="index.php?plik=login">zaloguj</a></p>
    </form>
</div>


</div>