class Pared {
 float x,y,rx,ry = 0;
  
  Pared(float posx, float posy, float lonx, float lony){
    
    x = posx;
    y = posy;
    rx = lonx;
    ry = lony;
    
  }
  
  void display(){
    
    fill(0);
    rect(100,50,140,35);
    fill(255);
    textSize(14);
    text("frase:",110,70);
    fill(102,51,0);
    strokeWeight(1);
    rect(x,y,rx,ry);
    
      
  }
}
