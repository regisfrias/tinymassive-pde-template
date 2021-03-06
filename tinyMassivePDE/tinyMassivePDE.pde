/*
  This is an independently created Processing template
  for the Tiny Massive festival (https://tinymassive.io/)
  Author: Régis Frias (regisfrias.com)
  2018
*/

/*
IMPORTANT:
The following 2 lines just make the project
appear normal on computer screens.
Use '1' instead for final output. */
int screenScaleX = 15;
int screenScaleY = 15;

// Turn this off (false) here
// (or with keyboard '1')
// for live output.
boolean debug = true;

// Constants
// KEEP OUT!
static final int LEFT_SCREEN_WIDTH = 39;
static final int LEFT_SCREEN_HEIGHT = 9;
static final int RIGHT_SCREEN_WIDTH = 38;
static final int RIGHT_SCREEN_HEIGHT = 13;
static final int RIGHT_SCREEN_POSITION = LEFT_SCREEN_WIDTH;

void settings(){
  size((LEFT_SCREEN_WIDTH + RIGHT_SCREEN_WIDTH) * screenScaleX, RIGHT_SCREEN_HEIGHT * screenScaleY);
}

void setup(){
  surface.setLocation(0, 0);
}

void draw(){
  background(0);
  scale(screenScaleX, screenScaleY);
  
  // -----------------
  // Display reference
  if(debug){
    noStroke();
    fill(0,0,100);
    for(int x = 0; x < LEFT_SCREEN_WIDTH; x ++){
      for(int y = 0; y < LEFT_SCREEN_HEIGHT; y ++){
        rect(x, y, 0.9, 0.9);
      }
    }
    
    fill(100,0,0);
    for(int x = RIGHT_SCREEN_POSITION; x < RIGHT_SCREEN_WIDTH + RIGHT_SCREEN_POSITION; x++){
      for(int y = 0; y < RIGHT_SCREEN_HEIGHT; y ++){
        rect(x, y, 0.9, 0.9);
      }
    }
  }
  // -----------------
}

void keyPressed(){
  switch(key){
    //0 (Important: this button (numpad 0) should reset the game state.)
    case '0':
      println("Reset");
      break;
    /////////////////////////////////
    
    // Joystick 1
    // W, A, S, D (joystick 1 up/left/down/right)
    case 'w':
      println("Joystick 1: up");
      break;
    case 'a':
      println("Joystick 1: left");
      break;
    case 's':
      println("Joystick 1: down");
      break;
    case 'd':
      println("Joystick 1: right");
      break;

    //Q, E (2 generic buttons mounted next to joystick 1 )
    case 'q':
      println("Joystick 1: generic button 1");
      break;
    case 'e':
      println("Joystick 1: generic button 2");
      break;
    /////////////////////////////////
      
    // Joystick 2
    // I, J, K, L (joystick 2 up/left/down/right)
    case 'i':
      println("Joystick 2: up");
      break;
    case 'j':
      println("Joystick 2: left");
      break;
    case 'k':
      println("Joystick 2: down");
      break;
    case 'l':
      println("Joystick 2: right");
      break;
      
    //U, O (2 generic buttons mounted next to joystick 2 )
    case 'u':
      println("Joystick 2: generic button 1");
      break;
    case 'o':
      println("Joystick 2: generic button 2");
      break;
    /////////////////////////////////
    
    case '1':
      debug = !debug;
      println("Debug mode", debug);
      break;
  }
}
