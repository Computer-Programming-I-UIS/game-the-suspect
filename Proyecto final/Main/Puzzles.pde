class Puzzle{
  float lp1,diamp1,xp1,yp1 = 0;
  float cuadp1 = 0;
  int i = 0;
  PVector[] fichas = new PVector[9];  
  
 Puzzle(){
   lp1 = 30;
   diamp1 = 100;
   xp1 = 500;
   yp1 = 250;
   cuadp1 = 100;
   i = 0;
   
    for(int yf = 0; yf < 3; yf++){
      for(int xf = 0; xf < 3; xf++){
        fichas[i] = new PVector(210+(cuadp1*xf),210 +(cuadp1*yf));
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
   
   for(int i = 0; i < fichas.length;i++){
     fill(255,0,0);
     strokeWeight(1);
     rect(fichas[i].x,fichas[i].y,cuadp1,cuadp1);
   }
 }
}
