<div class="all">
    <div class="title2">ROWERY 
        >>
        <?php
            $gat = $_GET['gat'];
            require("conf.php");
            $wynik = mysqli_query($conn, "SELECT * FROM categories WHERE id_categories=$gat ");
            $wiersz = mysqli_fetch_array($wynik);
            echo $wiersz["name_categories"];        
            ?> 
            
      </div>
    <div class="pasek"></div><br><br>

<div class="filters-container">
    <div class="filters">
        Szukaj po nazwie
        <form method="post" action="index.php?plik=szukaj">
            <input type="text" name="nazwa" class="searchTerm" placeholder="Wpisz nazwę modelu..">
            <button type="submit" class="SearchBtn">
                Szukaj
            </button>
        </form>
    </div>
    <div class="filters">
        KATEGORIE
        <ul>
            <li><a href="index.php?plik=kategorie&gat=1">Szosowe</a></li>
            <li><a href="index.php?plik=kategorie&gat=2">Górskie</a></li>
            <li><a href="index.php?plik=kategorie&gat=3">E-bike</a></li>
        </ul>    
    </div>
    <div class="filters">
        CENA
        
	</div>
    </div>
</div>    

    <div class="products-list2">
    

    <?php
        if(!isset($_GET['grupa'])){$grupa=1;}
        else {$grupa=$_GET['grupa'];}
        require("conf.php");
        $wynik = mysqli_query($conn, "SELECT * FROM bikes");
        $ile = mysqli_num_rows($wynik);
        $poile=9;
        $pomin=($grupa-1)*$poile;
        $ilegrup=ceil($ile/$poile);
        $gat = $_GET['gat'];
        $wynik = mysqli_query($conn, "SELECT * FROM bikes WHERE category_bikes=$gat LIMIT $pomin,$poile");
        $i=$pomin+1;
        while ($wiersz = mysqli_fetch_array($wynik))
        {
            echo '<a href="index.php?plik=desc&nr=' . $wiersz ["id_bikes"] . '"><div class="product">';
            echo '<img class="product-img" src="bikes/' . $wiersz ["id_bikes"] . '.jpg"/>';
            echo '<div class="product_name"><b>'. $wiersz["brand_bikes"] . '</b><br><font size="4px">' 
            . $wiersz ["name_bikes"] .
            ', '. $wiersz ["color_bikes"] .
            '</font><br><b>'. $wiersz ["price_bikes"] . ' zł</b></div>';
            echo '</div></a>'; 
        }
?>
            

        <div class="strony">

        <?php
        if($grupa>1){
            echo '<a href="index.php?plik=rowery&grupa=' . ($grupa-1) . '"><div class="prev-next"> <b><</b> </div></a>';
        }
        for($j=0; $j<$ilegrup; $j++){
	        echo '<b><a href=index.php?plik=rowery&grupa=' . ($j+1) . ' ><div class="page-num">' . ($j+1) . ' </div></a></b>';
        }
        echo '<div class="dots"><b>..</b></div>';
        if($grupa<$ilegrup){echo '<a href="index.php?plik=rowery&grupa=' . ($grupa+1) . '"><div class="prev-next"> <b>></b> </div></a>';}
        ?>

        </div> 


    </div> 




    
    


</div>