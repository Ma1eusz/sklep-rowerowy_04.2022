<HTML>
    <HEAD>
        <title>BASSO</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script>
        const
	        range = document.getElementById('range'),
	        rangeV = document.getElementById('rangeV'),
	        setValue = ()=>{
		        const
			        newValue = Number( (range.value - range.min) * 100 / (range.max - range.min) ),
			        newPosition = 10 - (newValue * 0.2);
		            rangeV.innerHTML = `<span>${range.value}</span>`;
		            rangeV.style.left = `calc(${newValue}% + (${newPosition}px))`;
	        };
            document.addEventListener("DOMContentLoaded", setValue);
            range.addEventListener('input', setValue);
        </script>
        <link rel="stylesheet" type="text/css" href="main.css">
        <link rel = "icon" type = "image/png" href = "images/logo.jpg">
    </HEAD>

    <?php
        include("funkcje.php");
    ?>
    <?php
        // include 'conf.php';
        // session_start();
        // $user_id = $_SESSION['user_id'];

        // if(!isset($user_id))
        //     header('location:index.php?plik=login')
    ?>
    <body>
        <div id="all">
            <?php
                include("head.php");
            ?>
            <?php
                if(!isset($_GET['plik'])) {$plik = 'main_page';}
                else{$plik = $_GET['plik'];}
                $roz = '.php';
                include("$plik$roz");
            ?>
            <?php
                include("footer.php");
            ?>
    
        </div>
    </body>
</HTML>