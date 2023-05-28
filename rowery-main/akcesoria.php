<div class="all">
    <div class="title2">ODZIEŻ
        [
        <?php
            require("conf.php");
            $wynik = mysqli_query($conn, "SELECT * FROM products");
            $ile = mysqli_num_rows($wynik);
            echo $ile ;        
            ?> 
            ]
      </div>
    <div class="pasek"></div><br><br>

    <div id="filters">
        <ul class="filters">
            <li>RODZAJ</li>
                <ul class="rodzaje">
                    <li><a href="#">SPODNIE</a></li>
                    <li><a href="#">KOSZULKI</a></li>
                    <li><a href="#">KASKI</a></li>
                    <li><a href="#">SKARPETKI</a></li>
                    <li><a href="#">KUTKI</a></li>
                    <li><a href="#">BUTY</a></li>
                </ul> 
            <br><li>ROZMIAR</li>
                <ul class="rozmiary">
                    <li>XS</li>
                    <li>S</li>
                    <li>M</li>
                    <li>L</li>
                    <li>XL</li>
                </ul>
            <br><li>KOLOR</li>
                <ul class="kolory">
                    <li>XS</li>
                    <li>S</li>
                    <li>M</li>
                    <li>L</li>
                    <li>XL</li>
                </ul>
        </ul>
        
    </div>


    <div class="products-list2">
    
    <?php
        if(!isset($_GET['grupa'])){$grupa=1;}
        else {$grupa=$_GET['grupa'];}
        require("conf.php");
        $wynik = mysqli_query($conn, "SELECT * FROM products");
        $ile = mysqli_num_rows($wynik);
        $poile=3;
        $pomin=($grupa-1)*$poile;
        $ilegrup=ceil($ile/$poile);
        $wynik = mysqli_query($conn, "SELECT * FROM products LIMIT $pomin,$poile");
        $i=$pomin+1;
        while ($wiersz = mysqli_fetch_array($wynik))
        {
            echo '<a href="index.php?plik=desc2&nr=' . $wiersz ["id_products"] . '"><div class="product">';
            echo '<img class="product-img" src="products/' . $wiersz ["id_products"] . '.jpg"/>';
            echo '<div class="product_name">' . $wiersz ["name_products"] . '<br>'
            . $wiersz ["price_products"] . ' zł</div>';
            echo '</div></a>'; 
        }
?>
            

        <div class="strony">

        <?php
        if($grupa==1){
            echo '<';
        }
        if($grupa>1){
            echo '<a href="index.php?plik=akcesoria&grupa=' . ($grupa-1) . '"><</a>';
        }
        for($j=0; $j<$ilegrup; $j++){
	        echo '<b><a href=index.php?plik=akcesoria&grupa=' . ($j+1) . ' >' . ($j+1) . ' </b></a>';
        }
        if($grupa<$ilegrup){echo '<a href="index.php?plik=akcesoria&grupa=' . ($grupa+1) . '">></a>';}
        ?>

        </div> 

    </div> 




    
    


</div>