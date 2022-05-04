void intro() {
 
  theme.play();
  background(0);
  fill(255,0,0);
  
  //fill(255);
  //circle(x, y, balld);
  // x = x + 5;
  // y = y + 4;
  
  //if (x> 850){
  //  x = 0;
  //  y=0;}
    noStroke();
   x = x + 2;
  y = y + vy2;
  
   fill(255);
  circle(x, y, balld);

  if (y < balld/2 || y > height-balld/2){
    vy2 = vy2 * -1;}
  
  if(x>850) {
    x = 50;
    y = 50;
  }
   
   fill(255, 0, 0);
   textSize(100);
   textFont(organicRelief);
  text("P", 240, 200);
    fill(0,0,255);
  text("O", 350, 200);
    fill(255,0,0);
  text("N", 460, 200);
  fill(0, 0, 255);
   text("G", 575, 200);
 

  rectMode(CENTER);  
  
  //1 player button
  fill(255);
  tactile(150, 400, 200, 100);
  strokeWeight(3);
  rect(250, 450, 200, 100);
  textSize(15);
  fill (255, 0, 0);
  text("1 PLAYER", 250, 450);
  textSize(50);

  //2 player button
  tactile(450, 400, 200, 100);
  fill(255);
  rect(550, 450, 200, 100);
  textSize(15);
  fill (0, 0, 255);
  text("2 PLAYER", 550, 450);
} 

void introClicks() {
  if (mouseX > 200 && mouseX < 400 && mouseY > 400 && mouseY <500 ) {
    mode = GAME;
    rightscore = 0;
    leftscore = 0;
    AI = true;
  }

  if (mouseX > 400 && mouseX < 600 && mouseY > 400 && mouseY < 500) {
mode = GAME;
    rightscore = 0;
    leftscore = 0;
    AI = false;
  }
}
