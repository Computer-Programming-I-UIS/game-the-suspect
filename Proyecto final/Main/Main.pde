import ddf.minim.*;
import processing.sound.*;

boolean a,w,s,d,f,q,tra,playing1,pu1,antf,enter,game, antgame,controls,credits,intropuert = false;
boolean dif, playing3 = false;
boolean start = true;
boolean t,y,u,r,o,g,h,j,k,l,z,b,n,m=false;
float trax,tray,travx,travy,credy1,credy2,tim,introtime,introvol,credvol = 0;
float tras1, tras2, tras3, lmin = 0;
int ny,nx,anim = 0;
Personaje p;
Puerta[] puerta = new Puerta[1];
Pared[] pa = new Pared[10];
Puzzle pu;
int[] pisoY = new int[30];
PImage [] titulo = new PImage[3];
PImage fondo;
PImage edad;

Minim minim;
AudioPlayer opendoor;
AudioPlayer closedoor;
AudioPlayer pasos;
AudioPlayer cred;
//AudioPlayer ingame;

SoundFile intro;
SoundFile mgame;



void setup(){
  size(1240,720);
  frameRate(30);
  
  fondo=loadImage("fondo.png");
  edad = loadImage("+10 juegos.png");
  edad.resize(80,80);
  minim = new Minim(this);
  opendoor = minim.loadFile("Puerta.mp3");
  closedoor = minim.loadFile("Puerta.mp3");
  pasos = minim.loadFile("Pasos.mp3");
  cred = minim.loadFile("Sad.mp3");
  //ingame = minim.loadFile("Mgame.mp3");
  
  intro = new SoundFile(this, "Mistery.wav");
  mgame = new SoundFile(this, "Mgame.mp3");
  
  mgame.amp(0.6);
  
  pasos.loop();
  pasos.pause();
  
  opendoor.loop();
  opendoor.pause();
  
  ny = 0;
  nx = -2;
  credy1 = 800;
  credy2 = 100;
  tras1 = 255;
  tras2 = 0;
  tras3 = 255;
  for(int i = 0; i < pisoY.length; i++){
    pisoY[i] = (i*20) + 40; 
  }
  travx = 8;
  travy = map(travx,0,width,0,height);
  
  pu = new Puzzle(550,100);
  p = new Personaje();
  for(int i = 0; i < pa.length; i++){
    pa[i] = new Pared(0,0,0,0);
  }
  puerta[0] = new Puerta (1180,270,PI/2); 
  intro.play();
  //mgame.play();
  
  //pasos.setVolume(0.5);
}



void draw(){
  
  background(40);
  
  if(start){
    //pasos.pause();
    inicio();
    cred.pause();
    //intro.play();
    
  }
  else if(dif){
    dificultad();
  }
  
  else if(game){
    if(frameCount%480 == 0){
      pasos.loop();
    }
    intro.stop();
    pasos.setGain(-20);
    
    piso();
    p.update();
    colision();
    
    niveles();
    for(int i = 0; i < pa.length; i++){
      strokeWeight(1);
      pa[i].display();
    }
    
    p.display();
    kill(pu.min >= lmin );
    if(nx == 1 && ny == 0){
      kill(pu.kill3);
    }
  }
  
  else if(controls){
   controles(); 
  }
  
  else if(credits){
    //intro.stop();
    cred.play();
   creditos(); 
  }
  
  
}
