class Pared {
 float x,y,rx,ry = 0;
  
  Pared(float posx, float posy, float lonx, float lony){
    
    x = posx;
    y = posy;
    rx = lonx;
    ry = lony;
    
  }
  
  void display(){
    fill(102,51,0);
    rect(x,y,rx,ry);
  }
}
