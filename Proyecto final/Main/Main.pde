import ddf.minim.*;
import processing.sound.*;

boolean a,w,s,d,f,q,tra,playing1,pu1,antf,enter,game,controls,credits = false;
boolean start = true;
boolean t,y,u,r,o,g,h,j,k,l,z=false;
float trax,tray,travx,travy,credy1,credy2,tim,introtime,introvol = 0;
int ny,nx,anim = 0;
Personaje p;
Puerta[] puerta = new Puerta[1];
Pared[] pa = new Pared[10];
Puzzle pu;
int[] pisoY = new int[30];
PImage [] titulo = new PImage[3];
PImage fondo;

Minim minim;
AudioPlayer opendoor;
AudioPlayer closedoor;
AudioPlayer pasos;
//AudioPlayer ingame;

SoundFile intro;
SoundFile mgame;

void setup(){
  size(1240,720);
  
  fondo=loadImage("fondo.png");
  minim = new Minim(this);
  opendoor = minim.loadFile("Puerta.mp3");
  closedoor = minim.loadFile("Puerta.mp3");
  pasos = minim.loadFile("Pasos.mp3");
  //ingame = minim.loadFile("Mgame.mp3");
  
  intro = new SoundFile(this, "Mistery.wav");
  mgame = new SoundFile(this, "Mgame.mp3");
  
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
  intro.play();
  //mgame.play();
}

void draw(){
  
  background(40);
  if(start){
    inicio();
    //intro.play();
    
  }
  else if(game){
    intro.stop();
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
