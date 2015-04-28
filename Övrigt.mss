/*
// ---------------------------------------------------------------------
// Sjukhus, Skola, Kyrkogård

#landuse {
  [class='hospital'] { polygon-fill: #cc0033;
  }
  [class='school'] { polygon-fill: #660033;
  }
  [class='cemetery'] { polygon-fill: @landuse;polygon-pattern-file: @pattern-landuse; }





// ---------------------------------------------------------------------
// Buildings 

// Seperate attachments are used to draw buildings with depth
// to make them more prominent at high zoom levels
#building [zoom>=20]{
//::wall { polygon-fill:mix(@land, #FDE0D0, 100); }
::wall { polygon-fill:#FDE0D0 }
::roof { 
  //polygon-fill:mix(@land, #FDE0D0, 100);
  polygon-fill:#FDE0D0;
  polygon-geometry-transform:translate(-1,-1.5);
  polygon-clip:false;  
  line-width: 10;
  line-color: mix(@land, #FDE0D0, 85);
  line-geometry-transform:translate(-1,-1.5);
  line-clip:false;
 }
}

// Aeroways 

#aeroway [zoom>=12] {
  ['mapnik::geometry_type'=2] {
    line-color:multiply(@green, 2 %);
    [type='runway'] { line-width: 5; }    
    [type='taxiway'] {  
      line-width: 1;
      [zoom>=15] { line-width: 2; }
    }
  }    
  ['mapnik::geometry_type'=3] {
    polygon-fill: @green-d5;
    [type='apron'] {
      polygon-fill: darken(@green, 2 %);  
    }  
  }
}
// --------------------------------------------------------------------- 

water

[zoom<=13],  // automatic area filtering @ low zooms
  [zoom>=14][area>500000],
  [zoom>=16][area>10000],
  [zoom>=17] {

// --------------------------------------------------------------------- 

#country_label[zoom>=3] {

  text-name: @name;
  text-face-name: @sans_bd;
  text-transform: uppercase;
  text-wrap-width: 200;
  text-wrap-before: true; 
  text-fill: @beige-d20;
  text-comp-op: multiply;
  text-character-spacing: 2;
  text-size: 18;
  [zoom>=3]{text-size:  0;}
  [zoom>=4]{text-size: 10;}
  [zoom>=5]{text-size: 15 ;}
  [zoom>=6]{text-size: 20;}
  [zoom>=7]{text-size: 0;}

*/

  /* [class='service'][zoom>=16], {
      line-join:round;
      #road, #bridge { line-cap: round; }
      [zoom>=16] { line-width:1; line-color:#000 ; }
    }
 }
    [class='street_limited'][zoom>=15], {
      line-join:round;
      #road, #bridge { line-cap: round; }
      [zoom>=15] { line-width:2.5; line-color:#000 ; }
      [zoom>=16] { line-width:4; }*/

// House numbers

/*#housenum_label[zoom>=17] {
  text-name: [house_num];
  text-face-name: @sans;
  text-fill: @beige-d35;
  text-size: 10 ;
  [zoom=16] { text-size: 7; }
  [zoom>=20] { text-size: 14; }*/

/*
// City labels with dots for low zoom levels.
// The separate attachment keeps the size of the XML down.
#place_label::citydots[type='osm_id'][zoom>=4][zoom<=7]{
  // explicitly defining all the `ldir` values wer'e going
  // to use shaves a bit off the final project.xml size
  [ldir='N'],[ldir='S'],[ldir='E'],[ldir='W'],
  [ldir='NE'],[ldir='SE'],[ldir='SW'],[ldir='NW'] {
    shield-file: url("shield/test.png ");
    shield-unlock-image: true;
    shield-name: @name;
    shield-size: 50;
    [zoom=7] { shield-size: 50; }
    shield-face-name: @sans_bd;
    shield-placement: interior;
    shield-fill: #888;
    shield-justify-alignment: right;
    [ldir='E'] { shield-text-dx: 5; }
    [ldir='W'] { shield-text-dx: -5; }
    [ldir='N'] { shield-text-dy: -5; }
    [ldir='S'] { shield-text-dy: 5; }
    [ldir='NE'] { shield-text-dx: 4; shield-text-dy: -4; }
    [ldir='SE'] { shield-text-dx: 4; shield-text-dy: 4; }
    [ldir='SW'] { shield-text-dx: -4; shield-text-dy: 4; }
    [ldir='NW'] { shield-text-dx: -4; shield-text-dy: -4; }
  }
}

/*


#place_label  {
    // Hide at largest scales:
    [zoom>=10] { text-name: "''"; 
  }
 
}*/


// ---------------------------------------------------------------------
// Points of interest

/*#poi_label[zoom=14][scalerank<=1],
#poi_label[zoom=15][scalerank<=2],
#poi_label[zoom=16][scalerank<=3],
#poi_label[zoom=17][scalerank<=4][localrank<=2],
#poi_label[zoom>=18] {
  // Separate icon and label attachments are created to ensure that
  // all icon placement happens first, then labels are placed only
  // if there is still room.
  ::icon[maki!=null] {
    // The [maki] field values match a subset of Maki icon names, so we
    // can use that in our url expression.
    // Not all POIs have a Maki icon assigned, so we limit this section
    // to those that do. See also <https://www.mapbox.com/maki/>
    marker-fill:#666;
    marker-height: 10;
    marker-file:url('icon/[maki]-12.svg');
  }
  ::label {
    text-name: @name;
    text-face-name: @sans_md;
    text-size: 12;
    text-fill: #666;
    text-halo-fill: fadeout(#fff, 50%);
    text-halo-radius: 1;
    text-halo-rasterizer: fast;
    text-wrap-width: 70;
    text-line-spacing:	-1;
    //text-transform: uppercase;
    //text-character-spacing:	0.25;
    // POI labels with an icon need to be offset:
    [maki!=null] { text-dy: 8; }
  }
}*/

/*#road_label[reflen>=1][reflen<=6]::shield {
  // Motorways with a 'ref' tag that is 1-6 characters long have a
  // [ref] value for shield-style labels.
  // Custom shield png files can be created using make_shields.sh
  // in _src folder
  shield-name: [ref];
  shield-face-name: @sans_bd;
  shield-fill: #765;
  shield-min-distance: 60;
  shield-min-padding: 8;  // prevents clipped shields at tile edges
  shield-size: 9;
  shield-placement: point; 
  shield-file: url('shield/motorway_sm_[reflen].png');
  [zoom>=15] {
    shield-size: 11;
    shield-file: url('shield/motorway_lg_[reflen].png');
  }
}*/

