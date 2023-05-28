<div id="all">
    

    <?php 
        require("conf.php");
        $nr= $_GET["nr"];
        $wynik = mysqli_query($conn, "SELECT * FROM bikes WHERE id_bikes=$nr");
        $wiersz = mysqli_fetch_array($wynik);

        echo '<div class="desc-contener">';
            echo '<div class="desc-img">';
                echo '<img src="bikes/' . $wiersz["id_bikes"] . '.jpg" width="500px">';
            echo '</div>';

            echo '<div class="desc-dane">';
                echo '<b><font size="6pt">'. $wiersz["name_bikes"] . '</font></b><br><br>';
                echo '<font size="4pt"><b>Kolor:</b> ' . $wiersz["color_bikes"] . '</font><br><br>';
                echo '<font size="4pt"><b>Rozmiar:</b> ' . $wiersz["size_bikes"] . '</font><br><br>';
                echo '<b><font size="7">' . $wiersz["price_bikes"] . ' zł</font></b><br><br>';
                

                echo '<a href="#"><div class="dodaj-do-koszyka">';
                    echo 'DODAJ DO KOSZYKA';
                echo '</div></a><br>';

                echo '<div class="zwrot">';
                    echo '<div class="zwrot-img"><img src="icons/dostawa.svg" width="35px"></div>';
                    echo '<div class="zwrot-napis">Darmowy zwrot</div>';
                    echo '<div class="zwrot-szczegoly"><a href="#">Szczegóły</a></div>';
                echo '</div><br>';
                echo '<div class="zwrot">';
                    echo '<div class="zwrot-img"><img src="icons/gwarancja.svg" width="35px"></div>';
                    echo '<div class="zwrot-napis">Gwarancja</div>';
                    echo '<div class="gwarancja-szczegoly"><a href="#">Sprawdź</a></div>';
                echo '</div>';
            echo '</div>';
        echo '</div>';
echo '<div id="1"></div>';
        echo '<div class="desc-nav-border">';
            echo '<div class="desc-nav">';
                echo '<a href="#1"><div class="desc-nav-button1">Opis produktu</div></a>';
                echo '<a href="#2"><div class="desc-nav-button">Specyfikacje</div></a>';
                echo '<a href="#3"><div class="desc-nav-button">Oceny użytkowników</div></a>';
            echo '</div>';
        echo '</div>';

        echo '<div class="desc-opis-contener">';
            echo '<div class="desc-napis-opis">Opis ' . $wiersz["name_bikes"] . '</div>';
            echo '<div class="desc-opis">';
                echo $wiersz["desc_bikes"];
                echo '<div id="2"></div>';
            echo '</div>';
        echo '</div>';

        echo '<div class="desc-specyfikacje-contener">';
            echo '<div class="desc-napis-opis">Specyfikacje</div>';

            echo '<div class="desc-specyfikacje">';

                echo '<div class="desc-spec-contener">';
                    echo '<div class="desc-tytul">Łączna liczba biegów</div>';
                    echo '<div class="desc-spec">' . $wiersz["gears_bikes"] . '</div>';
                echo '</div>';

                echo '<div class="desc-spec-contener">';
                    echo '<div class="desc-tytul">Waga (szacunkowa)</div>';
                    echo '<div class="desc-spec">' . $wiersz["weight_bikes"] . ' kg</div>';
                echo '</div>';
                
                echo '<div class="desc-spec-contener">';
                    echo '<div class="desc-tytul">Koła</div>';
                    echo '<div class="desc-spec">' . $wiersz["wheel_bikes"] . '</div>';
                echo '</div>';

                echo '<div class="desc-spec-contener">';
                    echo '<div class="desc-tytul">Siodełko</div>';
                    echo '<div class="desc-spec">' . $wiersz["saddle_bikes"] . '</div>';
                echo '</div>';

                echo '<div class="desc-spec-contener">';
                    echo '<div class="desc-tytul">Rok produkcji</div>';
                    echo '<div class="desc-spec">' . $wiersz["year_bikes"] . '</div>';
                echo '</div>';
            echo '</div>';

        echo '</div>';
    ?>

</div>

</div>