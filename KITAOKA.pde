/*
 * created with Processing https://processing.org/
 * program by Rupert Russell
 * Licence Createive Commons 
 * Based on the work of http://www.ritsumei.ac.jp/~akitaoka/index-e.html 
 * Akiyoshi KITAOKA, Professor, Department of Psychology, Ritsumeikan University, Kyoto, Japan
 * Under the following terms:
 * Attribution — You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
 * ShareAlike — If you remix, transform, or build upon the material, you must distribute your contributions under the same license as the original.
 * No additional restrictions — You may not apply legal terms or technological measures that legally restrict others from doing anything the license permits.
*/


int pixelSize = 80;
int m; // message 

int[] message = {1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,2,7,4,1,0,1,0,1,0,1,0,1,0,6,2,6,3,8,4,8,0,1,0,1,0,1,0,6,2,6,2,7,4,8,4,8,0,1,0,1,0,6,2,6,2,6,3,8,4,8,4,8,0,1,0,1,2,6,2,6,2,7,4,8,4,8,4,1,0,1,2,6,2,6,2,6,3,8,4,8,4,8,4,1,0,10,11,10,11,10,11,1,12,13,12,13,12,13,0,1,4,8,4,8,4,8,5,6,2,6,2,6,2,1,0,1,4,8,4,8,4,9,2,6,2,6,2,1,0,1,0,8,4,8,4,8,5,6,2,6,2,6,0,1,0,1,0,8,4,8,4,9,2,6,2,6,0,1,0,1,0,1,0,8,4,8,5,6,2,6,0,1,0,1,0,1,0,1,0,1,4,9,2,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1};

int black = 0;
int white = 255;

void setup() {
  size(1200, 1200);
  
  rectMode(CORNER);  // Default rectMode is CORNER
  noStroke(); // Should Turn off Strokes but does not seem to
  noLoop();  // Run once and stop
  black = 0;
  white = 255;
  m = 0 ; // start at the first pixel in the message
  stroke(0);
  strokeWeight(0);
}

void draw() {
  
  
  for (int r = 0; r < 15; r = r +1){
    
    for (int c = 0; c < 15; c = c+1) { // 22 columns in the message
    if (message[m] == 0) {
      fill(white);  // Set fill to white  
         rect(c * pixelSize , r * pixelSize  , pixelSize , pixelSize );
    }
    if (message[m] == 1) {
      fill(black);  // Set fill to black
         rect(c * pixelSize , r * pixelSize  , pixelSize , pixelSize );
    }

    if (message[m] == 2) {
      type2(c , r, pixelSize );    
    }  

    if (message[m] == 3) {
      type3(c , r, pixelSize );    
    }  

    if (message[m] == 4) {
      type4(c , r, pixelSize );    
    }  

    if (message[m] == 5) {
      type5(c , r, pixelSize );    
    }  

    if (message[m] == 6) {
      type6(c , r, pixelSize );    
    } 

    if (message[m] == 7) {
      type7(c , r, pixelSize );    
    }  

    if (message[m] == 8) {
      type8(c , r, pixelSize );    
    }  
      
   if (message[m] == 9) {
      type9(c , r, pixelSize );    
    }   
          
     if (message[m] == 10) {
      type10(c , r, pixelSize );    
    }   
      
    if (message[m] == 11) {
      type11(c , r, pixelSize );    
    }        
      
    if (message[m] == 12) {
      type12(c , r, pixelSize );    
    }   
            
   if (message[m] == 13) {
      type13(c , r, pixelSize );    
    }   

      m = m + 1; // read the next pixel in the message
    }
 
  }
save("KITAOKA.png");
// exit(); // end the program
  
}


