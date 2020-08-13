class Pared {
 float x,y,rx,ry,ang = 0;
  
  Pared(float posx, float posy, float angulo){
    
    x = posx;
    y = posy;
    rx = 20;
    ry = 100;
    ang = angulo;
    
  }
  
  void display(){
    pushMatrix();
    translate(x,y);
    rotate(ang);
    rect(0,0,rx,ry);
    popMatrix();
  }
}
