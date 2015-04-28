// =====================================================================
// LABELS

// General notes:
// - `text-halo-rasterizer: fast;` gives a noticeable performance
//    boost to render times and is recommended for *all* halos.

// ---------------------------------------------------------------------
// Languages

// There are 5 language options in the MapBox Streets vector tiles:
// - Local/default: '[name]'
// - English: '[name_en]'
// - French: '[name_fr]'
// - Spanish: '[name_es]'
// - German: '[name_de]'
@name: '[name]';  


// ---------------------------------------------------------------------
// Fonts

// All fontsets should have a good fallback that covers as many glyphs
// as possible. 'Arial Unicode MS Regular' and 'Arial Unicode MS Bold' 
//are recommended as final fallbacks if you have them available. 
//They support all the characters used in the MapBox Streets vector tiles.
@fallback: 'DIN Offc Pro Regular';
@sans: 'DIN Offc Pro Regular', @fallback;
@sans_md: 'DIN Offc Pro Medium', @fallback;
@sans_bd: 'DIN Offc Pro Bold', @fallback;
@sans_it: 'DIN Offc Pro Regular', @fallback;


// ---------------------------------------------------------------------
// Countries

// The country labels in MapBox Streets vector tiles are placed by hand,
// optimizing the arrangement to fit as many as possible in densely-
// labeled areas.
  
  #country_label_line {
  // Lines that connect offset labels to small
  // island & coastal countries at small scales.
  line-color: @beige-d30;
  line-dasharray: 3,1;
  line-comp-op: multiply;
}
    
  /*[zoom>=4][scalerank=1] {text-size:  0;}
  [zoom>=4][scalerank=2] {text-size:  0;}
  [zoom>=4][scalerank=3] {text-size:  12;}
  [zoom>=4][scalerank>4] {text-size:  0;}*/


// ---------------------------------------------------------------------
// Marine

#marine_label {
  text-name: [name];
  text-face-name: @sans_md;
  text-transform: uppercase;
  text-size: 20;
  text-wrap-width: 0;
  text-wrap-before: true;
  text-fill: @blue-d20;
  text-character-spacing: 2;
  
  // Some marine labels should be drawn along a line 
  // rather than on a point (the default)
  [placement='line'] {
    text-placement: line ;
    text-avoid-edges: false ;
  }
}
 

// ---------------------------------------------------------------------
// Cities, towns, villages, etc
  
#place_label[osm_id=1000000025930131], // Göteborg / Gothenburg
#place_label[osm_id=1000000025929985], // Stockholm
#place_label[osm_id=1000000020981158], // Oslo
#place_label[osm_id=1000000013707878] // Copenhagen
{
  [zoom>=7] {
  text-name: @name;
  text-face-name: @sans_bd;
  text-transform: uppercase;
  text-size: 20;
  text-fill: @grey-d60;
  //text-halo-fill: @beige;
  //text-halo-radius: 2;
  text-halo-rasterizer: fast;
  }
  [zoom>=15] {
    text-size: 0;
    text-fill: transparent;
    text-halo-radius: 0;
  }
}

  /*#place_label[osm_id=-25929985],   //Stockholm 
  #place_label[osm_id=-25930131],  //Göteborg
  #place_label[osm_id=-20981158],   //Oslo
  #place_label[osm_id=-13707878]   //Köpenhamn
  {
    [zoom=7] {
    text-name: @name;
    text-face-name: @sans_bd;
    text-transform: uppercase;
    text-size: 20;
    text-fill: #6c6762 ;
    }
  }
   

  #place_label[osm_id=1000000428039517],  //Alanya
  #place_label[osm_id=1000000021323935],  //Alicante
  #place_label[osm_id=1000000072994199],  //Alghero
  #place_label[osm_id=-268396336],  //Amsterdam
  #place_label[osm_id=-152364165],  //Barcelona 
  #place_label[osm_id=-21261083],  //Bergen  
  #place_label[osm_id=-240109189],  //Berlin
  #place_label[osm_id=-17861291],   //Birmingham
  #place_label[osm_id=1000000026502343],  //Borlänge
  #place_label[osm_id=-1635651356], //Bryssel  OBS!!
  #place_label[osm_id=-85788293],   //Budapest
  #place_label[osm_id=-1415971522], //Dublin
  #place_label[osm_id=-240126753],  //Düsseldorf
  #place_label[osm_id=-17898859],   //Edinburg
  #place_label[osm_id=-27418664],   //Frankfurt
  #place_label[osm_id=-2211312681], //Frederikshamn
  #place_label[osm_id=-33622904],   //Geneve
  #place_label[osm_id=-26432122],   //Gdansk
  #place_label[osm_id=-20833623],   //Hamburg
  #place_label[osm_id=-1372477580], //Helsingfors
  #place_label[osm_id=-34840064],   //Innsbruck
  #place_label[osm_id=-1882099475], //Istanbul
  #place_label[osm_id=-1607319731], //Kalmar
  #place_label[osm_id=-24487450],    //Kiel
  #place_label[osm_id=1000000029333339],//Las Palmas
  #place_label[osm_id=1000000265958490],  //Lissabon
  #place_label[osm_id=-107775],     //London
  #place_label[osm_id=-20626319],   //Lyon
  #place_label[osm_id=1000000021750065], //Malaga
  #place_label[osm_id=-26804505], //Malmö
  #place_label[osm_id=-294001443],  //Manchester
  #place_label[osm_id=-26761400],   //Marseille
  #place_label[osm_id=-62505581],   //Milano
  #place_label[osm_id=-1700534808], //München
  #place_label[osm_id=-1701090139], //Nice
  #place_label[osm_id=-289643197],  //Palma
  #place_label[osm_id=-17807753],   //Paris
  #place_label[osm_id=1000001677276966],   //Pisa
  #place_label[osm_id=-1601837931], //Prag
  #place_label[osm_id=1000001830216906],  //Pula
  #place_label[osm_id=-2107832620], //Reykjavik
  #place_label[osm_id=-72959652],   //Rom
  #place_label[osm_id=-34964314],  //Salzburg
  #place_label[osm_id=-1467604275], //Split
  #place_label[osm_id=-30421326],   //Stavanger
  #place_label[osm_id=-283253592],  //Sundsvall
  #place_label[osm_id=1000000067253724],  //Trapani
  #place_label[osm_id=1000000025374180],  //Travemünde
  #place_label[osm_id=-275005833],  //Tuzla
  #place_label[osm_id=-27193093],   //Vilnius
  #place_label[osm_id=-27150427],   //Visby
  #place_label[osm_id=-428339515],  //Warzawa
  #place_label[osm_id=-26559213]   //Århus
  {
    [zoom>=5][zoom<=12]
//[scalerank>=1][scalerank<=8][localrank>=1][localrank<=8]
{
    text-name: @name;
    text-face-name: @sans_bd;
    text-transform: uppercase;
    text-size: 15;
    text-fill: @grey-d60;
    }
  }
// Cities, towns, villages, etc ENGELSKT NAMN

#place_label[osm_id=1000000000441183],  //Athen  
#place_label[osm_id=1000000031376615], //Chania 
#place_label[osm_id=1000023541031],   //Malta 
#place_label[osm_id=-2885136501], //Pristina 
#place_label[osm_id=-170792214],  //Skopje 
#place_label[osm_id=1000000025960293],  //Tehran 
#place_label[osm_id=3000002108882], //Teeriffa   
 {
    [zoom>=5][zoom<=11 ]
//[scalerank>=1][scalerank<=8][localrank>=1][localrank<=8]
{
    text-name: [name_en];
    text-face-name: @sans_bd;
    text-transform: uppercase;
    text-size: 15;
    text-fill: @grey-d60;
    }
  }*/




