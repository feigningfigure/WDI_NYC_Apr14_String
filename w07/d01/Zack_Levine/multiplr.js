function findNumbersUnder(underX)
{
    var list = new Array();
    for (var i = 0; i < underX; i+= 1 )
    {
        list.push( i );
    }
//print dem
    for ( var i = 0; i < list.length; i++)
    {
        console.log( list[i] );
    }
}
            findNumbersUnder(10)


//set pastetoggle=<F2>
//function generateNumbers( from, to, increment) 
//{ 
    //var numbers = new Array(); 
     
    //// start generating numbers 
    //for( var i = from; i <= to; i+= increment ) 
    //{ 
        //numbers.push( i ); 
    //} 
     
    //// print numbers out. 
    //for( var i = 0; i < numbers.length; i++ ) 
    //{ 
        //console.log( numbers[i] + "<br>" ); 
    //} 
//}  


            //function generateNumbers( from, to, increment) 
            //{ 
                //var numbers = new Array(); 

                //// start generating numbers 
                ////     for( var i = from; i <= to; i+= increment ) 
                ////         { 
                ////                 numbers.push( i ); 
                ////                     } 
                ////                          
                ////                              // print numbers out. 
                ////                                  for( var i = 0; i < numbers.length; i++ ) 
                ////                                      { 
                ////                                              window.document.write( numbers[i] + "<br>" ); 
                ////                                                  } 
                ////                                                  }  
                ////
                ////                                                  generateNumbers( 0, 10, 2 ); 
