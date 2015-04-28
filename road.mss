// ---------------------------------------------------------------------

// Roads are split across 3 layers: #road, #bridge, and #tunnel. Each
// road segment will only exist in one of the three layers. The
// #bridge layer makes use of Mapnik's group-by rendering mode;
// attachments in this layer will be grouped by layer for appropriate
// rendering of multi-level overpasses.

// The main road style is for all 3 road layers and divided into 2 main
// attachments. The 'case'  attachment is 

// ---------------------------------------------------------------------
// Roads

// Roads are split across 3 layers: #road, #bridge, and #tunnel. Each
// road segment will only exist in one of the three layers. 

#road, #bridge, #tunnel {
  [class='motorway'] {
    [zoom>=7] {
      line-color: @white;
      line-width: 1.5;
    }
    [zoom>=15] { line-width: 3; }   
    [zoom>=16] {
      ::case {
        line-width: 8.5;
        line-color: @white;
      }
      ::fill {
        line-width: 6;
        line-color: @white;
      }
    }
    [zoom>=17] {
      ::case {
        line-width: 10.5;
        line-color: @white;
      }
      ::fill {
        line-width: 8;
        line-color: @white;
      }
    }
  }

  [class='motorway_link'] {
    [zoom>=7] {
      line-color: @white;
      line-width: 1;
    }
    [zoom>=15] { line-width: 2; }
    [zoom>=16] {
      ::case {
        line-width: 5;
        line-color: @white;
      }
      ::fill {
        line-width: 3.5;
        line-color: @white;
      }
    }
    [zoom>=17] {
      ::case {
        line-width: 7;
        line-color: @white;
      }
      ::fill {
        line-width: 5.5;
        line-color: @white;
      }
    }
  }
  [class='main'],
  [class='street'],
  [class='street_limited'] {
    [zoom>=15] {
      line-color: @white; 
      line-width: 1;
    }
    [zoom>=16] {
      ::case {
        line-width: 2.5;
        line-color: @white;
      }
      ::fill {
        line-width: 4;
        line-color: @white;
      }
    }
    [zoom>=17] {
      ::case {
        line-width: 12;
        line-color: @grey-d10;
        line-opacity: 0.3;
      }
      ::fill {
        line-width: 10;
        line-color: @white;
      }
    }
     [zoom>=18] {
      ::case {
        line-width: 20;
        line-color: @grey-d10;
        line-opacity: 0.1;
      }
      ::fill {
        line-width: 15;
        line-color: @white;
      }
    }
  }
  [class='path'] {
    [zoom>=16] {
      line-color: @grey-d60;
      line-width: 1;
      line-dasharray: 1,3;
      line-opacity: 0.3; 
    }
    [zoom>=17] {
      line-width: 2;
      line-dasharray: 2,4;
      line-opacity: 0.2;
    }
  }
  #bridge{
    [class='path']{
      [zoom>=7] {
      line-color: @white;
      line-width: 1.5;
    }
    [zoom>=15] { line-width: 3; }   
    [zoom>=16] {
      ::case {
        line-width: 2;
        line-color: @white;
      }
      ::fill {
        line-width: 4;
        line-color: @white;
      }
    }
    [zoom>=17] {
      ::case {
        line-width: 9;
        line-color: @white;
      }
      ::fill {
        line-width: 6;
        line-color: @white;
      }
        }
      [zoom>=18] {
      ::case {
        line-width: 0;
        line-color: @white;
      }
      ::fill {
        line-width: 10;
        line-color: @white;
      }
        }
      }
    }
  #road[osm_id=4770004],
  #road[osm_id=164334062]{
    [zoom>=15] {
      line-color: @white; 
      line-width: 3;
    }
    [zoom>=16] {
      ::case {
        line-width: 0.5;
        line-color: @white;
      }
      ::fill {
        line-width: 0.5;
        line-color: @white;
      }
    }
    [zoom>=17] {
      ::case {
        line-width: 0.5;
        line-color: @grey-d10;
        line-opacity: 0.3;
      }
      ::fill {
        line-width: 0.5;
        line-color: @white;
      }
    }
     [zoom>=18] {
      ::case {
        line-width: 0;
        line-color: @grey-d10;
        line-opacity: 0.1;
      }
      ::fill {
        line-width: 0;
        line-color: @white;
      }
    }
  #road[osm_id= 28663475],
  #road[osm_id=28638817]{
    [zoom>=15] {
      line-color: @white; 
      line-width: 0;
    }
    [zoom>=16] {
      ::case {
        line-width: 0;
        line-color: @white;
      }
      ::fill {
        line-width: 0;
        line-color: @white;
      }
    }
    [zoom>=17] {
      ::case {
        line-width: 0;
        line-color: @grey-d10;
        line-opacity: 0.3;
      }
      ::fill {
        line-width: 0;
        line-color: @white;
      }
    }
     [zoom>=18] {
      ::case {
        line-width: 0;
        line-color: @grey-d10;
        line-opacity: 0.1;
      }
      ::fill {
        line-width: 0;
        line-color: @white;
      }
    }
      }
}
  }
