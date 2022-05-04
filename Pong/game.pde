//Make ball limit

void game() {
    theme.play ();
  
 background (0);
  fill(255);
  stroke(0);
  //draw paddles
    fill(255, 0, 0);
  circle(leftx, lefty, leftd);
    fill(0, 0, 255);
  circle(rightx, righty, rightd);

  //move paddles
  if (wkey == true && lefty>100) lefty = lefty - 5;
  if (skey == true && lefty <500) lefty = lefty + 5;
  
  if (AI == false) {
  if (upkey == true && righty>100) righty = righty - 5;
  if (downkey == true && righty < 500) righty = righty + 5;
  }else {
/*  
if ball is on right side {
if ball is above the right paddlr, move up
if ball is below the right paddle, move down
}
*/
if (ballx>400) {
  if (bally<righty)  righty = righty - 5;
  if (bally>righty) righty = righty + 5;
}
  }

  //ball
  fill(255);
  circle(ballx, bally, balld);

  //move ball
  if (timer < 0) {
  ballx = ballx + vx;
  bally = bally + vy;
  }
  //dist(rightx, righty, ballx, ball y);
//scoring
if(ballx < 0) {
  rightscore++;
  ballx = width/2;
  bally = height/2;
  timer = 100;
  coin.rewind();
  coin.play();
}

if (ballx > 800) {
  leftscore++;
  ballx = width/2;
  bally = height/2;
  timer = 100;
  coin.rewind();
  coin.play();
}

  d = dist(rightx, righty, ballx, bally);
  //bounce
  if (d <= balld/2 + rightd/2) {
       vx = (ballx - rightx)/15;
    vy = (bally - righty)/15;
     bump.rewind();
    bump.play(); 
  }
d2 = dist(leftx, lefty, ballx, bally);
  if (d2 <= balld/2 + leftd/2) {
       vx = (ballx - leftx)/15;
    vy = (bally - lefty)/15;
     bump.rewind();
    bump.play();
  }
  
  if (bally < balld/2 || bally > height-balld/2){
    vy = vy * -1;
  }
   
  //scoreboard
  textSize (50);
  fill(255, 0, 0);
  text(leftscore, width/4, 100);
  fill(0, 0, 255);
  text(rightscore, 3*width/4, 100);
  //text(timer, 3*width/4, 550);
  timer = timer -1;
  
  if (rightscore == 3 || leftscore == 3) {
  mode = GAMEOVER;
   gameover.rewind();
      gameover.play();
    }
 }

void gameClicks() {
  mode = PAUSE;
}
