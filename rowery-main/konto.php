<div id="all">

<?php
    if(isset($message)){
        foreach($message as $message){
            echo '<div class="message" onclick="this.remove();">'.$message.'</div><br>';
        }
    }
?>

<div class="konto-contener">

    <div class="profil">
        <?php
            $select_user = mysqli_query($conn, "SELECT * FROM users WHERE id = '$user_id'") or die ('query failed');
            if(mysqli_num_rows($select_user) > 0){
                $fetch_user = mysqli_fetch_assoc($select_user);
            };
        ?>

        <p></p>
    </div>

</div>


</div>