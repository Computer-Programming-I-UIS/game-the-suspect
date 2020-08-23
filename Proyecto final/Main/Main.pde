boolean a,w,s,d,f,tra,playing1,pu1,antf = false;
float trax,tray,travx,travy = 0;
int ny = 0;
int nx = -1;
Personaje p;
Puerta puerta;
Pared[] pa = new Pared[10];
Puzzle pu;
int[] pisoY = new int[30];

void setup(){
  size(1240,720);
  
  for(int i = 0; i < pisoY.length; i++){
    pisoY[i] = (i*20) + 40; 
  }
  travx = 8;
  travy = map(travx,0,width,0,height);
  
  pu = new Puzzle(480,150);
  p = new Personaje();
  for(int i = 0; i < pa.length; i++){
    pa[i] = new Pared(40*i,20,20,100);
  }
  puerta = new Puerta(400,400,0);
}

void draw(){
  background(40);
  /*piso();
  p.update();
  colision();
  
  niveles();
  for(int i = 0; i < pa.length; i++){
    pa[i].display();
  }
  p.display();*/
  
  puerta.display();
  puerta.mov(a);
  
}
