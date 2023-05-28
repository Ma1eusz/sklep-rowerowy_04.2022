-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 18 Maj 2022, 23:02
-- Wersja serwera: 10.4.17-MariaDB
-- Wersja PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `basso`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `bikes`
--

CREATE TABLE `bikes` (
  `id_bikes` int(3) NOT NULL,
  `brand_bikes` varchar(20) NOT NULL,
  `name_bikes` varchar(255) NOT NULL,
  `price_bikes` int(10) NOT NULL,
  `color_bikes` varchar(50) NOT NULL,
  `size_bikes` varchar(1) NOT NULL,
  `desc_bikes` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `category_bikes` int(2) NOT NULL,
  `gears_bikes` int(2) NOT NULL,
  `weight_bikes` decimal(10,2) NOT NULL,
  `wheel_bikes` varchar(50) NOT NULL,
  `saddle_bikes` varchar(50) NOT NULL,
  `year_bikes` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `bikes`
--

INSERT INTO `bikes` (`id_bikes`, `brand_bikes`, `name_bikes`, `price_bikes`, `color_bikes`, `size_bikes`, `desc_bikes`, `category_bikes`, `gears_bikes`, `weight_bikes`, `wheel_bikes`, `saddle_bikes`, `year_bikes`) VALUES
(1, 'BASSO', 'Astra Disc Chorus', 12000, 'jasnoszary', 'M', '<p>Od prawie 30 lat model Astra jest ręcznie wykonywany w fabryce Basso w północno-wschodnich Włoszech. Najnowszy w tej długiej linii prestiżowych opraw jest tym, z którego cała załoga Basso jest bardzo dumna. Reprezentuje on skumulowaną wiedzę i doświadczenie zdobyte podczas budowy pięciu poprzednich modeli.</p><br>\r\n\r\n<p>2021 Astra idzie dalej niż jakakolwiek poprzednia wersja i robi to z dużą dawką stylu. Najnowsza wersja modelu Astra, produkowana w całości w firmie przez doświadczonych pracowników Basso, została wyposażona w szereg technologii zaczerpniętych z jej rodzeństwa z najwyższej półki i charakteryzuje się stylistyką, która jest jeszcze bliższa rodzinie niż kiedykolwiek wcześniej.</p><br>\r\n\r\n<p>Astra łączy sprawdzoną i przetestowaną przez rowerzystów geometrię Basso z pomysłową strukturą rur, która zapewnia większą wydajność zarówno w formie, jak i funkcji. Oprócz aerodynamiki zapewnianej przez profile rurowe, nowy model jest również bardziej wydajny dzięki funkcjonalnym właściwościom struktury węglowej.</p><br>\r\n\r\n<p>Większa i masywniejsza główka ramy łączy się z niezwykle wydajną rurą dolną, która dodatkowo została wzmocniona specjalnym kształtem. Obie rury połączone z całkowicie przeprojektowanymi goleniami łańcuchowymi zapewniają fantastyczne przeniesienie mocy poprzez solidny, responsywny zespół dolnej rury (główka ramy, dolna rura, golenie łańcuchowe).</p>', 1, 22, '8.36', 'Dysk Microtech RE38', 'Selle Italia Novus Boost Evo SuperFlow', 2022),
(2, 'BASSO', 'Diamente SV Disc', 11999, 'biały', 'M', '<p>W naturze diament powstaje w wyniku wieloletnich nacisków, w wyniku których powstaje drogocenny klejnot, którego piękno i ponadczasowość nie znają rywala. Basso Diamante jest również wynikiem wielu lat ciężkiej pracy, badań i nacisków, aby stworzyć najlepszy rower szosowy, który jest ponadczasowy nie tylko pod względem osiągów i niezawodności, ale również kształtu i piękna.</p><br>\r\n\r\n<p>Wykonany ręcznie we Włoszech przez Basso, Diamante jest prawdziwą reprezentacją tego, czym powinien być klasyczny, autentyczny włoski rower szosowy. Wykorzystując wyłącznie najlepsze, wysokomodułowe włókno węglowe Toray, inżynierowie Basso opracowali ramę, która oferuje wydajne osiągi i jest odporna na każdy teren. Kształt rur i warstwy karbonu pozwalają na uzyskanie responsywnej ramy z ugięciem dolnego wspornika wynoszącym zaledwie 0,4 mm i skręceniem główki ramy na zadziwiająco niskim poziomie 0,2 mm. Stanowi to poprawę o 50% w stosunku do poprzednich modeli. Nowa rama, dostępna zarówno w wersji z tarczą, jak i z obręczą, została zoptymalizowana pod kątem opon o średnicy do 28 mm, co jeszcze bardziej zwiększa wszechstronność Diamante.</p><br>\r\n\r\n<p>Sprawdzona geometria Basso została połączona z eleganckim przodem, który pozwala elastycznemu rowerzyście na przyjęcie ekstremalnie agresywnej pozycji, a jednocześnie pozwala bardziej wyprostowanemu rowerzyście na bardziej kompaktowy przód. Jeśli wygląd jest dobry, to Diamante wygrał bitwę, ponieważ każde włókno zostało zaprojektowane tak, aby poruszać się szybciej i wydajniej. Jego kształt jest przykładem niezaprzeczalnego włoskiego designu i klasy. Funkcjonalne piękno i funkcjonalność: Basso Diamante.</p><br>\r\n\r\n<p>Diamante podąża śladami swoich poprzedników. Wszystkie one należą do kategorii pożądanych rowerów szosowych. Klasyczne linie, nieskazitelna geometria i zaokrąglone kształty rur łączą się w całość, która ma na celu zapewnienie wygrywających wyścigi osiągów i trwałości, aby stworzyć doskonałe narzędzie do pracy, bez względu na to gdzie, jak i w jakim terenie jeździsz.</p><br>', 1, 22, '7.92', 'DT Swiss ARC 1100DB', 'Selle Italia Flite Boost Carbon', 2022),
(3, 'BASSO', 'Diamante SV Dura-Ace', 50539, 'fioletowy', 'L', '<p>W naturze diament powstaje w wyniku wieloletnich nacisków, w wyniku których powstaje drogocenny klejnot, którego piękno i ponadczasowość nie znają rywala. Basso Diamante jest również wynikiem wielu lat ciężkiej pracy, badań i nacisków, aby stworzyć najlepszy rower szosowy, który jest ponadczasowy nie tylko pod względem osiągów i niezawodności, ale również kształtu i piękna.</p><br>\r\n\r\n<p>Wykonany ręcznie we Włoszech przez Basso, Diamante jest prawdziwą reprezentacją tego, czym powinien być klasyczny, autentyczny włoski rower szosowy. Wykorzystując wyłącznie najlepsze, wysokomodułowe włókno węglowe Toray, inżynierowie Basso opracowali ramę, która oferuje wydajne osiągi i jest odporna na każdy teren. Kształt rur i warstwy karbonu pozwalają na uzyskanie responsywnej ramy z ugięciem dolnego wspornika wynoszącym zaledwie 0,4 mm i skręceniem główki ramy na zadziwiająco niskim poziomie 0,2 mm. Stanowi to poprawę o 50% w stosunku do poprzednich modeli. Nowa rama, dostępna zarówno w wersji z tarczą, jak i z obręczą, została zoptymalizowana pod kątem opon o średnicy do 28 mm, co jeszcze bardziej zwiększa wszechstronność Diamante.</p><br>\r\n\r\n<p>Sprawdzona geometria Basso została połączona z eleganckim przodem, który pozwala elastycznemu rowerzyście na przyjęcie ekstremalnie agresywnej pozycji, a jednocześnie pozwala bardziej wyprostowanemu rowerzyście na bardziej kompaktowy przód. Jeśli wygląd jest dobry, to Diamante wygrał bitwę, ponieważ każde włókno zostało zaprojektowane tak, aby poruszać się szybciej i wydajniej. Jego kształt jest przykładem niezaprzeczalnego włoskiego designu i klasy. Funkcjonalne piękno i funkcjonalność: Basso Diamante.</p><br>\r\n\r\n<p>Diamante podąża śladami swoich poprzedników. Wszystkie one należą do kategorii pożądanych rowerów szosowych. Klasyczne linie, nieskazitelna geometria i zaokrąglone kształty rur łączą się w całość, która ma na celu zapewnienie wygrywających wyścigi osiągów i trwałości, aby stworzyć doskonałe narzędzie do pracy, bez względu na to gdzie, jak i w jakim terenie jeździsz.</p><br>', 1, 22, '7.65', 'Campagnolo Bora WTO Dark 45', 'Selle Italia Flite Boost Carbon', 2022),
(4, 'BASSO', 'Astra Disc Ultegra', 16599, 'pomarańczowy', 'S', '<p>Od prawie 30 lat model Astra jest ręcznie wykonywany w fabryce Basso w północno-wschodnich Włoszech. Najnowszy w tej długiej linii prestiżowych opraw jest tym, z którego cała załoga Basso jest bardzo dumna. Reprezentuje on skumulowaną wiedzę i doświadczenie zdobyte podczas budowy pięciu poprzednich modeli.</p><br>\r\n\r\n<p>2021 Astra idzie dalej niż jakakolwiek poprzednia wersja i robi to z dużą dawką stylu. Najnowsza wersja modelu Astra, produkowana w całości w firmie przez doświadczonych pracowników Basso, została wyposażona w szereg technologii zaczerpniętych z jej rodzeństwa z najwyższej półki i charakteryzuje się stylistyką, która jest jeszcze bliższa rodzinie niż kiedykolwiek wcześniej.</p><br>\r\n\r\n<p>Astra łączy sprawdzoną i przetestowaną przez rowerzystów geometrię Basso z pomysłową strukturą rur, która zapewnia większą wydajność zarówno w formie, jak i funkcji. Oprócz aerodynamiki zapewnianej przez profile rurowe, nowy model jest również bardziej wydajny dzięki funkcjonalnym właściwościom struktury węglowej.</p><br>\r\n\r\n<p>Większa i masywniejsza główka ramy łączy się z niezwykle wydajną rurą dolną, która dodatkowo została wzmocniona specjalnym kształtem. Obie rury połączone z całkowicie przeprojektowanymi goleniami łańcuchowymi zapewniają fantastyczne przeniesienie mocy poprzez solidny, responsywny zespół dolnej rury (główka ramy, dolna rura, golenie łańcuchowe).</p>', 1, 22, '8.46', 'Microtech MR Lite', 'Selle Italia Novus Boost Evo SuperFlow', 2022),
(5, 'ORBEA', 'Occam M30-Eagle', 20599, 'miętowy', 'S', '<p>Twoi kumple szykują się na gorące rowerowe przygody, gdy Ty zapraszasz ich na spokojną wycieczkę? Czy Twoje ulubione okrążenia zawsze prowadzą Cię ścieżkami, których nie znajdziesz na żadnej mapie? Twoje wycieczki zaczynają się wraz z pierwszymi promieniami słońca, a kończą wspólnym piwem po zachodzie słońca? Twój rower musi robić wszystko i zawsze być Twoim wiernym towarzyszem Czy jesteś dokładnie tym typem rowerzysty górskiego, o którym tutaj mówimy? W takim razie Orbea Occam jest idealnym rowerem dla Ciebie!</p><br>\r\n\r\n<p>\r\nOznacza bardziej płaski kąt główki sterowej, co zapewnia większą stabilność. Nisko umieszczona korba pedałów pozwala na bardziej naturalne skręty, a dłuższy kokpit daje większą swobodę ruchów i lepszą równowagę. Dłuższy środkowy rozstaw kół Occam daje większą stabilność przy dużych prędkościach, a wyższy kąt nachylenia siodełka pozwala na przyjęcie bardziej odpowiedniej pozycji podczas pedałowania.</p><br>\r\n\r\n<p>\r\nRamy OMR (Orbea Monocoque Race) są jedynymi, które łączą włókna o wysokim module sprężystości z włóknami o wysokiej wytrzymałości.\r\nArkusze prepreg z wstępnie impregnowanego węgla są przycinane laserowo na wymiar, aby zminimalizować nadmiar, zanim długi proces wstępnego formowania osiągnie optymalne zagęszczenie przy użyciu jak najmniejszej ilości materiału.\r\nDzięki temu, że forma składa się w całości z polistyrenu ekspandowanego (EPS), unika się fałd i wgłębień.</p><br>\r\n\r\n<p>\r\nPrawy wspornik konsoliduje i usztywnia obszar narażony na duże naprężenia. Zamiast mniej efektywnego \"tunelu wstrząsów\", konstrukcja Occam\'s przekierowuje wstrząsy na lewą stronę ramy, dzięki czemu asymetryczne wsparcie ma bardziej bezpośrednią drogę. Ta prosta linia prowadząca za zespołem amortyzatorów jest najskuteczniejszym sposobem neutralizacji sił działających na zawieszenie w przednim trójkącie.</p><br>', 2, 12, '13.87', 'Race Face AR 30c Tubeless Ready', 'Fizik Taiga S-alloy', 2022),
(6, 'ORBEA', 'Process 134 DL', 20249, 'pomarańczowwy', 'M', '<p>Twoi kumple szykują się na gorące rowerowe przygody, gdy Ty zapraszasz ich na spokojną wycieczkę? Czy Twoje ulubione okrążenia zawsze prowadzą Cię ścieżkami, których nie znajdziesz na żadnej mapie? Twoje wycieczki zaczynają się wraz z pierwszymi promieniami słońca, a kończą wspólnym piwem po zachodzie słońca? Twój rower musi robić wszystko i zawsze być Twoim wiernym towarzyszem Czy jesteś dokładnie tym typem rowerzysty górskiego, o którym tutaj mówimy? W takim razie Orbea Occam jest idealnym rowerem dla Ciebie!</p><br>\r\n\r\n<p>\r\nOznacza bardziej płaski kąt główki sterowej, co zapewnia większą stabilność. Nisko umieszczona korba pedałów pozwala na bardziej naturalne skręty, a dłuższy kokpit daje większą swobodę ruchów i lepszą równowagę. Dłuższy środkowy rozstaw kół Occam daje większą stabilność przy dużych prędkościach, a wyższy kąt nachylenia siodełka pozwala na przyjęcie bardziej odpowiedniej pozycji podczas pedałowania.</p><br>\r\n\r\n<p>\r\nRamy OMR (Orbea Monocoque Race) są jedynymi, które łączą włókna o wysokim module sprężystości z włóknami o wysokiej wytrzymałości.\r\nArkusze prepreg z wstępnie impregnowanego węgla są przycinane laserowo na wymiar, aby zminimalizować nadmiar, zanim długi proces wstępnego formowania osiągnie optymalne zagęszczenie przy użyciu jak najmniejszej ilości materiału.\r\nDzięki temu, że forma składa się w całości z polistyrenu ekspandowanego (EPS), unika się fałd i wgłębień.</p><br>\r\n\r\n<p>\r\nPrawy wspornik konsoliduje i usztywnia obszar narażony na duże naprężenia. Zamiast mniej efektywnego \"tunelu wstrząsów\", konstrukcja Occam\'s przekierowuje wstrząsy na lewą stronę ramy, dzięki czemu asymetryczne wsparcie ma bardziej bezpośrednią drogę. Ta prosta linia prowadząca za zespołem amortyzatorów jest najskuteczniejszym sposobem neutralizacji sił działających na zawieszenie w przednim trójkącie.</p><br>', 2, 12, '15.28', 'Maxxis Minion DHF 3C Maxx Terra / EXO / TR', 'WTB Volt Steel SL', 2021),
(7, 'ORBEA', 'Oiz H10 TR', 17999, 'czarny', 'L', '<p>Twoi kumple szykują się na gorące rowerowe przygody, gdy Ty zapraszasz ich na spokojną wycieczkę? Czy Twoje ulubione okrążenia zawsze prowadzą Cię ścieżkami, których nie znajdziesz na żadnej mapie? Twoje wycieczki zaczynają się wraz z pierwszymi promieniami słońca, a kończą wspólnym piwem po zachodzie słońca? Twój rower musi robić wszystko i zawsze być Twoim wiernym towarzyszem Czy jesteś dokładnie tym typem rowerzysty górskiego, o którym tutaj mówimy? W takim razie Orbea Occam jest idealnym rowerem dla Ciebie!</p><br>\r\n\r\n<p>\r\nOznacza bardziej płaski kąt główki sterowej, co zapewnia większą stabilność. Nisko umieszczona korba pedałów pozwala na bardziej naturalne skręty, a dłuższy kokpit daje większą swobodę ruchów i lepszą równowagę. Dłuższy środkowy rozstaw kół Occam daje większą stabilność przy dużych prędkościach, a wyższy kąt nachylenia siodełka pozwala na przyjęcie bardziej odpowiedniej pozycji podczas pedałowania.</p><br>\r\n\r\n<p>\r\nRamy OMR (Orbea Monocoque Race) są jedynymi, które łączą włókna o wysokim module sprężystości z włóknami o wysokiej wytrzymałości.\r\nArkusze prepreg z wstępnie impregnowanego węgla są przycinane laserowo na wymiar, aby zminimalizować nadmiar, zanim długi proces wstępnego formowania osiągnie optymalne zagęszczenie przy użyciu jak najmniejszej ilości materiału.\r\nDzięki temu, że forma składa się w całości z polistyrenu ekspandowanego (EPS), unika się fałd i wgłębień.</p><br>\r\n\r\n<p>\r\nPrawy wspornik konsoliduje i usztywnia obszar narażony na duże naprężenia. Zamiast mniej efektywnego \"tunelu wstrząsów\", konstrukcja Occam\'s przekierowuje wstrząsy na lewą stronę ramy, dzięki czemu asymetryczne wsparcie ma bardziej bezpośrednią drogę. Ta prosta linia prowadząca za zespołem amortyzatorów jest najskuteczniejszym sposobem neutralizacji sił działających na zawieszenie w przednim trójkącie.</p><br>', 2, 12, '13.49', 'Race Face AR 30c Tubeless Ready', 'WTB Volt Steel SL', 2021),
(8, 'NORCO', 'Aurum HSP C2', 21599, 'zielony', 'X', '<p>Twoi kumple szykują się na gorące rowerowe przygody, gdy Ty zapraszasz ich na spokojną wycieczkę? Czy Twoje ulubione okrążenia zawsze prowadzą Cię ścieżkami, których nie znajdziesz na żadnej mapie? Twoje wycieczki zaczynają się wraz z pierwszymi promieniami słońca, a kończą wspólnym piwem po zachodzie słońca? Twój rower musi robić wszystko i zawsze być Twoim wiernym towarzyszem Czy jesteś dokładnie tym typem rowerzysty górskiego, o którym tutaj mówimy? W takim razie Orbea Occam jest idealnym rowerem dla Ciebie!</p><br>\r\n\r\n<p>\r\nOznacza bardziej płaski kąt główki sterowej, co zapewnia większą stabilność. Nisko umieszczona korba pedałów pozwala na bardziej naturalne skręty, a dłuższy kokpit daje większą swobodę ruchów i lepszą równowagę. Dłuższy środkowy rozstaw kół Occam daje większą stabilność przy dużych prędkościach, a wyższy kąt nachylenia siodełka pozwala na przyjęcie bardziej odpowiedniej pozycji podczas pedałowania.</p><br>\r\n\r\n<p>\r\nRamy OMR (Orbea Monocoque Race) są jedynymi, które łączą włókna o wysokim module sprężystości z włóknami o wysokiej wytrzymałości.\r\nArkusze prepreg z wstępnie impregnowanego węgla są przycinane laserowo na wymiar, aby zminimalizować nadmiar, zanim długi proces wstępnego formowania osiągnie optymalne zagęszczenie przy użyciu jak najmniejszej ilości materiału.\r\nDzięki temu, że forma składa się w całości z polistyrenu ekspandowanego (EPS), unika się fałd i wgłębień.</p><br>\r\n\r\n<p>\r\nPrawy wspornik konsoliduje i usztywnia obszar narażony na duże naprężenia. Zamiast mniej efektywnego \"tunelu wstrząsów\", konstrukcja Occam\'s przekierowuje wstrząsy na lewą stronę ramy, dzięki czemu asymetryczne wsparcie ma bardziej bezpośrednią drogę. Ta prosta linia prowadząca za zespołem amortyzatorów jest najskuteczniejszym sposobem neutralizacji sił działających na zawieszenie w przednim trójkącie.</p><br>', 2, 7, '16.85', 'Novatech', 'Truvativ Descendant', 2022),
(9, 'NORCO', 'Trekking 9 Trapeze', 18899, 'szary', 'L', '<p>Większy komfort nie jest możliwy: Dzięki wyjątkowo niskiemu stopniowi wejścia w nowym rowerze Trekking 9 Lowstep wsiadanie i zsiadanie z roweru jest wyjątkowo szybkie i bezpieczne. Ten trekkingowy eBike jest idealnym towarzyszem nie tylko podczas wycieczek po mieście na zakupy, ale także podczas dłuższych, wielodniowych wypraw. Wyposażony w nowy, kompaktowy silnik Bosch Performance CX Gen 4, amortyzowany widelec SR Suntour, niezawodne przerzutki Shimano Deore oraz opony o dużej objętości 27,5, możesz cieszyć się wieloma godzinami relaksu w siodle.</p><br> ', 3, 11, '25.79', 'Ursus Mooi', 'Haibike Components TheSaddle', 2021),
(10, 'NORCO', 'Urbanicer 20.ESU', 6039, 'czarny', 'M', '<p>Małe, inteligentne, składane. Trudno o bardziej praktyczny i elastyczny rower elektryczny niż PROPHETE URBANICER. Jako 20-calowy rower składany stanowi w wielu sytuacjach doskonałe uzupełnienie samochodu. W mieście i wszędzie tam, gdzie miejsca parkingowe są rzadkie lub stale zajęte, wystarczy zaparkować nieco poza strefą problematyczną, a ostatnie kilka metrów pokonać na rowerze elektrycznym w całkowitym relaksie. A jeśli nie chcesz się obyć bez swojego roweru elektrycznego podczas podróży, po prostu zapakuj tego małego towarzysza do samochodu lub kampera.</p><br>\r\n\r\n<p>Zacznijmy od porządnej porcji radości z jazdy. Napęd na przednie koła firmy BLAUPUNKT zapewnia moment obrotowy do 30 Nm i jest zasilany przez akumulator bagażnika AEG o pojemności 317 Wh. Takie połączenie pozwala na uzyskanie zasięgu do 80 km, co w zupełności wystarcza do jazdy po mieście lub do zwiedzania miejsc wakacyjnych. Sprawdzona i niezawodna przekładnia NEXUS w piaście SHIMANO oferuje trzy harmonijnie dopasowane biegi. Dzięki bardzo długiemu wspornikowi siodła mały rower URBANICER jest odpowiedni także dla wyższych rowerzystów. Oczywiście, ten inteligentny towarzysz nie zaniedbuje kwestii bezpieczeństwa - na przykład. Na przykład z mocnym hamulcem typu V-brake, hamulcem postojowym, przednim i tylnym światłem LED z funkcją światła postojowego oraz odblaskowymi oponami zapewniającymi widoczność.</p><br>', 3, 3, '24.50', 'Prophete 30 Lux', 'Prophete Ultra Wide', 2020);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `categories`
--

CREATE TABLE `categories` (
  `id_categories` int(2) NOT NULL,
  `name_categories` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `categories`
--

INSERT INTO `categories` (`id_categories`, `name_categories`) VALUES
(1, 'szosowe'),
(2, 'górskie'),
(3, 'e-bike');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `products`
--

CREATE TABLE `products` (
  `id_products` int(3) NOT NULL,
  `name_products` varchar(255) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `price_products` decimal(10,2) NOT NULL,
  `desc_products` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `category_products` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `products`
--

INSERT INTO `products` (`id_products`, `name_products`, `price_products`, `desc_products`, `category_products`) VALUES
(4, 'PD-M520 Pedały SPD', '200.00', '<p>Od dziesięcioleci SPD i SPD-SL wyznaczają standardy w produkcji butów i pedałów rowerowych, podczas gdy inni producenci z trudem próbują za nimi nadążać. Legendarne technologie i doskonałe procesy produkcyjne wyróżniają Shimano na tle konkurencji. Eksperci w dziedzinie obuwia współpracują bezpośrednio z inżynierami z zakresu produkcji pedałów, aby uzyskać optymalne połączenie pedałów i obuwia, które integruje najnowsze osiągnięcia w biomechanice rowerowej, konstrukcje materiałowe oraz wydajne, wytrzymałe systemy SPD i SPD-SL.</p><br>\r\n\r\n<p>Opracowane razem. Przetestowane razem. Potężne razem. Kombinacje butów i pedałów SPD i SPD-SL tworzą zintegrowaną platformę dostarczania mocy, opartą na filozofii projektowania, polegającej na znalezieniu optymalnego dopasowania, aby sprostać wymaganiom w zakresie wydajności i komfortu każdego kolarza.</p><br>\r\n\r\n<p>Dla profesjonalnego kolarza: Optymalne przenoszenie mocy. Dla rowerowego entuzjasty: Szybsze, dłuższe podróże z większym komfortem. Dla zrelaksowanego rowerzysty.... dodamy tylko, że jeśli wszystko działa w harmonii ze sobą, to jest to jeszcze przyjemniejsze!</p><br>\r\n\r\n<p>\r\nFirma Shimano opracowała SPD, aby zaspokoić potrzeby szybko rozwijającej się nowej grupy zwanej \"Rowerzyści górscy\". Pomijając haki i paski oraz integrując pedał i podeszwę buta w jeden wspólny element przenoszący moc, Shimano zmienił świat kolarstwa. Przyczyniło się to nie tylko do efektywnego przekładania mocy, ale także na lepszą kontrolę kolarza nad jednośladem w coraz bardziej wyrafinowanych dyscyplinach kolarskich. Tymczasem nie ma już jednego uniwersalnego stylu MTB i w związku z tym nie ma już tylko jednego pedału SPD. W zależności od typu terenu: od szybkich wyścigów XC po strome, kamieniste, mokre i błotniste trasy. Pedały Shimano SPD nie tylko nadążają - są również siłą napędową. Projekt pedału buta wciąż jest rozwijany, aby sprostać potrzebom indywidualnego stylu jazdy, ale nadal oferuje sprawdzoną niezawodność i trwałość w terenie.</p><br>', '2'),
(5, 'Super 3R MIPS Kask rowerowy', '1020.00', '<p>Optymalne wyposażenie szlaku dostosowuje się do zmieniającego się terenu. To jest główna idea Super 3R. Został on opracowany z myślą o najróżniejszych wymaganiach związanych z jazdą wysokogórską, takich jak długie, męczące podjazdy z niską prędkością lub ostre zjazdy na nierównych szlakach.</p><br>\r\n\r\n<p>Zdejmowana osłona podbródka sprawia, że Super 3R to doskonały kask all mountain. Bo tak naprawdę masz dwa hełmy w jednym. Wystarczy zdjąć osłonę podbródka podczas długich wspinaczek i włożyć ją do plecaka. W przypadku bardziej agresywnych gąsienic można je założyć z powrotem szybko i bez użycia narzędzi. Zestaw Float Fit System jest lżejszy i wygodniejszy dzięki gumowanej tarczy oraz najnowszym super łatwym do regulacji ślizgom No-Twist Tri Glides.</p><br>\r\n\r\n<p>Inne cechy charakterystyczne dla szlaków to regulowany system celownika prowadzącego w goglach, mocowanie kamery chroniącej przed zerwaniem oraz wentylacja nadbudówki. Super 3R posiada również MIPS (Multi- directional Impact Protection System), który może zapewnić dodatkową ochronę w niektórych scenariuszach uderzenia.</p><br>', '2'),
(7, 'P-Attitude Hybrid Jacket Women', '329.00', 'sdasd', '2'),
(8, 'Beavertail Błotniki zestaw 26-28', '67.00', 'asdasd', '2');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id_users` int(100) NOT NULL,
  `name_users` varchar(100) NOT NULL,
  `email_users` varchar(100) NOT NULL,
  `password_users` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id_users`, `name_users`, `email_users`, `password_users`) VALUES
(3, 'mati', 'mati@gmail.com', 'b31b9b6bfd41ae0e02ad82fc005bfc65'),
(4, '123', '123@gm', '202cb962ac59075b964b07152d234b70'),
(5, '123', '123@g', '202cb962ac59075b964b07152d234b70'),
(6, '123123', '123@qwwe', '202cb962ac59075b964b07152d234b70'),
(7, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `bikes`
--
ALTER TABLE `bikes`
  ADD PRIMARY KEY (`id_bikes`);

--
-- Indeksy dla tabeli `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categories`);

--
-- Indeksy dla tabeli `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_products`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `bikes`
--
ALTER TABLE `bikes`
  MODIFY `id_bikes` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `categories`
--
ALTER TABLE `categories`
  MODIFY `id_categories` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `products`
--
ALTER TABLE `products`
  MODIFY `id_products` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
