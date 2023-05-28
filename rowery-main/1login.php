<!-- <div id="all">

<?php

// include 'conf.php';

// if(isset($_POST['submit'])){

//    $email = mysqli_real_escape_string($conn, $_POST['email']);
//    $pass = mysqli_real_escape_string($conn, md5($_POST['password']));

//    $select = mysqli_query($conn, "SELECT * FROM `users` WHERE email_users = '$email' AND password_users = '$pass'") or die('query failed');

//    if(mysqli_num_rows($select) > 0){
//       $row = mysqli_fetch_assoc($select);
//       $_SESSION['user_id'] = $row['id_users'];
//       header('location:index.php');
//    }else{
//       $message[] = '<font color="red">Nieprawidłowe hasło lub email!</font>';
//    }

// }
?>
   
   <div class="form-container">
    <form action="" method="post">
        <h3>Logowanie</h3>
        <input type="text" name="name" required placeholder="Wpisz nazwę użytkownika" class="box">
        <input type="email" name="email" required placeholder="Wpisz email" class="box">
        <input type="password" name="password" required placeholder="Wpisz hasło" class="box">
        <?php
            if(isset($message)){
               foreach($message as $message){
                  echo '<div class="message" onclick="this.remove();">'.$message.'</div><br>';
               }
            }
         ?>
        <input type="submit" name="submit" class="btn" value="Zaloguj">
        <p>nie masz jeszcze konta? <a href="index.php?plik=register">zarejestruj</a></p>
    </form>
</div>

</div> -->