void type2(int column, int row, float pixelSize) {
  
    fill(white);  // Set fill to white to fill the background
    rect(column * pixelSize , row * pixelSize  , pixelSize , pixelSize );
    
    //  draw top right  small square
    fill(black);  // Set fill to black
    rect((column * pixelSize) + ((pixelSize / 100) * 70)  , (row * pixelSize) + ((pixelSize / 100) * 5), pixelSize * 0.25 , pixelSize * 0.25);
    
    //  draw bottom left left small square
    fill(black);  // Set fill to black
    rect((column * pixelSize) + ((pixelSize / 100) * 5)  , (row * pixelSize) + ((pixelSize / 100) * 70), pixelSize * 0.25 , pixelSize * 0.25);
  }


  void type3(int column, int row, float pixelSize) {
  
    fill(white);  // Set fill to white to fill the background
    rect(column * pixelSize , row * pixelSize  , pixelSize , pixelSize );
    
    //  draw top left small square
    fill(black);  // Set fill to black
    rect((column * pixelSize) + ((pixelSize / 100) * 5)  , (row * pixelSize) + ((pixelSize / 100) * 70), pixelSize * 0.25 , pixelSize * 0.25);
        
    //  draw bottom right left small square
    fill(black);  // Set fill to black
    rect((column * pixelSize) + ((pixelSize / 100) * 70)  , (row * pixelSize) + ((pixelSize / 100) * 70), pixelSize * 0.25 , pixelSize * 0.25);
  }

