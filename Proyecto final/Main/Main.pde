boolean a,w,s,d,f,q,tra,playing1,pu1,antf,enter,game,controls,credits = false;
boolean start = true;
boolean t,y,u,r,o,g,h,j,k,l=false;
float trax,tray,travx,travy,credy1,credy2,tim = 0;
int ny,nx,anim = 0;
Personaje p;
Puerta[] puerta = new Puerta[1];
Pared[] pa = new Pared[10];
Puzzle pu;
int[] pisoY = new int[30];
PImage [] titulo = new PImage[3];
PImage fondo;

void setup(){
  size(1240,720);
  fondo=loadImage("fondo.png");
  ny = 0;
  nx = -1;
  credy1 = 800;
  for(int i = 0; i < pisoY.length; i++){
    pisoY[i] = (i*20) + 40; 
  }
  travx = 8;
  travy = map(travx,0,width,0,height);
  
  pu = new Puzzle(480,100);
  p = new Personaje();
  for(int i = 0; i < pa.length; i++){
    pa[i] = new Pared(40*i,20,20,100);
  }
  puerta[0] = new Puerta (1180,270,PI/2);
}

void draw(){
  
  background(40);
  if(start){
    inicio();
  }
  else if(game){
    piso();
    p.update();
    colision();
    
    niveles();
    for(int i = 0; i < pa.length; i++){
      strokeWeight(1);
      pa[i].display();
    }
    
    p.display();
    kill(pu.min >= 2);
  }
  
  else if(controls){
   controles(); 
  }
  
  else if(credits){
   creditos(); 
  }
  
  
  
}
