/**
 * ROADS
 * ============================================================================
 */

#road, #bridge, #tunnel {
  [class='motorway'],
  [class='motorway_link'] {
    [zoom>=6] {
      ::case { line-color: @motorwayOutline; }
      ::case { line-smooth: 1; }
      ::case { line-width: 0.5; }
    }
    [zoom>=7] {
      ::case { line-width: 0.75; }
    }
    [zoom>=8] {
      ::case { line-width: 1; }
    }
    [zoom>=9] {
      ::case { line-width: 2; }
      ::fill { line-color: @motorway; }
      ::fill { line-smooth: 1; }
      ::fill { line-width: 0.5; }
    }
    [zoom>=10] {
      ::case { line-width: 3; }
      ::fill { line-width: 1.5; }
    }
    [zoom>=11] {
      ::case { line-width: 4; }
      ::fill { line-width: 2; }
    }
    [zoom>=12] {
      ::case { line-width: 5; }
      ::fill { line-width: 3; }
    }
     [zoom>=13] {
      ::case { line-width: 6; }
      ::fill { line-width: 4; }
    }
    [zoom>=14] {
      ::case { line-width: 7; }
      ::fill { line-width: 5; }
    }
    [zoom>=15] {
      ::case { line-width: 8; }
      ::fill { line-width: 6; }
    }
    [zoom>=16] {
      ::case { line-width: 10; }
      ::fill { line-width: 8; }
    }
    [zoom>=17] {
      ::case { line-width: 15; }
      ::fill { line-width: 13; }
    }
    [zoom>=18] {
      ::case { line-width: 17; }
      ::fill { line-width: 15; }
    }
  }
  [class='main'] {
    [zoom>=6] {
      ::case { line-color: @mainRoad; }
      ::case { line-smooth: 1; }
      ::case { line-width: 0.25; }
    }
    [zoom>=8] {
      ::case { line-width: 0.5; }
    }
    [zoom>=9] {
      ::case { line-width: 0.75; }
    }
    [zoom>=10] {
      ::case { line-width: 1; }
    }
    [zoom>=11] {
      ::case { line-color: @mainRoadOutline; }
      ::case { line-width: 2; }
      ::fill { line-color: @mainRoad; }
      ::fill { line-smooth: 1; }
      ::fill { line-width: 0.5; }
    }
    [zoom>=12] {
      ::case { line-width: 3; }
      ::fill { line-width: 1.5; }
    }
    [zoom>=13] {
      ::case { line-width: 4; }
      ::fill { line-width: 2; }
    }
    [zoom>=14] {
      ::case { line-width: 5; }
      ::fill { line-width: 3; }
    }
    [zoom>=15] {
      ::case { line-width: 7; }
      ::fill { line-width: 5; }
    }
    [zoom>=16] {
      ::case { line-width: 9; }
      ::fill { line-width: 7; }
    }
    [zoom>=17] {
      ::case { line-width: 13; }
      ::fill { line-width: 11; }
    }
    [zoom>=18] {
      ::case { line-width: 16; }
      ::fill { line-width: 14; }
    }
    [type='primary'],
    [type='trunk'],
    [type='trunk_link'] {
      ::case { line-color: @motorwayOutline; }
      ::fill { line-color: @motorway; }
    }
  }
  [class='street'] {
    [zoom>=12] {
       ::case { line-color: @street; }
       ::case { line-smooth: 1; }
       ::case { line-cap: round; }
       ::case { line-width: 0.5; }
    }
    [zoom>=13] {
      ::case { line-width: 0.75; }
    }
    [zoom>=14] {
      ::case { line-width: 1; }
    }
    [zoom>=15] {
      ::case { line-color: @streetOutline; }
      ::case { line-width: 5; }
      ::fill { line-color: @street; }
      ::fill { line-smooth: 1; }
      ::fill { line-cap: round; }
      ::fill { line-width: 3; }
    }
    [zoom>=16] {
      ::case { line-width: 7; }
      ::fill { line-width: 5; }
    }
    [zoom>=17] {
      ::case { line-width: 10; }
      ::fill { line-width: 8; }
    }
    [zoom>=18] {
      ::case { line-width: 12; }
      ::fill { line-width: 10; }
    }
    [type='trunk'],
    [type='trunk_link'] {
      ::case { line-color: @motorwayOutline; }
      ::fill { line-color: @motorway; }
    }
  }
  [class='service'],
  [class='path'] {
    [zoom>=15] {
       ::case { line-color: @street; }
       ::case { line-smooth: 0; }
       ::case { line-cap: round; }
       ::case { line-width: 1; }
    }
    [zoom>=16] {
      ::case { line-color: @streetOutline; }
      ::case { line-width: 3; }
      ::fill { line-color: @street; }
      ::fill { line-smooth: 0; }
      ::fill { line-cap: round; }
      ::fill { line-width: 1; }
    }
    [zoom>=17] {
      ::case { line-width: 5; }
      ::fill { line-width: 3; }
    }
    [zoom>=18] {
      ::case { line-width: 7; }
      ::fill { line-width: 5; }
    }
  }
  // all tunnels are equal to layer -1
  [layer<=-1] {
    [zoom>=12] {
      [class='motorway'],
      [class='motorway_link'],
      [class='main'] {
        ::case {
          line-color: @black; 
          line-opacity: 0.15;
        }
        ::fill {
          line-color: @street;
          line-opacity: 0.15;
        }
      }
    }
  }
} // #road, #bridge, #tunnel