// ---------------------------------------------------------------------
// Roads

#road_label {
  // [class='motorway'], 
  [class='main'], 
  [class='street'], 
  [class='street_limited']{
    [zoom>=15] {
      text-name: @name;
      text-placement: line;  // text follows line path
      text-face-name: @sans ;
      text-fill: @grey-d60;
      text-halo-fill: fadeout(#fff, 0.5%);
      text-halo-radius: 1;
      text-halo-rasterizer: fast;
      text-avoid-edges: true;  // prevents clipped labels at tile edges
      text-size:7 ;
      text-repeat-distance: 200;
           }
     [zoom>=16] {
       [class='main'],
       [class='street'], 
       [class='street_limited'] {
         text-size: 10;
          text-margin: 10;
       }
     }
      [zoom>=17] {
       [class='main'],
       [class='street'], 
       [class='street_limited'] {
         text-size: 12;
         text-margin: 70;
       }
     }
      [zoom>=18] {
       [class='main'],
       [class='street'], 
       [class='street_limited'] {
        text-size: 14;
        text-margin: 200;
       }
     }
     }
      [class='path'],
      [class='service ']{
      [zoom>=17] {
      text-name: @name;
      text-placement: line;  // text follows line path
      text-face-name: @sans ;
      text-fill: @grey-d60;
      //text-halo-fill: fadeout(#fff, 0.5%);
      //text-halo-radius: 1;
      //text-halo-rasterizer: fast;
      text-avoid-edges: true;  // prevents clipped labels at tile edges
      text-size:8 ;
     }
      [zoom>=18] {
        [class='path'],
        [class='service ']{
        text-size: 12;
       }
     }
  }
}


// ---------------------------------------------------------------------
// Water

/*#water_label {
  
    text-name: @name;
    text-face-name: @sans_md;
    text-fill: darken(@blue, 50 %);
    text-size: 12;
    text-wrap-width: 100;
    text-wrap-before: true;
    text-halo-fill: fadeout(#fff, 75%);
    text-halo-radius: 1.5;
  }*/ 



// ---------------------------------------------------------------------
  
  #gbg_city_areas {
  [zoom=13],
  [zoom=14],
  [zoom=15],
  [zoom=16]  {
    text-name: [name];
    text-face-name: @sans_bd;
    text-fill: @grey-d60;
    text-transform: uppercase;
    text-size: 12;
    text-allow-overlap: true;
    text-wrap-width: 50;
    text-halo-fill: @beige;
    text-halo-radius: 1.5;
    text-halo-rasterizer: fast;
    [zoom>=14] {
      text-size: 14;
      text-halo-radius: 2.5;
    }
    [zoom>=15] {
      text-size: 14;
    }
  }
 }
  
  

  
  
