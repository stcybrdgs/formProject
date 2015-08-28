// this file provides code for the Javascript (formArrys.js) to 
// generate drop menus and confirmation code for the
// JSP Form Project
// Copyright 2015, Stacy Bridges
var pManVals =  [ "Cantivlever", "Caproni", "Douglas", "Brewster" ];
var pManInner = [ "Cantilever Aero Company", "Caproni Aviation", "Douglas Aircraft", "Brewster Aeronautical" ];
var pModVals =  [ "Bullet", "Noviplano", "Devastator", "Buffalo" ];
var pModInner = [ "Christmas Bullet", "Ca.60 Noviplano", "TBD Devistator", "F2A Buffalo" ];
var pYearVals = [ "1918", "1921", "1937", "1938" ];
var cManVals =  [ "Ford", "Reliant", "Chevrolet" , "Zastava"];
var cManInner = [ "Ford Motor Company", "Reliant Motor Company", "Chevrolet Division", "Zastava Automobiles" ];
var cModVals =  [ "Edsel", "Robin", "Vega", "Yugo" ];
var cYearVals = [ "1958", "1973", "1971", "1987" ];
            
function setFormOptions(radioOpt){
    var man = document.getElementById("man");
    var mod = document.getElementById("model");
    var year = document.getElementById("year");
                    
    if( radioOpt === 0 ){
        for( var i = 0; i < 4; i ++ ){
            man.options[i].value = pManVals[i];
            man.options[i].innerHTML = pManInner[i];
            mod.options[i].value = pModVals[i];
            mod.options[i].innerHTML = pModInner[i];
            year.options[i].value = pYearVals[i];
            year.options[i].innerHTML = pYearVals[i];
        }    
    }
    else{
        for( var i = 0; i < 4; i ++ ){
            man.options[i].value = cManVals[i];
            man.options[i].innerHTML = cManInner[i];
            mod.options[i].value = cModVals[i];
            mod.options[i].innerHTML = cModVals[i];
            year.options[i].value = cYearVals[i];
            year.options[i].innerHTML = cYearVals[i];
        }  
    }// end if-else
}// end setFormOptions()
