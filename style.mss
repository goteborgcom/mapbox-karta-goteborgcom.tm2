// ---------------------------------------------------------------------

Map {
  background-color:@beige;
  background-image: @pattern-land;
  background-image-comp-op: multiply;
  background-image-opacity: 0.8;
}

// ---------------------------------------------------------------------
// Water Features 

#water {
  polygon-fill: @blue;
  // Map tiles are 256 pixels by 256 pixels wide, so the height 
  // and width of tiling pattern images must be factors of 256. 
  polygon-pattern-file: @pattern-water; 
  polygon-pattern-opacity: 0.07 ;
  line-width:0;
  line-color: @blue-d20;
  /*line-opacity: 0.4;
    [zoom>=12] { line-width: 1.5; }
    [zoom>=14] { line-width: 2; }
    [zoom>=16] { line-width: 5; }
  //line-comp-op: src-over;
 */ 
  
}

#waterway {
  line-color: @blue ;
  line-cap: round;
  line-width: 1.5;
  [class='river'] {
    [zoom>=12] { line-width: 1.5; }
    [zoom>=14] { line-width: 2; }
    [zoom>=16] { line-width: 4; } 
  }
  [class='stream'],
  [class='stream_intermittent'],
  [class='canal'] {
    [zoom>=14] { line-width: 1.5; }
    [zoom>=16] { line-width: 2; }
    [zoom>=18] { line-width: 4; }
  }
}

// ---------------------------------------------------------------------
// Landuse areas 
 
#landuse {
 /* #landuse {
  polygon-fill: @green-d5;
  polygon-smooth: 0.5;
  polygon-gamma: 0.5;
  polygon-pattern-file: url(pattern/white_wall_hash.png);
  polygon-pattern-comp-op: multiply;
  polygon-pattern-smooth: 0.5;
  [zoom>=15] {
    line-width: 1;
    line-color: @green-d5;
    line-smooth: 0.5;
  }
  [zoom>=17] {
    line-width: 2;
    line-color: @green-d5;
  }
}
  }*/
  polygon-fill: @green;
  polygon-pattern-file: @pattern-landuse2;
  polygon-pattern-opacity: 0.4;
  polygon-pattern-comp-op: lighten;
  [class='park'] {
    polygon-fill: @green  ;
    polygon-smooth: 0.5;
    polygon-gamma: 0.5;
    polygon-pattern-file: @pattern-landuse2;
    polygon-pattern-opacity: 0.4 ;
    polygon-pattern-comp-op: lighten;
     
  }
  [class='wood'] {
    polygon-fill: @green-d5 ;
    polygon-pattern-file: @pattern-landuse2;
    polygon-pattern-opacity: 0.4;
    polygon-pattern-comp-op: lighten;
    
  }
}

// ---------------------------------------------------------------------
// Political boundaries
 
// Countries
[admin_level=2] {
  line-width: 0.36;
  line-color: @beige-d20;
  line-cap: round;
    [zoom>=4] { 
      line-width: 0.75; 
    }
    [zoom>=6] { line-width: 1; 
    }
    [zoom>=8] { line-width: 2; 
    }
}
[maritime=1] {
    // downplay boundaries that are over water
    line-color: @blue; 
}

// ---------------------------------------------------------------------
// Buildings 

#building [zoom<=20]{
  // At zoom level 13, only large buildings are included in the
  // vector tiles. At zoom level 14+, all buildings are included.
  polygon-fill: @beige-d15;
  opacity: 0.30 ;
  comp-op: multiply;
}

// ---------------------------------------------------------------------
 
