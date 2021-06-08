int num =500;

int maxdistx = 5;
int mindistx = -5;
int vardistx = 0;

int maxdisty = 5;
int mindisty = -5;
int vardisty = 0;

int maxspeed = 10;
int minspeed = 5;
int varspeed = 0;

float[] ax = new float[num];
float[] ay = new float[num]; 

float[] bx = new float[num];
float[] by = new float[num]; 

float[] sa = new float[num];

float[] ta = new float[num];

void setup(){
  size(600,600);
  background(0);
  for(int i=0;i<num;i++){
    //ax[i]=(float)Math.floor(Math.random()*200)+200;
    //ay[i]=(float)Math.floor(Math.random()*250)+300;
    ax[i]=(float)Math.floor(Math.random()*600);
    ay[i]=(float)Math.floor(Math.random()*600);
  }
  
  for(int i=0;i<num;i++){
      bx[i]=(float)(Math.random()*6)-3;
      by[i]=(float)(Math.random()*6)-3;
  }
  
  for(int i=0;i<num;i++){ 
      sa[i]=(float)Math.floor(Math.random()*20)+5;
  }
  
  for(int i=0;i<num;i++){
      ta[i]=0;
  }
  
}

float x=0;
float y=0;
float t=0;

float ans;


void draw() {
  clear();
  stroke(255);
  
  fill(0,0);
  //x=300+10*sin(radians(t+(float)((Math.random()*20)-10)));
  //y=350+3*cos(radians(t+(float)((Math.random()*20)-10)));
  x=300+10*sin(radians(t));
  y=350+3*cos(radians(t));
  strokeWeight(1.5);
  stroke(100);
  line(300,0,x,y);
  fill(255);
  stroke(255);
  rect(x-3,y,6,10);
  fill(0,0);
  arc(x, y+22, 20, 25, 0-PI/2.5, PI+PI/2.5);
  line(x-2, y+10, x-2, y+25);
  line(x+2, y+10, x+2, y+25);
  line(x-2, y+25, x+2, y+25);
  //point(x,y);
  t+=2;
  
  for(int i=0;i<num;i++){
    ans = (ay[i]-y)*(ay[i]-y)+(ax[i]-x)*(ax[i]-x);
    stroke(255*(100*100/ans));
    point(ax[i]+(bx[i]*sin(radians(ta[i]))),ay[i]+(by[i]*sin(radians(ta[i]))));
    ta[i]= ta[i]+sa[i];
    if (ta[i] >= 90){
      
      ax[i]=ax[i]+bx[i];
      ay[i]=ay[i]+by[i];
      
      bx[i]=(float)(Math.random()*(maxdistx-mindistx+vardistx))+mindistx;
      by[i]=(float)(Math.random()*(maxdisty-mindisty+vardisty))+mindisty;
      
      sa[i]=(float)Math.floor(Math.random()*(maxspeed-minspeed+varspeed))+minspeed;
      
      ta[i]=0;
    }
  }
}
