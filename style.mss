/**
 * MAP
 * ============================================================================
 */

Map {
  background-color: @map; 
}

/**
 * WATER and WATERWAYS
 * ============================================================================
 */

#water {
  /* To have a faded edge on the water we use a ligther color for the 
   * ::shadow which gets inverted and the we applie a blur to that shadow
   * layer
   */
  polygon-fill: @water;
  polygon-pattern-file: @pattern-water;
  polygon-pattern-opacity: 0.6;

  ::shadow {
    image-filters:agg-stack-blur(10,10);
    polygon-fill: lighten(@waterShadow, 5%);
    polygon-opacity: 0.65;
  }
}

#waterway {
  line-color: @water;
  line-cap: round;
  line-width: 0.5;
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

/**
 * LANDCOVER
 * ============================================================================
 */

#landcover[zoom<=12] {
  polygon-smooth: 1;
  polygon-gamma: 1;
  polygon-pattern-file: @pattern-landuse2;
  polygon-pattern-opacity: 0.4;
  polygon-pattern-comp-op: lighten;
  
  [class='wood'] {
    polygon-fill: mix(@landcover, @map, 95%);
  }
  [class='scrub'] {
    polygon-fill:  mix(@landcover, @map, 50%);
  }
  [class='grass'] {
    polygon-fill: mix(@landcover, @map, 40%);
  }
  [class='crop'] {
    polygon-fill: mix(@landcover, @map, 30%);
  }
  [class='snow'] {
    polygon-fill: @white; 
  }
  
}

/**
 * LANDUSE
 * ============================================================================
 */

#landuse {
  [class='park'],
  [class='wood'],
  [class='cemetery'],
  [class='pitch'] {
    polygon-fill: mix(@landuseGreen, @map, 95%);
    polygon-gamma: 1;
    polygon-pattern-file: @pattern-landuse2;
    polygon-pattern-opacity: 0.4;
    polygon-pattern-comp-op: lighten;
  }
  
  [class='park'],
  [class='wood'],
  [class='cemetery'] {
    polygon-smooth: 1;
    polygon-pattern-smooth: 1;
  }
  
  [class='school'],
  [class='hospital'] {
    polygon-fill: @landuseRed;
  }  
  
}

/**
 * POLITICAL BOUNDRIES (OBS TVEK OM DETTA SKE MED)
 * ============================================================================
 */
 
#admin {
  [admin_level=2] {
    line-width: 0.15;
    line-color: @black;
    [maritime=1] { line-opacity: 0; }
    [zoom>=3] { line-width: 0.25; }
    [zoom>=4] { line-width: 0.25; }
    [zoom>=5] { line-width: 0.5; }
    [zoom>=6] { line-width: 0.5; }
    [zoom>=7] { line-width: 0.75; }
    [zoom>=8] { line-width: 1; }
    [zoom>=9] { line-width: 1.5; }
  }
  [admin_level=4][zoom>=7] {
    line-width: 0.75;
    line-color: @black;
    line-dasharray: 4,8,2;
    [zoom>=8] { line-width: 1; }
    [zoom>=9] { line-width: 1.5; }
  }
  
}

/**
 * BULDINGS
 * ============================================================================
 */

#building {
  polygon-fill: @building;
 line-color: @buildingOutline;
}
