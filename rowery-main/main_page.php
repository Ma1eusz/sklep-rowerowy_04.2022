
       <center>
        <img src="images/bg1.jpg" style="max-width:100%;height:auto;">
        <div class="title">NAJNOWSZE ROWERY</div>
        
<div class="products-list">
    
    <?php
        if(!isset($_GET['grupa'])){$grupa=1;}
        else {$grupa=$_GET['grupa'];}
        require("conf.php");
        $wynik = mysqli_query($conn, "SELECT * FROM bikes");
        $ile = mysqli_num_rows($wynik);
        $poile=4;
        $pomin=($grupa-1)*$poile;
        $ilegrup=ceil($ile/$poile);
        $wynik = mysqli_query($conn, "SELECT * FROM bikes LIMIT $pomin,$poile");
        $i=$pomin+1;
        while ($wiersz = mysqli_fetch_array($wynik))
        {
            echo '<a href="index.php?plik=desc&nr=' . $wiersz ["id_bikes"] . '"><div class="product">';
            echo '<img class="product-img" src="bikes/' . $wiersz ["id_bikes"] . '.jpg"/>';
            echo '<div class="product_name">' . $wiersz ["name_bikes"] . '<br>'
            . $wiersz ["price_bikes"] . ' PLN</div>';
            echo '</div></a>'; 
        }
    ?>
</div>
       </center>


