<?php

    $aciertos = 0;
    $pregunta1 = $_POST["pregunta1"];
    $pregunta2 = $_POST["pregunta2"];
    $pregunta3 = $_POST["pregunta3"];
    $pregunta4 = $_POST["pregunta4"];
    $pregunta5 = $_POST["pregunta5"];
    $pregunta6 = $_POST["pregunta6"];
    $pregunta7 = $_POST["pregunta7"];
    $pregunta7_2 = $_POST["pregunta7_2"];
    $pregunta8 = $_POST["pregunta8"];
    $pregunta9 = $_POST["pregunta9"];
    $pregunta10 = $_POST["pregunta10"];
    $fav = $_POST["fav"];

    echo "<body style='background-color: #afc4c9'>";

    echo "<img src='yayornay.gif'> <br><br>";

    echo "<h2>1. ¿Cual es la compañia en la que pertenece la franquicia de Sonic the hedgehog™? </h2>";
    echo "<h3>Repuesta seleccionada = ".$pregunta1." ---- Correcta = SEGA</h3>";
    if($pregunta1 == "SEGA"){
        $aciertos++;
        echo "<p style='color: #1a8c08'>CORRECT!!!!!! hav a chaos emerald :3</p>";
        echo "<img src='hav_achaoseme.gif' size='200px'><hr>";
    } else {
        echo "<p style='color: #ab0e0e'>WRONG!!!!! *bomb punches u*</p>";
        echo "<img src='WRONG_ANSWER.gif' size='200px'><hr>";
    }
    //------FIN de la pregunta 1 ------------------

    echo "<h2>2. _____________ es el año en el que el primer juego de Sonic fue publicado internacionalmente.</h2>";
    echo "<h3>Repuesta seleccionada = ".$pregunta2." ---- Correcta = 1991</h3>";
    if(($pregunta2) == "1991"){
        $aciertos++;
        echo "<p style='color: #1a8c08'>CORRECT!!!!!! hav a chaos emerald :3</p>";
        echo "<img src='hav_achaoseme.gif' size='200px'><hr>";
    } else {
        echo "<p style='color: #ab0e0e'>WRONG!!!!! *bomb punches u*</p>";
        echo "<img src='WRONG_ANSWER.gif' size='200px'><hr>";
    }
    //Fin de la pregunta 2 -----------------------------

    //Pregunta 3 
    echo "<h2>3. ¿Quien es el creador(a) de los personajes de Sonic the hedgehog™? (Selecciona 2)</h2>";
    echo "<h3>Repuesta seleccionada = ".implode(", ", $pregunta3)." ---- Correcta = Yuji Naka, Naoto Ohshima</h3>";
    $p3_respuestas_correctas = 0;

    if(count($pregunta3) == 2){
        for($i=0; $i<count($pregunta3); $i++){
            if($pregunta3[$i] == "yuji naka" || $pregunta3[$i] == "naoto ohshima"){
                $p3_respuestas_correctas ++;
            }
        }
        if($p3_respuestas_correctas == 2){
            $aciertos++;
            echo "<p style='color: #1a8c08'>CORRECT!!!!!! hav a chaos emerald :3</p>";
            echo "<img src='hav_achaoseme.gif' size='200px'><hr>";
        } else {
            echo "<p style='color: #ab0e0e'>WRONG!!!!! *bomb punches u*</p>";
            echo "<img src='WRONG_ANSWER.gif' size='200px'><hr>";
        }
    } else {
        echo "<p style='color: #3056f0'>You forgor the other one  or u just did it wrong </p>";
        echo "<img src='ulostmethere.gif' size='200px'><hr>";
    }
    //----------FIN pregunta 3 ------------------------------------

    echo "<h2>4. ¿Cual es el arma que sostiene Shadow the hedgehog en la intro de Shadow the Hedgehog 2005™? </h2>";
    echo "<h3>Repuesta seleccionada = ".$pregunta4." ---- Correcta = M19111A1 </h3>";
    if($pregunta4 == "M1911A1"){
        $aciertos++;
        echo "<p style='color: #1a8c08'>CORRECT!!!!!! hav a chaos emerald :3</p>";
        echo "<img src='hav_achaoseme.gif' size='200px'><hr>";
    } else {
        echo "<p style='color: #ab0e0e'>WRONG!!!!! *bomb punches u*</p>";
        echo "<img src='WRONG_ANSWER.gif' size='200px'><hr>";
    }

    echo "<h2>5. La civilizacion ___________ son quienes originalmente trajeron al universo de Sonic las 'Chaos Emeralds'. Tambien dejando atras un mundo de islas llena de misterios y estructuras historicas sobre las 'Chaos Emeralds'. E igualmente se explora sobre la capacidad de las mismas</h2>";
    echo "<h3>Repuesta seleccionada = ".$pregunta5." ---- Correcta = Ancients </h3>";
    if(($pregunta5) == "ancients" || ($pregunta5) == "ANCIENTS"){
        $aciertos++;
        echo "<p style='color: #1a8c08'>CORRECT!!!!!! hav a chaos emerald :3</p>";
        echo "<img src='hav_achaoseme.gif' size='200px'><hr>";
    } else {
        echo "<p style='color: #ab0e0e'>WRONG!!!!! *bomb punches u*</p>";
        echo "<img src='WRONG_ANSWER.gif' size='200px'><hr>";

    }

      //Pregunta 6
      echo "<h2>6. ¿Quienes fueron los personajes que derrotaron a 'The FinalHazard' es Sonic Adventure™ 2?(Selecciona 2)</h2>";
      echo "<h3>Repuesta seleccionada = ".implode(", ", $pregunta6)." ---- Correcta = Sonic the Hedgehog, Shadow the Hedgehog</h3>";
      $p6_respuestas_correctas = 0;
  
      if(count($pregunta6) == 2){
          for($i=0; $i<count($pregunta6); $i++){
              if($pregunta6[$i] == "shadow" || $pregunta6[$i] == "sonic"){
                  $p6_respuestas_correctas ++;
              }
          }
          if($p6_respuestas_correctas == 2){
              $aciertos++;
              echo "<p style='color: #1a8c08'>CORRECT!!!!!! hav a chaos emerald :3</p>";
              echo "<img src='hav_achaoseme.gif' size='200px'><hr>";
          } else {
              echo "<p style='color: #ab0e0e'>WRONG!!!!! *bomb punches u*</p>";
              echo "<img src='WRONG_ANSWER.gif' size='200px'><hr>";
          }
      } else {
          echo "<p style='color: #3056f0'>You forgor the other one  or u just did it wrong </p>";
          echo "<img src='ulostmethere.gif' size='200px'><hr>";
      }


    echo "<h2>7. ______ y _______ son el yin y el yang que mantienen el planeta en un estado estable. Es igual conocida como la personificación del alma del planeta Tierra.</h2>";
    echo "<h3>Repuesta seleccionada = ".$pregunta7.", ".$pregunta7_2." ---- Correcta = Dark Gaia y Light Gaia </h3>";
    if(($pregunta7) == "dark gaia" || ($pregunta7) == "DARK GAIA" && ($pregunta7_2) == "light gaia" || ($pregunta7_2) == "LIGHT GAIA"){
        $aciertos++;
        echo "<p style='color: #1a8c08'>CORRECT!!!!!! hav a chaos emerald :3</p>";
        echo "<img src='hav_achaoseme.gif' size='200px'><hr>";
    } else {
        echo "<p style='color: #ab0e0e'>WRONG!!!!! *bomb punches u* <br>note: if u got it correct but appears wrong it might be the order, srry idk how to code</p>";
        echo "<img src='WRONG_ANSWER.gif' size='200px'><hr>";

    }

    echo "<h2>8. Creador del ARK e investigador para la creacion de 'The Ultimate Life Form'. </h2>";
    echo "<h3>Repuesta seleccionada = ".$pregunta8." ---- Correcta = Professor Gerald Robotnik </h3>";
    if($pregunta8 == "professor"){
        $aciertos++;
        echo "<p style='color: #1a8c08'>CORRECT!!!!!! hav a chaos emerald :3</p>";
        echo "<img src='hav_achaoseme.gif' size='200px'><hr>";
    } else {
        echo "<p style='color: #ab0e0e'>WRONG!!!!! *bomb punches u*</p>";
        echo "<img src='WRONG_ANSWER.gif' size='200px'><hr>";
    }

    echo "<h2>9. Aparte del creador cientifico de Shadow the hedgehog, ¿Quien mas fue parte de la creacion de Shadow y es relevante en la historia de su juego e historia actual? </h2>";
    echo "<h3>Repuesta seleccionada = ".$pregunta9." ---- Correcta = Black Doom </h3>";
    if($pregunta9 == "doom"){
        $aciertos++;
        echo "<p style='color: #1a8c08'>CORRECT!!!!!! hav a chaos emerald :3</p>";
        echo "<img src='hav_achaoseme.gif' size='200px'><hr>";
    } if($pregunta9 == "arms"){
        echo "<p style='color: #ab0e0e'>WRONG!!!!! *bomb punches u*</p>";
        echo "<img src='WRONG_ANSWER.gif' size='200px'><hr>";
    } if($pregunta9 == "deadly six"){
        echo "<p> boi wha de hell how gonna be them LMAOOOOOOOOOOOOO </p>" ;
        echo "<img src='SOSS.jpg'width=550px; height=auto;><hr>";
    }

    echo "<h2>10. ____________fue el doctor y cientifico que ayudo a Sonic aprender sobre su velocidad, Tambien creador de los 'Power Sneakers'.</h2>";
    echo "<h3>Repuesta seleccionada = ".$pregunta10." ---- Correcta = Dr. Ivo Kintobor </h3>";
    if(($pregunta10) == "ivo kintobor" || ($pregunta10) == "IVO KINTOBOR"){
        $aciertos++;
        echo "<p style='color: #1a8c08'>CORRECT!!!!!! hav a chaos emerald :3 <br>Holy u knew, u rock for that ngl</p>";
        echo "<img src='hav_achaoseme.gif' size='200px'><hr>";
    } else {
        echo "<p style='color: #ab0e0e'>WRONG!!!!! *bomb punches u*</p>";
        echo "<img src='WRONG_ANSWER.gif' size='200px'><hr><br><br><br>";

    }
    echo "<h2> BONUSSSS ¿Quien es mi fav??????? </h2>";
    echo "<h3>Repuesta seleccionada = ".implode(", ", $fav)." ,,,,,trick answer, they all r </h3>";
    $fav_respuestas_correctas = 0;
    if($fav >= 1){
        $fav_respuestas_correctas ++;
        echo "<p>WOOOAAAAAAAAAAAAAAAAAAS!!!!</p>";
        echo "<img src=THEYALLR.gif><hr><br>";
    } else {
        echo "<p>cmon now </p>";
        echo "<img src=ulostmethere.gif><hr><br>";
    }

    echo "<h3>CALIFICACIÓN FINAL = " . ($aciertos * 10) . "%</h3>";
    if($aciertos <= 5 ){
        echo "<h2> Better luck next time WOULD SAY A LOSER!!!! </h2>";
        echo "<img src=bag.gif>";
    } if ($aciertos >= 6 ) {
        echo "<h2> WINNERSSS CORNER!!!!! U COOL SONIC KNOW-ER</h2>";
        echo "<img src=abg.gif>";
    }


?>
