<?php

    $aciertos = 0;
    $pregunta1 = $_POST["pregunta1"];
    $pregunta2 = $_POST["pregunta2"];
    $pregunta3 = $_POST["pregunta3"];

    //valida pregunta 1 1. ¿Lenguaje de programación que manipula direcciones arbitarias?
    //echo "<h3> ¿Lenguaje de programación que manipula direcciones arbitarias? </h3>";
    //echo "<h5>Repuesta seleccionada ".$pregunta1." ---- Correcta = C</h5>";
    echo "<h4>Calificacion EXAMEN </h4>";
    if($pregunta1 == "C"){
        $aciertos++;
        echo "<img src='tailsthumbup.jpg' width='100px'><hr>";
    } else {
        echo "<img src='tails.jpg' width='100px'><hr>";
    }

    //Valido pregunta 2 s es una plataforma informática de servicios de transferencia de archivos informaticos basada en internet de Bending Spoon fundada en 2009.
    if(strtoupper($pregunta2) == "wetransfer"){
        $aciertos++;
    }

    //Pregunta 3 - se deben validar 2 opciones html y css
    $p3_respuestas_correctas = 0;

    if(count($pregunta3) == 2){
        for($i=0; $i<count($pregunta3); $i++){
            if($pregunta3[$i] == "html" || $pregunta3[$i] == "css"){
                $p3_respuestas_correctas ++;
            }
        }
        if($p3_respuestas_correctas == 2){
            $aciertos++;
        }
    }
    
    echo "CALIFICACIÓN FINAL = " . ($aciertos * 20) . "%";

?>