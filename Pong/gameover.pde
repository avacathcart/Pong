void gameover(){
  background(0);
  if (leftscore > rightscore) {
    fill (255,0 , 0);
    textSize(45);
  text("LEFT PADDLE WINS!", width/2, 400); 
     fill(227, 200, 131);
   rect(width/2, 200, 35, 250);
   fill (255,0 , 0);
  circle(width/2, 150, 200);
 
  } else {
    fill(0, 0, 255);
     textSize(45);
  text("RIGHT PADDLE WINS!", width/2, 400);
  fill(227, 200, 131);
   rect(width/2, 200, 35, 250);
   fill (0,0 , 255);
  circle(width/2, 150, 200);
  }
    theme.pause();
}

void gameoverClicks(){
  mode = INTRO;
  rightscore = 0;
  leftscore = 0;
    theme.rewind();
    lefty = height/2;
    righty = height/2;
    x = 50;
    y = 50;
    //ping pong ball animation
   
}  
