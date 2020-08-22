class Puzzle{
  float lp1,diamp1,xp1,yp1 = 0;
  float cuadp1, xlim, vlim, posx, posy = 0;
  int i, c = 0;
  PVector[] fichas = new PVector[8];  
  PVector spdx = new PVector(5,0);
  PImage[] monalisa = new PImage[8]; 
  PImage cuadro;
  
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
 
 void puzzle1(){
   
   cuadro(xp1-diamp1-20, yp1-diamp1,600,400);
   for(int i = 0; i<3; i++){
    pushMatrix();
    translate(xp1 + i*(20 + diamp1), yp1);
    rotate(i*(PI/2));
    fill(255);
    ellipse(0,0,diamp1,diamp1);
    simbolo1(0,0);
    popMatrix();
     
   }
 }
 
 void simbolo1(float x, float y){
   strokeWeight(5);
   stroke(0);
  line(x,y,x,y-lp1);
  line(x,y,x+lp1,y);
 }
 
 void cuadro(float x, float y, float lonx, float lony){
   noStroke();
   fill(255);
  rect(x,y,lonx,lony);
  fill(0);
  rect(x+20,y+20,lonx-40,lony-40);
 }
 
 
 void p1(){
   
   fill(0);
   rect(posx,posy,(cuadp1*3)+20,(cuadp1*3)+20);
   fill(150);
   rect(posx+10,posy+10,cuadp1*3,cuadp1*3);
   rect(974,70,150,120,100);
   image(cuadro,1000,80);
   
   p1move(posx+10, posy+10);
   
  /* image(monalisa[0],fichas[0].x,fichas[0].y);
   image(monalisa[1],fichas[1].x,fichas[1].y);
   image(monalisa[2],fichas[3].x-2,fichas[3].y);
   image(monalisa[3],fichas[4].x,fichas[4].y);
   image(monalisa[4],fichas[2].x,fichas[2].y);
   image(monalisa[5],fichas[6].x,fichas[6].y);
   image(monalisa[6],fichas[7].x,fichas[7].y);
   image(monalisa[7],fichas[5].x,fichas[5].y);*/
   
   for( int i=0; i<8; i++){
     image(monalisa[i],fichas[i].x,fichas[i].y);}
     
   
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
}
