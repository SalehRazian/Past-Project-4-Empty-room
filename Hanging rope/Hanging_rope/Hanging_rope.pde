void setup(){
  size(600,600);
}

float x=0;
float y=0;
float t=0;

void draw(){
  clear();
  stroke(255);
  fill(0,0);
  x=300+10*sin(radians(t));
  y=350+3*cos(radians(t));
  strokeWeight(1.5);
  line(300,0,x,y);
  fill(255);
  rect(x-3,y,6,10);
  fill(0,0);
  arc(x, y+22, 20, 25, 0-PI/2.5, PI+PI/2.5);
  line(x-2, y+10, x-2, y+25);
  line(x+2, y+10, x+2, y+25);
  line(x-2, y+25, x+2, y+25);
  //point(x,y);
  t+=2;
}
