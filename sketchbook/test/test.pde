//最初に一度だけ実行されます
void setup(){
    size(600, 400);
    background(255);
}


float x = 300;
float y = 200;
int r = 180;
 
void draw(){
  //一度背景と同じ色の四角を画面いっぱいに描写
  fill(255);
  noStroke();
  rect(0,0,600,400);
  
  //円を描写
  noFill();
  stroke(0,0,255);
  ellipse(x,y,r,r);
  x = x + 1;
}