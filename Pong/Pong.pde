import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

//entity variables
float leftx, lefty, leftd, rightx, righty, rightd; // paddles
float ballx, bally,balld, x, y, vy2; //ball
float vx, vy;
float d, d2;
boolean AI;

//scoring
int leftscore, rightscore, timer;

//keyboard variables
boolean wkey, skey, upkey, downkey;
//sound variables
Minim minim;
AudioPlayer theme, coin, bump, gameover; 

PFont organicRelief;

//float x;
//float y;

void setup() {
  textAlign(CENTER, CENTER);
  size (800, 600);
  mode = INTRO ; 
  
  //initialize paddles
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  leftscore = 0;
  
  rightx = width;
  righty = height/2;
  rightd = 200;
  rightscore = 0;
  
  //initialize ball
   ballx = width/2;
   bally = height/2;
   balld = 100;
   
   vx = random(-5, 5);
   vy = random(-5, 5);
 
   //initialize keyboard vars
   wkey = skey = upkey = downkey = false;
   
    
  minim = new Minim(this);
  theme = minim.loadFile("mario bros theme.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");
  
  organicRelief = createFont ("Organic Relief.ttf", 100);
  
  x = 50;
  y = 50;
  vy2 =(random( 2, 6));
}

void draw () {
  if (mode == INTRO) { 
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  }else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error: " + mode);
  }
} 
