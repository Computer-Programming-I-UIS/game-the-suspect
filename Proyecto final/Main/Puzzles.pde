class Puzzle{
  float lp1,diamp1,xp1,yp1 = 0;
  float cuadp1, xlim, vlim = 0;
  int i, c = 0;
  PVector[] fichas = new PVector[8];  
  PVector spdx = new PVector(5,0);
  
 Puzzle(){
   lp1 = 30;
   diamp1 = 100;
   xp1 = 500;
   yp1 = 250;
   cuadp1 = 100;
   i = 0;
   vlim = 0.8;
   
    for(int yf = 0; yf < 3; yf++){
      if (yf == 2){
       xlim = 2; 
      }
      else {
       xlim = 3; 
      }
      for(int xf = 0; xf < xlim; xf++){
        if(!(i == 9)){
        fichas[i] = new PVector(210+(cuadp1*xf),210 +(cuadp1*yf));
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
 
 void p1(float posx,float posy){
   
   fill(0);
   rect(posx,posy,(cuadp1*3)+20,(cuadp1*3)+20);
   fill(255);
   rect(posx+10,posy+10,cuadp1*3,cuadp1*3);
   
   p1move();
   //col();
   
   for(int i = 0; i < fichas.length;i++){
     fill(255,0,0);
     strokeWeight(1);
     rect(fichas[i].x,fichas[i].y,cuadp1,cuadp1);
   }
   
   
 }
 
 
 void p1move(){
   
   for(int i = 0; i < fichas.length; i++){
     if(mousePressed && mouseX <= fichas[i].x + cuadp1 && mouseX >= fichas[i].x && mouseY <= fichas[i].y + cuadp1 && mouseY >= fichas[i].y){
       c = i;
     }
     
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
      
      col();
   }
 }
 
 void col(){
   
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
