int num = 100;

float[] ax = new float[num];
float[] ay = new float[num]; 

float[] bx = new float[num];
float[] by = new float[num]; 

void setup(){
  size(600,600);
  background(0);
  for(int i=0;i<num;i++){
    ax[i]=(float)Math.floor(Math.random()*200)+200;
    ay[i]=(float)Math.floor(Math.random()*250)+300;
  }
  
  for(int i=0;i<num;i++){
      bx[i]=(float)(Math.random()*6)-3;
      by[i]=(float)(Math.random()*6)-3;
    }
    
}

//float speed = 0;
float t = 0;

void draw() {
  clear();
  stroke(255);
  if (t >= 90){
    for(int i=0;i<num;i++){
    ax[i]=ax[i]+bx[i];
    ay[i]=ay[i]+by[i];
  }
  
    for(int i=0;i<num;i++){
      bx[i]=(float)(Math.random()*6)-3;
      by[i]=(float)(Math.random()*6)-3;
    }
    t=0;
  }
  //speed =(float)Math.floor(Math.random()*2)+0.01;
  for(int i=0;i<num;i++){
    point(ax[i]+(bx[i]*sin(radians(t))),ay[i]+(by[i]*sin(radians(t))));
  }
  t+=20;
}
