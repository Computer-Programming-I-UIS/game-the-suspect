class Puzzle{
  float lp1,diamp1,xp1,yp1 = 0;
 Puzzle(){
   lp1 = 30;
   diamp1 = 100;
   xp1 = 500;
   yp1 = 250;
   
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
}
