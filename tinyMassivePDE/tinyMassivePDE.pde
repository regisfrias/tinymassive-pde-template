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
int screenScaleX = 10;
int screenScaleY = 23;

// Turn this off (false) here
// (or with keyboard '1')
// for live output.
boolean debug = true;

// Constants
// KEEP OUT!
int LEFT_SCREEN_WIDTH = 39;
int LEFT_SCREEN_HEIGHT = 9;
int RIGHT_SCREEN_WIDTH = 38;
int RIGHT_SCREEN_HEIGHT = 13;
int RIGHT_SCREEN_POSITION = LEFT_SCREEN_WIDTH;

void settings(){
  size(77 * screenScaleX, 13 * screenScaleY);
}

void setup(){
}

void draw(){
  background(100);
  scale(screenScaleX, screenScaleY);
  
  // -----------------
  // Display reference
  if(debug){
    noFill();
    stroke(0,0,100);
    for(int x = 0; x < LEFT_SCREEN_WIDTH; x ++){
      for(int y = 0; y < LEFT_SCREEN_HEIGHT; y ++){
        point(x, y);
      }
    }
    
    stroke(100,0,0);
    for(int x = RIGHT_SCREEN_POSITION; x < RIGHT_SCREEN_WIDTH + RIGHT_SCREEN_POSITION; x ++){
      for(int y = 0; y < RIGHT_SCREEN_HEIGHT; y ++){
        point(x, y);
      }
    }
    
    fill(180);
    textSize(3);
    textAlign(CENTER, CENTER);
    text("Left side", 0, 0, LEFT_SCREEN_WIDTH, LEFT_SCREEN_HEIGHT);
    text("Right side", RIGHT_SCREEN_POSITION, 0, RIGHT_SCREEN_WIDTH, RIGHT_SCREEN_HEIGHT);
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