void type4(int column, int row, float pixelSize) {
  
    fill(white);  // Set fill to white to fill the background
    rect(column * pixelSize , row * pixelSize  , pixelSize , pixelSize );
    
    //  draw top left small square
    fill(black);  // Set fill to black
    rect((column * pixelSize) + ((pixelSize / 100) * 5)  , (row * pixelSize) + ((pixelSize / 100) * 5), pixelSize * 0.25 , pixelSize * 0.25);
        
    //  draw bottom right left small square
    fill(black);  // Set fill to black
    rect((column * pixelSize) + ((pixelSize / 100) * 70)  , (row * pixelSize) + ((pixelSize / 100) * 70), pixelSize * 0.25 , pixelSize * 0.25);
  }
  
  void type5(int column, int row, float pixelSize) {
  
    fill(white);  // Set fill to white to fill the background
    rect(column * pixelSize , row * pixelSize  , pixelSize , pixelSize );
    
    //  draw top left small square
    fill(black);  // Set fill to black
    rect((column * pixelSize) + ((pixelSize / 100) * 5)  , (row * pixelSize) + ((pixelSize / 100) * 5), pixelSize * 0.25 , pixelSize * 0.25);
        
    //  draw top right left small square
    fill(black);  // Set fill to black
    rect((column * pixelSize) + ((pixelSize / 100) * 70)  , (row * pixelSize) + ((pixelSize / 100) * 5), pixelSize * 0.25 , pixelSize * 0.25);
  }
  
  void type6(int column, int row, float pixelSize) {
  
    fill(black);  // Set fill to white to fill the background
    rect(column * pixelSize , row * pixelSize  , pixelSize , pixelSize );
    
    //  draw top right  small square
    fill(white);  // Set fill to black
    rect((column * pixelSize) + ((pixelSize / 100) * 70)  , (row * pixelSize) + ((pixelSize / 100) * 5), pixelSize * 0.25 , pixelSize * 0.25);
    
    //  draw bottom left left small square
    fill(white);  // Set fill to black
    rect((column * pixelSize) + ((pixelSize / 100) * 5)  , (row * pixelSize) + ((pixelSize / 100) * 70), pixelSize * 0.25 , pixelSize * 0.25);
  }
  
  void type7(int column, int row, float pixelSize) {
  
    fill(black);  // Set fill to black to fill the background
    rect(column * pixelSize , row * pixelSize  , pixelSize , pixelSize );
    
    //  draw top left small square
    fill(white);  // Set fill to white
    rect((column * pixelSize) + ((pixelSize / 100) * 5)  , (row * pixelSize) + ((pixelSize / 100) * 70), pixelSize * 0.25 , pixelSize * 0.25);
        
    //  draw bottom right left small square
    fill(white);  // Set fill to white
    rect((column * pixelSize) + ((pixelSize / 100) * 70)  , (row * pixelSize) + ((pixelSize / 100) * 70), pixelSize * 0.25 , pixelSize * 0.25);
  }
  
  void type8(int column, int row, float pixelSize) {
  
    fill(black);  // Set fill to white to fill the background
    rect(column * pixelSize , row * pixelSize  , pixelSize , pixelSize );
    
    //  draw top left small square
    fill(white);  // Set fill to black
    rect((column * pixelSize) + ((pixelSize / 100) * 5)  , (row * pixelSize) + ((pixelSize / 100) * 5), pixelSize * 0.25 , pixelSize * 0.25);
        
    //  draw bottom right left small square
    fill(white);  // Set fill to black
    rect((column * pixelSize) + ((pixelSize / 100) * 70)  , (row * pixelSize) + ((pixelSize / 100) * 70), pixelSize * 0.25 , pixelSize * 0.25);
  }
  
    void type9(int column, int row, float pixelSize) {
  
    fill(black);  // Set fill to white to fill the background
    rect(column * pixelSize , row * pixelSize  , pixelSize , pixelSize );
    
    //  draw top left small square
    fill(white);  // Set fill to black
    rect((column * pixelSize) + ((pixelSize / 100) * 5)  , (row * pixelSize) + ((pixelSize / 100) * 5), pixelSize * 0.25 , pixelSize * 0.25);
        
    //  draw top right left small square
    fill(white);  // Set fill to black
    rect((column * pixelSize) + ((pixelSize / 100) * 70)  , (row * pixelSize) + ((pixelSize / 100) * 5), pixelSize * 0.25 , pixelSize * 0.25);
  }

  void type10(int column, int row, float pixelSize) {
  
    fill(black);  // Set fill to white to fill the background
    rect(column * pixelSize , row * pixelSize  , pixelSize , pixelSize );
    
    //  draw top left small square
    fill(white);  // Set fill to black
    rect((column * pixelSize) + ((pixelSize / 100) * 70)  , (row * pixelSize) + ((pixelSize / 100) * 5), pixelSize * 0.25 , pixelSize * 0.25);
        
    //  draw bottom right left small square
    fill(white);  // Set fill to black
    rect((column * pixelSize) + ((pixelSize / 100) * 70)  , (row * pixelSize) + ((pixelSize / 100) * 70), pixelSize * 0.25 , pixelSize * 0.25);
  }
  
    void type11(int column, int row, float pixelSize) {
  
    fill(white);  // Set fill to white to fill the background
    rect(column * pixelSize , row * pixelSize  , pixelSize , pixelSize );
    
    //  draw top left small square
    fill(black);  // Set fill to black
    rect((column * pixelSize) + ((pixelSize / 100) * 70)  , (row * pixelSize) + ((pixelSize / 100) * 5), pixelSize * 0.25 , pixelSize * 0.25);
        
    //  draw bottom right left small square
    fill(black);  // Set fill to black
    rect((column * pixelSize) + ((pixelSize / 100) * 70)  , (row * pixelSize) + ((pixelSize / 100) * 70), pixelSize * 0.25 , pixelSize * 0.25);
  }
  
  
  void type12(int column, int row, float pixelSize) {
  
    fill(white);  // Set fill to white to fill the background
    rect(column * pixelSize , row * pixelSize  , pixelSize , pixelSize );
    
    //  draw top left  small square
    fill(black);  // Set fill to black
    rect((column * pixelSize) + ((pixelSize / 100) * 5)  , (row * pixelSize) + ((pixelSize / 100) * 5), pixelSize * 0.25 , pixelSize * 0.25);
    
    //  draw bottom left left small square
    fill(black);  // Set fill to black
    rect((column * pixelSize) + ((pixelSize / 100) * 5)  , (row * pixelSize) + ((pixelSize / 100) * 70), pixelSize * 0.25 , pixelSize * 0.25);
  }
  
    void type13(int column, int row, float pixelSize) {
  
    fill(black);  // Set fill to white to fill the background
    rect(column * pixelSize , row * pixelSize  , pixelSize , pixelSize );
    
    //  draw top left  small square
    fill(white);  // Set fill to black
    rect((column * pixelSize) + ((pixelSize / 100) * 5)  , (row * pixelSize) + ((pixelSize / 100) * 5), pixelSize * 0.25 , pixelSize * 0.25);
    
    //  draw bottom left left small square
    fill(white);  // Set fill to black
    rect((column * pixelSize) + ((pixelSize / 100) * 5)  , (row * pixelSize) + ((pixelSize / 100) * 70), pixelSize * 0.25 , pixelSize * 0.25);
  }
  
