class Puzzle{
  float lp1,diamp1,xp1,yp1 = 0;
 Puzzle(){
   lp1 = 30;
   diamp1 = 100;
   xp1 = 100;
   yp1 = 100;
   
 }
 
 void puzzle1(){
   ellipse(xp1,yp1,diamp1,diamp1);
   simbolo1(yp1,xp1);
   ellipse(xp1+200,yp1,diamp1,diamp1);
   simbolo2(xp1+200,yp1);
   ellipse(xp1+400,yp1,diamp1,diamp1);
   simbolo3(xp1+400,yp1);
   
 }
 
 void simbolo1(float x, float y){
  line(x,y,x,y-lp1);
  line(x,y,x+lp1,y);
 }
 
 void simbolo2(float x,float y){
   line(x,y,x+lp1,y);
   line(x,y,x,y+lp1);
 }
 
 void simbolo3(float x, float y){
  line(x,y,x,y+lp1);
  line(x,y,x-lp1,y);
  
   
 }
}
