/*
  This is an independently created Processing template
  for the Tiny Massive festival (https://tinymassive.io/)
  Author: Régis Frias
  2018
*/

/*
IMPORTANT:
The following 2 lines just make the project
appear normal on computer screens.
Use '1' instead for final output; */
int screenScaleX = 10;
int screenScaleY = 30;

void settings(){
  size(77 * screenScaleX, 13 * screenScaleY);
}

void setup(){
  background(0);
}

void draw(){
  scale(screenScaleX, screenScaleY);
  
  // Display reference
  noStroke();
  fill(0,0,100);
  rect(0, 0, 39, 9);
  
  fill(100,0,0);
  rect(39, 0, 38, 13);
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
  }
}
