<div class="all">
    <div class="title2">SZUKANE
        >>
        <?php
            require("conf.php");
            $nazwa = $_POST['nazwa'];
            echo $nazwa ;        
            ?> 
      </div>
    <div class="pasek"></div><br><br>

<div class="filters-container">
    <div class="filters">
        Szukaj po nazwie
        <form method="post" action="index.php?plik=szukaj">
            <input type="text" name="nazwa" class="searchTerm" placeholder="Wpisz nazwę..">
            <button type="submit" class="SearchBtn">
                Szukaj
            </button>
        </form>
    </div>
    <div class="filters">
        KATEGORIE
        <form type="action">
            <input type="search" placeholder="Wpisz nazwę modelu">
            <input type="submit" value="Szukaj">
        </form>     
    </div>
    <div class="filters">
        CENA
        <form type="action">
            <input type="search" placeholder="Wpisz nazwę modelu">
            <input type="submit" value="Szukaj">
        </form>
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
        $nazwa = $_POST['nazwa'];
        $wynik = mysqli_query($conn, "SELECT * FROM bikes WHERE name_bikes OR brand_bikes LIKE '%$nazwa%'  LIMIT $pomin,$poile");
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
        if ($wynik = null){
            echo 'Nie znaleziono żadnego produktu spełniającego wybrane kryteria';
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

