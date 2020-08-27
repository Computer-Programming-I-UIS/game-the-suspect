class Puzzle{
  float lp1,diamp1,xp1,yp1 = 0;
  float cuadp1, xlim, vlim, posx, posy,time = 0;
  int i, c,seg, min = 0;
  boolean com,com2 = false;
  PVector[] fichas = new PVector[8];  
  PVector spdx = new PVector(5,0);
  PImage[] monalisa = new PImage[8]; 
  PImage cuadro;
  int mate=0;
  PImage operacion;
  int desorden=0;
  
 Puzzle(float posxx, float posyy){
   lp1 = 30;
   diamp1 = 80;
   xp1 = 500;
   yp1 = 250;
   cuadp1 = 80;
   i = 0;
   vlim = 0.8;
   posx = posxx;
   posy = posyy;
   cuadro=loadImage("monalisa.png"); 
   cuadro.resize(100,100);
   operacion=loadImage("operacion.png");
   
   for(int i = 0; i < monalisa.length; i++){
    monalisa[i] = loadImage("monalisa" + i + ".png"); 
    monalisa[i].resize(int(cuadp1-2),int(cuadp1-2));
   }
   //ned[2].resize(102,100);
   
    for(int yf = 0; yf < 3; yf++){
      if (yf == 2){
       xlim = 2; 
      }
      else {
       xlim = 3; 
      }
      for(int xf = 0; xf < xlim; xf++){
        if(!(i == 9)){
        fichas[i] = new PVector(posx+10+(cuadp1*xf),posy+10+(cuadp1*yf));
        }
        i++;
      } 
   }
 }
 
 
 void p1(){
   
   fill(0);
   rect(posx,posy,(cuadp1*3)+20,(cuadp1*3)+20);
   fill(150);
   rect(posx+10,posy+10,cuadp1*3,cuadp1*3);
   rect(974,70,150,120,100);
   image(cuadro,1000,80);
   
   
   p1move(posx+10, posy+10);
   
   if(frameCount%60 == 0){
    seg += 1; 
   }
   if(seg >= 60){
    seg = 0;
    min += 1;
   }
   
   fill(255);
   rect(50,560,80,50);
   textSize(30);
   fill(0);
   text(min + ":" + seg,60,600);
   
   if(desorden==0){
   image(monalisa[0],fichas[0].x,fichas[0].y);
   image(monalisa[1],fichas[4].x,fichas[4].y);
   image(monalisa[2],fichas[3].x,fichas[3].y);
   image(monalisa[3],fichas[6].x,fichas[6].y);
   image(monalisa[4],fichas[2].x,fichas[2].y);
   image(monalisa[5],fichas[5].x,fichas[5].y);
   image(monalisa[6],fichas[1].x,fichas[1].y);
   image(monalisa[7],fichas[7].x,fichas[7].y);}
   
   check();
   
 /* if(desorden==1){
   for( int i=0; i<8; i++){
     image(monalisa[i],fichas[i].x,fichas[i].y);}
   com=false;}*/
     
   
 }
 
 
 void p1move(float posx, float posy){
   
   for(int i = 0; i < fichas.length; i++){
     if(mousePressed && mouseX <= fichas[i].x + cuadp1 && mouseX >= fichas[i].x && mouseY <= fichas[i].y + cuadp1 && mouseY >= fichas[i].y){
       c = i;
     }
     if(playing1){
     if(a){
        spdx.set(fichas[c].x-cuadp1,fichas[c].y);
       spdx.sub(fichas[c]);
       spdx.limit(vlim);
       fichas[c].add(spdx);
       
      }
      if(d){
       spdx.set(fichas[c].x + cuadp1, fichas[c].y);
       spdx.sub(fichas[c]);
       spdx.limit(vlim);
       fichas[c].add(spdx);
      }
      
      if(s){
        spdx.set(fichas[c].x,fichas[c].y+cuadp1);
       spdx.sub(fichas[c]);
       spdx.limit(vlim);
       fichas[c].add(spdx);
       
      }
      if(w){
       spdx.set(fichas[c].x, fichas[c].y - cuadp1);
       spdx.sub(fichas[c]);
       spdx.limit(vlim);
       fichas[c].add(spdx);
      }
     }
      
      col(posx, posy);
   }
 }
 
 void col(float posx, float posy){
   
   if(fichas[c].x < posx ){
    fichas[c].set(posx,fichas[c].y); 
   }
   
   if(fichas[c].x + cuadp1 > posx +(3*cuadp1)){
    fichas[c].set(posx +(2*cuadp1),fichas[c].y); 
   }
   
   if(fichas[c].y < posy){
    fichas[c].set(fichas[c].x, posy); 
   }
   
   if(fichas[c].y + cuadp1 > posy + (3*cuadp1)){
    fichas[c].set(fichas[c].x,posy+(2*cuadp1)); 
   }
   
     for(int a = 0; a < fichas.length; a++){
      if(a == c){
       continue; 
      }
      if(fichas[c].x < fichas[a].x+cuadp1 && fichas[c].x+cuadp1 > fichas[a].x && fichas[c].y < fichas[a].y+cuadp1 && fichas[c].y+cuadp1 > fichas[a].y){
        
        if(fichas[c].x + 5 > fichas[a].x+cuadp1){
         fichas[c].set(fichas[a].x + cuadp1, fichas[c].y);
        }
        
        if(fichas[c].x + cuadp1 - 5 < fichas[a].x){
         fichas[c].set(fichas[a].x-cuadp1,fichas[c].y); 
        }
        
        if(fichas[c].y+cuadp1-5 < fichas[a].y ){
         fichas[c].set(fichas[c].x,fichas[a].y-cuadp1);
        }
        
        if(fichas[c].y + 5 > fichas[a].y + cuadp1){
         fichas[c].set(fichas[c].x,fichas[a].y+cuadp1); 
        }
      }
     }
   }
   
   void check(){
       if( 
         fichas[0].x==posx+10           && fichas[0].y==posy+10 && 
         fichas[4].x==posx+10+cuadp1     && fichas[4].y==posy+10 && 
         fichas[3].x==posx+10            && fichas[3].y==posy+10+cuadp1 && 
         fichas[6].x==posx+10+cuadp1     && fichas[6].y==posy+10+cuadp1 && 
         fichas[2].x==posx+10+(2*cuadp1) && fichas[2].y==posy+10+cuadp1 && 
         fichas[5].x==posx+10            && fichas[5].y==posy+10+(2*cuadp1) && 
         fichas[1].x==posx+10+cuadp1     && fichas[1].y==posy+10+(2*cuadp1) && 
         fichas[7].x==posx+10+(2*cuadp1) && fichas[7].y==posy+10+(2*cuadp1)
         ){
          
       mate=0;
       fill(200);  
       textSize(14);
       text("1frase",110,100);
           
          com = true;
        }
        else{
         com = false; 
        }
   }
   
   
    void p2()
   {
       
           
     if (playing1){
      
       fill(200);  
       textSize(14);
       text("1frase",110,100);  
       
       
       
       for( int i=6; i<11; i++){
         rect(i*70,150,55,55);
         }
         
       for( int i=6; i<11; i++){
       rect(i*70,500,55,55);
        }
         
         
         textSize(20);
        if(t){ 
         fill(0);
         text("5",443,180);
         
         }
         else{
         fill(200,0,0);
         text("t",443,180);}
         
        if(y){ 
         fill(0);
          text("1",513,180);
         }
         else{
         fill(200,0,0);
          text("y",513,180);}
         
        if(u){ 
         fill(0);
          text("6",583,180);
         }
         else{
         fill(200,0,0);
          text("u",583,180);}
         
        if(r){ 
         fill(0);;
          text("3",653,180);
         }
         else{
         fill(200,0,0);
         text("r",653,180);}
         
        if(o){ 
         fill(0);
         text("4",723,180);
         }
         else{
         fill(200,0,0);
         text("o",723,180);}
         
          if(g){ 
         fill(0);
         text("2",443,530);
         }
         else{
         fill(200,0,0);
         text("g",443,530);}
         
          if(h){ 
         fill(0);
         text("7",513,530);
         }
         else{
         fill(200,0,0);
          text("h",513,530);}
         
          if(j){ 
         fill(0);
         text("9",583,530);
         }
         else{
         fill(200,0,0);
         text("j",583,530);}
         
         if(k){ 
         fill(0);
         text("8",653,530);
         }
         else{
         fill(200,0,0);
         text("k",653,530);}
         
         if(l){ 
         fill(0);
         text("0",723,530);
         }
         else{
         fill(200,0,0);
         text("l",723,530);}
        
        
        
        fill(0); 
        rect(420,235,350,240);      
        
        fill(255);       
        if(mate==0){
        image(operacion,470,235);
        text("q) 30",460,340);
        text("b) 27/2",460,380);
        text("c) 40/9",460,420);
        text("e) 12/5",560,340);
        text("z) 22",560,380);
        text("x) 51/2",560,420);
        text("n) 29/2",660,340);
        text("v) 18/3",660,380);
        text("m) 33/2",660,420);
        textSize(12);
        text("tienes una oportuniadad",520,460);
      
      }
         
        
       if(key == 'n'){
        mate=1;
        textSize(40);
        text("¡Bien hecho!",490,360);
        fill(200);
        textSize(14);
        text("2frase",110,120); 
        }
        
  
        if(key == 'q'||key == 'b'||key == 'c'||key == 'e'||key == 'z'||key == 'x'||key == 'v'||key == 'm' ){
        mate=2;  
        textSize(40);
        text("game over",490,360);
        playing1=false;
        p.vx=5;
        p.vy=5;
        desorden=0;
        
       
        }
        
       
   }  
   
   if(mate==1){com2=true;}
   
   if(mate==2){ny=0;  nx=-1;
 com=false;}
   
       
    
   
   
          
       if(frameCount%60 == 0){
        seg += 1; 
       }
       if(seg >= 60){
        seg = 0;
        min += 1;
       }
       
       fill(255);
       rect(50,560,80,50);
       textSize(30);
       fill(0);
       text(min + ":" + seg,60,600);    
         
        /*
         text("T",443,180);
         text("y",513,180);
         text("u",583,180);
         text("i",653,180);
         text("o",723,180);
         
         text("g",443,530);
         text("h",513,530);
         text("j",583,530);
         text("k",653,530);
         text("l",723,530);*/
       
}
  
    
  void p3(){
    fill(200);  
    textSize(14);
    text("1frase",110,100);
    text("2frase",110,120);
    
  }
   
}
