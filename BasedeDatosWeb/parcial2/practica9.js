$(document).ready(function (){
    let cartas = new Array(54).fill(false);
    $("#dar_carta").click(function (){
        var b = true;
        var cont = 0;
        while(b){
            var num = Math.floor(Math.random()*54) + 1;
            console.log("Numero de carta= "+num);
            console.log(cartas[num-1]);
            if(cartas[num-1] == true){
                continue;
            } else {
                console.log("dihvf");
                $("#carta_activa").html("<img src='loteria/"+num+".jpg'>");
                cartas[num-1] = true;
                b=false;
                cont++;
            }
            if(cont == 54){
                console.log("ya se presentaron todas las cartas");
                b=false;
            }
        }
    });
    cargarCART();
    function cargarCART(){
        var carta1 = 0;
        var carta2 = 0;
        let asignadas = new Array(54).fill(false);

        while(carta1 < 16){
            var num = Math.floor(Math.random()*54) + 1;
            if(asignadas[num-1] == false){
                $("#carta1").append("<div class='col-sm-3'><img class='img-fluid' src='loteria/"+num+".jpg'></div>");
                asignadas[num-1] = true;
                carta1++;
            } else {
                continue;
            }
        }

        asignadas = new Array(54).fill(false);

        while(carta2 < 16){
            var num = Math.floor(Math.random()*54) + 1;
            if(asignadas[num-1] == false){
                $("#carta2").append("<div class='col-sm-3'><img class='img-fluid' src='loteria/"+num+".jpg'></div>");
                asignadas[num-1] = true;
                carta2++;
            } else {
                continue;
            }
        }
    }
    
});