           
            var pManVals = [ "cantivlever", "caproni", "douglas", "brewster" ];
            var pManInner = [ "Cantilever Aero Company", "Caproni Aviation", "Douglas Aircraft", "Brewster Aeronautical" ];
            var pModVals = [ "bullet", "noviplano", "devastator", "buffalo" ];
            var pModInner = [ "Christmas Bullet", "Ca.60 Noviplano", "TBD Devistator", "F2A Buffalo" ];
            var pYearVals = [ "1918", "1921", "1937", "1938" ];
            
            var cManVals = [ "ford", "reliant", "chevrolet" , "zastava"];
            var cManInner = [ "Ford Motor Company", "Reliant Motor Company", "Chevrolet Division", "Zastava Automobiles" ];
            var cModVals = [ "edsel", "robin", "vega", "yugo" ];
            var cModInner = [ "Edsel", "Robin", "Vega", "Yugo" ];
            var cYearVals = [ "1958", "1973", "1971", "1987" ];
            
            //var radioOpt = 0;
            function setFormOptions(radioOpt){
                    var vType = document.getElementById("vehicle");
                    var man = document.getElementById("man");
                    var mod = document.getElementById("model");
                    var year = document.getElementById("year");
                    
                if( radioOpt === 0 ){
                    vType.innerHTML = "Airplane Info:";
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
                    vType.innerHTML = "Automobile Info:";                    
                    for( var i = 0; i < 4; i ++ ){
                        man.options[i].value = cManVals[i];
                        man.options[i].innerHTML = cManInner[i];
                        mod.options[i].value = cModVals[i];
                        mod.options[i].innerHTML = cModInner[i];
                        year.options[i].value = cYearVals[i];
                        year.options[i].innerHTML = cYearVals[i];
                    }  
                }// end if-else
            }// end setFormOptions()
